#!/usr/bin/env node
/**
 * ZETTEL-FORGE: RON Vault Creation Enforcer
 * Heavy fix implementation — validation gates at creation time
 * 
 * Usage: node zettel-forge.js create --title "Topic Name" --source L-001-0001 --domain 001
 */

const fs = require('fs');
const path = require('path');
const readline = require('readline');

const VAULT_PATH = '/home/simon/Workspaces/TheOptimizedBrain';
const REGISTRY_PATH = path.join(VAULT_PATH, '09-System/UID_REGISTRY.json');
const ZETTEL_PATH = path.join(VAULT_PATH, '03-Zettels/Conscious');
const LITNOTE_PATH = path.join(VAULT_PATH, '02-Literature');

// ═══════════════════════════════════════════════════════════════
// REGISTRY MANAGEMENT
// ═══════════════════════════════════════════════════════════════

function loadRegistry() {
    if (!fs.existsSync(REGISTRY_PATH)) {
        return initializeRegistry();
    }
    return JSON.parse(fs.readFileSync(REGISTRY_PATH, 'utf8'));
}

function initializeRegistry() {
    const registry = {
        version: "1.0.0",
        lastAssigned: "Z-001-0935",
        domains: {
            "001": { name: "Insulin-Metabolism", nextSequence: 936 },
            "101": { name: "Pharmacometabolomics", nextSequence: 1 },
            "002": { name: "Vitamin-D", nextSequence: 1 },
            "003": { name: "Iron-Metabolism", nextSequence: 1 },
            "004": { name: "B12-Folate", nextSequence: 20 },
            "005": { name: "Thyroid", nextSequence: 1 },
            "006": { name: "Lipids", nextSequence: 1 },
            "007": { name: "Inflammation", nextSequence: 1 },
            "008": { name: "Liver", nextSequence: 1 },
            "009": { name: "Kidney", nextSequence: 1 },
            "010": { name: "Electrolytes", nextSequence: 1 }
        },
        reserved: [],
        deprecated: [],
        auditLog: []
    };
    saveRegistry(registry);
    return registry;
}

function saveRegistry(registry) {
    fs.mkdirSync(path.dirname(REGISTRY_PATH), { recursive: true });
    fs.writeFileSync(REGISTRY_PATH, JSON.stringify(registry, null, 2));
}

function getNextUID(registry, domain) {
    const domainConfig = registry.domains[domain];
    if (!domainConfig) {
        throw new Error(`Domain ${domain} not registered. Add to domains table first.`);
    }
    const sequence = domainConfig.nextSequence.toString().padStart(4, '0');
    const uid = `Z-${domain}-${sequence}`;
    
    // Verify not already used (paranoid check)
    if (registry.reserved.includes(uid) || registry.deprecated.includes(uid)) {
        domainConfig.nextSequence++;
        return getNextUID(registry, domain); // Recurse to next
    }
    
    return { uid, sequence: domainConfig.nextSequence };
}

function assignUID(registry, domain, title) {
    const { uid, sequence } = getNextUID(registry, domain);
    registry.domains[domain].nextSequence = sequence + 1;
    registry.lastAssigned = uid;
    registry.reserved.push(uid);
    registry.auditLog.push({
        timestamp: new Date().toISOString(),
        action: 'assign',
        uid: uid,
        domain: domain,
        title: title
    });
    saveRegistry(registry);
    return uid;
}

// ═══════════════════════════════════════════════════════════════
// VALIDATION GATES
// ═══════════════════════════════════════════════════════════════

const Validators = {
    // Gate 1: UID format and uniqueness
    uid(uid, skipReservedCheck = false) {
        const pattern = /^Z-(\d{3})-(\d{4})$/;
        const match = uid.match(pattern);
        if (!match) {
            return { valid: false, error: `UID ${uid} must match pattern Z-{DDD}-{SSSS}` };
        }
        
        const domain = match[1];
        const sequence = parseInt(match[2]);
        
        // Check if UID already exists in filesystem
        const existingFiles = fs.readdirSync(ZETTEL_PATH)
            .filter(f => f.includes(`[${uid}]`));
        
        if (existingFiles.length > 0) {
            return { valid: false, error: `UID ${uid} already exists: ${existingFiles[0]}` };
        }
        
        // Check registry (skip if we just assigned this UID)
        if (!skipReservedCheck) {
            const registry = loadRegistry();
            if (registry.reserved.includes(uid) && !process.argv.includes('--force')) {
                return { valid: false, error: `UID ${uid} reserved in registry. Use --force to override.` };
            }
        }
        
        return { valid: true, domain, sequence };
    },

    // Gate 2: Filename pattern
    filename(filename, uid) {
        const expectedPattern = new RegExp(`^.*_\\[${uid}\\]\\.md$`);
        if (!expectedPattern.test(filename)) {
            return { 
                valid: false, 
                error: `Filename must match pattern: Topic_[${uid}].md` 
            };
        }
        
        // Check for legacy _Z- pattern
        if (filename.includes(`_${uid}.md`) && !filename.includes(`[${uid}]`)) {
            return { valid: false, error: `Legacy naming detected. Use bracket format: [${uid}]` };
        }
        
        return { valid: true };
    },

    // Gate 3: Source LitNote exists
    sourceLitnote(sourceLitnote) {
        if (!sourceLitnote) {
            return { valid: false, error: 'source-litnote is mandatory' };
        }
        
        // Extract UID from [[LitNote_Name_L-XXX-XXXX]] format
        const match = sourceLitnote.match(/L-\d{3}-\d{4}/);
        if (!match) {
            return { valid: false, error: `Invalid source-litnote format: ${sourceLitnote}` };
        }
        
        const litnoteUID = match[0];
        const litnoteFiles = fs.readdirSync(LITNOTE_PATH)
            .filter(f => f.includes(litnoteUID) && f.endsWith('.md'));
        
        if (litnoteFiles.length === 0) {
            return { valid: false, error: `Source LitNote ${litnoteUID} not found in 02-Literature/` };
        }
        
        return { valid: true, litnoteFile: litnoteFiles[0] };
    },

    // Gate 4: YAML schema
    yaml(yamlData) {
        const required = ['uid', 'type', 'title', 'domain', 'source-litnote', 'extraction-date'];
        const missing = required.filter(field => !yamlData[field]);
        
        if (missing.length > 0) {
            return { valid: false, error: `Missing YAML fields: ${missing.join(', ')}` };
        }
        
        if (yamlData.type !== 'zettel') {
            return { valid: false, error: `type must be 'zettel', got '${yamlData.type}'` };
        }
        
        if (!yamlData.status) {
            yamlData.status = 'conscious';
        }
        
        return { valid: true };
    }
};

// ═══════════════════════════════════════════════════════════════
// ZETTEL CREATION
// ═══════════════════════════════════════════════════════════════

function generateFilename(title, uid) {
    // Sanitize title for filename
    const sanitized = title
        .replace(/[^a-zA-Z0-9_\s-]/g, '')
        .replace(/\s+/g, '_')
        .substring(0, 50);
    return `${sanitized}_[${uid}].md`;
}

function generateYAML(data) {
    const today = new Date().toISOString().split('T')[0];
    return `---
uid: ${data.uid}
type: zettel
title: "${data.title}"
aliases: [${data.uid}]
domain: ${data.domain}
tags: [zettel, ${data.tags || 'conscious'}]
parent-moc: [[${data.parentMoc || 'MOC-PLACEHOLDER'}]]
source-litnote: [[${data.sourceLitnote}]]
status: conscious
extraction-date: ${today}
---

# ${data.title}

**Core concept:** [One-sentence summary here]

## Details

[Extracted content here]

## Links

- **Source:** [[${data.sourceLitnote}]]
- **Related:** [[Z-PLACEHOLDER]]

---

*UID: ${data.uid} | Created: ${today} via zettel-forge*
`;
}

function createZettel({ title, sourceLitnote, domain, tags, parentMoc }) {
    console.log('🔨 ZETTEL-FORGE: Creating new zettel...\n');
    
    // Load registry
    const registry = loadRegistry();
    
    // Step 1: Assign UID
    console.log(`📋 Domain: ${domain} (${registry.domains[domain]?.name || 'Unknown'})`);
    const uid = assignUID(registry, domain, title);
    console.log(`✅ Assigned UID: ${uid}`);
    
    // Step 2: Validate UID (skip reserved check since we just assigned it)
    const uidCheck = Validators.uid(uid, true); // true = skip reserved check
    if (!uidCheck.valid) {
        console.error(`❌ UID Validation Failed: ${uidCheck.error}`);
        process.exit(1);
    }
    
    // Step 3: Validate Source
    const sourceCheck = Validators.sourceLitnote(sourceLitnote);
    if (!sourceCheck.valid) {
        console.error(`❌ Source Validation Failed: ${sourceCheck.error}`);
        process.exit(1);
    }
    console.log(`✅ Source LitNote: ${sourceCheck.litnoteFile}`);
    
    // Step 4: Generate filename
    const filename = generateFilename(title, uid);
    const filepath = path.join(ZETTEL_PATH, filename);
    
    // Check if file exists
    if (fs.existsSync(filepath)) {
        console.error(`❌ File already exists: ${filepath}`);
        process.exit(1);
    }
    
    const filenameCheck = Validators.filename(filename, uid);
    if (!filenameCheck.valid) {
        console.error(`❌ Filename Validation Failed: ${filenameCheck.error}`);
        process.exit(1);
    }
    console.log(`✅ Filename: ${filename}`);
    
    // Step 5: Generate content
    const yamlData = {
        uid,
        title,
        domain,
        sourceLitnote,
        tags,
        parentMoc
    };
    
    const content = generateYAML(yamlData);
    
    // Step 6: Write file
    fs.writeFileSync(filepath, content);
    console.log(`✅ Created: ${filepath}`);
    
    // Step 7: Post-creation verification
    const verifyUID = fs.readdirSync(ZETTEL_PATH).filter(f => f.includes(uid));
    if (verifyUID.length > 1) {
        console.error(`⚠️  WARNING: Duplicate UID detected post-creation!`);
        console.error(`   Files: ${verifyUID.join(', ')}`);
    }
    
    console.log('\n🎉 Zettel creation successful!');
    console.log(`\nNext steps:`);
    console.log(`  1. Edit: ${filepath}`);
    console.log(`  2. Add to source LitNote: ${sourceCheck.litnoteFile}`);
    console.log(`  3. Git commit when complete`);
    
    return { uid, filename, filepath };
}

// ═══════════════════════════════════════════════════════════════
// COMMANDS
// ═══════════════════════════════════════════════════════════════

function showStatus() {
    const registry = loadRegistry();
    console.log('📊 ZETTEL-FORGE Registry Status\n');
    console.log(`Last Assigned: ${registry.lastAssigned}`);
    console.log(`Total Reserved: ${registry.reserved.length}`);
    console.log(`Total Deprecated: ${registry.deprecated.length}`);
    console.log('\nDomain Status:');
    Object.entries(registry.domains).forEach(([code, config]) => {
        const nextUID = `Z-${code}-${config.nextSequence.toString().padStart(4, '0')}`;
        console.log(`  ${code}: ${config.name} → Next: ${nextUID}`);
    });
}

function verifyIntegrity() {
    console.log('🔍 Running integrity check...\n');
    
    const issues = [];
    
    // Check 1: Duplicate UIDs
    const files = fs.readdirSync(ZETTEL_PATH).filter(f => f.endsWith('.md'));
    const uidMap = {};
    
    files.forEach(file => {
        const match = file.match(/Z-\d{3}-\d{4}/);
        if (match) {
            const uid = match[0];
            if (uidMap[uid]) {
                issues.push(`Duplicate UID ${uid}: ${uidMap[uid]} and ${file}`);
            } else {
                uidMap[uid] = file;
            }
        }
    });
    
    // Check 2: Legacy naming
    files.forEach(file => {
        if (file.includes('_Z-') && !file.includes('[Z-')) {
            issues.push(`Legacy naming: ${file}`);
        }
    });
    
    // Check 3: Missing brackets
    files.forEach(file => {
        const uidMatch = file.match(/Z-\d{3}-\d{4}/);
        if (uidMatch && !file.includes(`[${uidMatch[0]}]`)) {
            issues.push(`Missing brackets: ${file}`);
        }
    });
    
    if (issues.length === 0) {
        console.log('✅ All checks passed! Vault is pristine.');
    } else {
        console.log(`❌ Found ${issues.length} issues:\n`);
        issues.forEach(issue => console.log(`  - ${issue}`));
    }
}

// ═══════════════════════════════════════════════════════════════
// CLI
// ═══════════════════════════════════════════════════════════════

function showHelp() {
    console.log(`
🔨 ZETTEL-FORGE: RON Vault Creation Enforcer v1.0

Commands:
  status                    Show registry status
  verify                    Run integrity check on vault
  create                    Create new zettel (interactive)
  create --title "..."      Create with options

Options for create:
  --title "Topic Name"      (required) Zettel title
  --source "L-001-0001"     (required) Source LitNote UID
  --domain 001              (required) Domain code
  --tags "tag1, tag2"       Optional tags
  --moc "MOC-Name"          Optional parent MOC
  --force                   Override reserved UIDs

Examples:
  node zettel-forge.js status
  node zettel-forge.js verify
  node zettel-forge.js create --title "Adipic Acid in IR" --source L-101-0002 --domain 001
`);
}

function parseArgs() {
    const args = process.argv.slice(2);
    const command = args[0];
    
    if (!command || command === 'help' || command === '--help') {
        showHelp();
        return;
    }
    
    if (command === 'status') {
        showStatus();
        return;
    }
    
    if (command === 'verify') {
        verifyIntegrity();
        return;
    }
    
    if (command === 'create') {
        // Parse options
        const options = {};
        for (let i = 1; i < args.length; i += 2) {
            const key = args[i].replace(/^--/, '');
            const value = args[i + 1];
            options[key] = value;
        }
        
        // Validate required
        if (!options.title || !options.source || !options.domain) {
            console.error('❌ Missing required options: --title, --source, --domain');
            console.log('\nExample:');
            console.log('  node zettel-forge.js create --title "Topic" --source L-001-0001 --domain 001');
            process.exit(1);
        }
        
        createZettel({
            title: options.title,
            sourceLitnote: options.source,
            domain: options.domain,
            tags: options.tags,
            parentMoc: options.moc
        });
        return;
    }
    
    console.error(`Unknown command: ${command}`);
    showHelp();
}

// Run only if called directly (not imported)
if (require.main === module) {
    parseArgs();
}

// ═══════════════════════════════════════════════════════════════
// EXPORTS FOR MCP SERVER
// ═══════════════════════════════════════════════════════════════

module.exports = {
    loadRegistry,
    saveRegistry,
    getNextUID,
    assignUID,
    Validators,
    createZettel,
    generateFilename,
    generateYAML,
    
    // Wrapper functions for MCP
    getStatusText() {
        const registry = loadRegistry();
        let output = '📊 ZETTEL-FORGE Registry Status\n\n';
        output += `Last Assigned: ${registry.lastAssigned}\n`;
        output += `Total Reserved: ${registry.reserved.length}\n`;
        output += `Total Deprecated: ${registry.deprecated.length}\n\n`;
        output += 'Domain Status:\n';
        Object.entries(registry.domains).forEach(([code, config]) => {
            const nextUID = `Z-${code}-${config.nextSequence.toString().padStart(4, '0')}`;
            output += `  ${code}: ${config.name} → Next: ${nextUID}\n`;
        });
        return output;
    },
    
    runVerification() {
        const issues = [];
        const files = fs.readdirSync(ZETTEL_PATH).filter(f => f.endsWith('.md'));
        const uidMap = {};
        
        files.forEach(file => {
            const match = file.match(/Z-\d{3}-\d{4}/);
            if (match) {
                const uid = match[0];
                if (uidMap[uid]) {
                    issues.push(`Duplicate UID ${uid}: ${uidMap[uid]} and ${file}`);
                } else {
                    uidMap[uid] = file;
                }
            }
            if (file.includes('_Z-') && !file.includes('[Z-')) {
                issues.push(`Legacy naming: ${file}`);
            }
        });
        
        return issues;
    }
};

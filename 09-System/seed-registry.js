#!/usr/bin/env node
/**
 * Registry Seeder: Populate UID_REGISTRY.json with all existing zettels
 * Run once after installation to prevent UID collisions
 */

const fs = require('fs');
const path = require('path');

const VAULT_PATH = '/home/simon/Workspaces/TheOptimizedBrain';
const ZETTEL_PATH = path.join(VAULT_PATH, '03-Zettels/Conscious');
const REGISTRY_PATH = path.join(VAULT_PATH, '09-System/UID_REGISTRY.json');

function seedRegistry() {
    console.log('🌱 Seeding UID Registry with existing zettels...\n');
    
    // Initialize fresh registry
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
            "010": { name: "Electrolytes", nextSequence: 1 },
            "000": { name: "General", nextSequence: 1 }
        },
        reserved: [],
        deprecated: [
            // All reassigned UIDs from cleanup
            "Z-001-0001", "Z-001-0002", "Z-001-0003", "Z-001-0004", "Z-001-0005",
            "Z-001-0006", "Z-001-0007", "Z-001-0008", "Z-001-0009", "Z-001-0010",
            "Z-001-0011", "Z-001-0012", "Z-001-0013", "Z-001-0014",
            "Z-001-0501", "Z-001-0502", "Z-001-0503", "Z-001-0504",
            "Z-001-0512", "Z-001-0513", "Z-001-0514", "Z-001-0515", "Z-001-0516",
            "Z-001-0517", "Z-001-0518", "Z-001-0519", "Z-001-0520", "Z-001-0521",
            "Z-001-0522", "Z-001-0523", "Z-001-0524", "Z-001-0525", "Z-001-0526",
            "Z-001-0527", "Z-001-0528"
        ],
        auditLog: [{
            timestamp: new Date().toISOString(),
            action: 'seed',
            message: 'Registry initialized with post-cleanup state'
        }]
    };
    
    // Scan all existing zettels
    const files = fs.readdirSync(ZETTEL_PATH).filter(f => f.endsWith('.md'));
    let count = 0;
    
    files.forEach(file => {
        const uidMatch = file.match(/Z-\d{3}-\d{4}/);
        if (uidMatch) {
            const uid = uidMatch[0];
            if (!registry.reserved.includes(uid) && !registry.deprecated.includes(uid)) {
                registry.reserved.push(uid);
                count++;
            }
            
            // Track highest sequence per domain
            const domainMatch = uid.match(/Z-(\d{3})-(\d{4})/);
            if (domainMatch) {
                const domain = domainMatch[1];
                const sequence = parseInt(domainMatch[2]);
                if (registry.domains[domain] && sequence >= registry.domains[domain].nextSequence) {
                    registry.domains[domain].nextSequence = sequence + 1;
                }
            }
        }
    });
    
    // Find true last assigned
    const allSequences = registry.reserved
        .map(uid => {
            const match = uid.match(/Z-(\d{3})-(\d{4})/);
            return match ? { domain: match[1], seq: parseInt(match[2]) } : null;
        })
        .filter(Boolean);
    
    // Save registry
    fs.mkdirSync(path.dirname(REGISTRY_PATH), { recursive: true });
    fs.writeFileSync(REGISTRY_PATH, JSON.stringify(registry, null, 2));
    
    console.log(`✅ Registry seeded with ${count} existing UIDs`);
    console.log(`✅ ${registry.deprecated.length} deprecated UIDs tracked`);
    console.log(`✅ Next available by domain:`);
    Object.entries(registry.domains).forEach(([code, config]) => {
        const next = `Z-${code}-${config.nextSequence.toString().padStart(4, '0')}`;
        const count = registry.reserved.filter(uid => uid.startsWith(`Z-${code}-`)).length;
        console.log(`   ${code}: ${next} (${count} existing)`);
    });
    console.log(`\n📁 Registry saved to: ${REGISTRY_PATH}`);
}

seedRegistry();

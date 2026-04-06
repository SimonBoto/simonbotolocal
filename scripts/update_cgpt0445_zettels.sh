#!/bin/bash
# Batch update zettels for CGPT_0445
# Adds source-inbox and fixes source-litnote formatting

VAULT="/home/simon/Workspaces/TheOptimizedBrain"
ZETTEL_DIR="$VAULT/03-Zettels/Conscious"

# List of all zettels needing update (from CGPT_0445 LitNotes)
# Generated from: grep -oP 'Z-\d+-\d+' 01-Literature/LitNote_* | sort -u

ZETTELS=(
  # L-001-0405 group - already done
  # L-001-0406 group - already done  
  # L-001-0407 group - already done
  
  # L-001-0045C (Ribose PPP NADPH) - 6 zettels
  "Z-001-0457" "Z-001-0458" "Z-001-0459" "Z-001-0460" "Z-001-0461" "Z-001-0462"
  
  # L-001-0045D (Triose Metabolism) - 5 zettels
  "Z-001-0463" "Z-001-0464" "Z-001-0465" "Z-001-0466" "Z-001-0467"
  
  # L-001-0045E (Glucose Fructose) - 5 zettels
  "Z-001-0468" "Z-001-0469" "Z-001-0470" "Z-001-0471" "Z-001-0472"
  
  # L-001-0045F (Keto Acids) - 5 zettels
  "Z-001-0473" "Z-001-0474" "Z-001-0475" "Z-001-0476" "Z-001-0477"
  
  # L-001-0045G (Ketogenesis) - 7 zettels
  "Z-001-0478" "Z-001-0479" "Z-001-0480" "Z-001-0481" "Z-001-0482" "Z-001-0483" "Z-001-0484"
  
  # L-001-0045H (Oxaloacetate) - 5 zettels
  "Z-001-0485" "Z-001-0486" "Z-001-0487" "Z-001-0488" "Z-001-0489"
  
  # L-001-0046A (Amino Acids Krebs) - 7 zettels
  "Z-001-0490" "Z-001-0491" "Z-001-0492" "Z-001-0493" "Z-001-0494" "Z-001-0495" "Z-001-0496"
  
  # L-001-0046B (Amino Acid Networks) - 5 zettels
  "Z-001-0497" "Z-001-0498" "Z-001-0499" "Z-001-0500" "Z-001-0501"
  
  # L-001-0600 (Nucleotide Metabolism) - 6 zettels
  "Z-001-0900" "Z-001-0901" "Z-001-0902" "Z-001-0903" "Z-001-0904" "Z-001-0905"
  
  # L-001-0601 (Carbohydrate Pentose) - 5 zettels
  "Z-001-0906" "Z-001-0907" "Z-001-0908" "Z-001-0909" "Z-001-0910"
  
  # L-001-0602 (Ketone Body) - 6 zettels
  "Z-001-0911" "Z-001-0912" "Z-001-0913" "Z-001-0914" "Z-001-0915" "Z-001-0916"
  
  # L-001-0603 (Amino Acid Catabolism) - 6 zettels
  "Z-001-0917" "Z-001-0918" "Z-001-0919" "Z-001-0920" "Z-001-0921" "Z-001-0922"
  
  # L-001-0604 (Metabolic Cofactors) - 6 zettels
  "Z-001-0923" "Z-001-0924" "Z-001-0925" "Z-001-0926" "Z-001-0927" "Z-001-0928"
  
  # L-001-0605 (Evolutionary Biochemistry) - 6 zettels
  "Z-001-0929" "Z-001-0930" "Z-001-0931" "Z-001-0932" "Z-001-0933" "Z-001-0934"
  
  # L-001-0606 (Metabolic Integration) - 4 zettels
  "Z-001-0935" "Z-001-0936" "Z-001-0937" "Z-001-0938"
  
  # L-001-0607 (Comparative Biochemistry) - 3 zettels
  "Z-001-0939" "Z-001-0940" "Z-001-0941"
  
  # L-101-0045A (Adenosine) - 7 zettels
  "Z-101-0100" "Z-101-0101" "Z-101-0102" "Z-101-0103" "Z-101-0104" "Z-101-0105" "Z-101-0106"
  
  # L-101-0045B (Prebiotic Chemistry) - 5 zettels
  "Z-101-0107" "Z-101-0108" "Z-101-0109" "Z-101-0110" "Z-101-0111"
)

SOURCE_INBOX='source-inbox: "[[CGPT_0445_Advanced_Biochemistry_Exploration_CGPT-0445]]"'

echo "Starting batch update of ${#ZETTELS[@]} zettels..."
echo ""

for z in "${ZETTELS[@]}"; do
  # Find the file (may have descriptive name)
  file=$(ls "$ZETTEL_DIR" | grep "^${z}\.md\|^${z}_" | head -1)
  
  if [ -z "$file" ]; then
    echo "⚠️  $z: File not found"
    continue
  fi
  
  filepath="$ZETTEL_DIR/$file"
  
  # Check if already has source-inbox
  if grep -q "source-inbox:" "$filepath"; then
    echo "✅ $z: Already has source-inbox"
    continue
  fi
  
  # Add source-inbox after source-litnote
  # First fix source-litnote format if needed
  sed -i 's/source-litnote: \[\[\([^]]*\)$/source-litnote: "[[\1]]"/' "$filepath"
  
  # Add source-inbox line after source-litnote
  sed -i "/source-litnote:/a\\$SOURCE_INBOX" "$filepath"
  
  echo "📝 $z: Updated"
done

echo ""
echo "Batch update complete!"

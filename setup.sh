#!/bin/bash

# Create folder structure
mkdir -p prompts/cyberpunk
mkdir -p indexes
mkdir -p templates

# Create README
cat <<EOF > README.md
# Prompts Public

A structured, scalable library of AI art prompts for image and video generation tools like Pixel Studio, Midjourney, RunwayML, and more.

## Structure

- \`prompts/\`: One source of truth, organized by category.
- \`indexes/\`: Cross-referenced access by engine, type, and format.
- \`templates/\`: Prompt structure and contribution guidelines.
EOF

# Create first prompt
cat <<EOF > prompts/cyberpunk/traveler.md
### Tool:
Pixel Studio

### Prompt:
"A lone cyberpunk traveler walks down a neon-lit alley in a futuristic city, wearing a long black coat with glowing circuit patterns. The walls are plastered with digital graffiti and glitching holograms. Rain falls softly, reflecting the neon signs reading ‘CTRL SHIFT SIGNAL’. In the sky, a massive moon looms behind clouds, with faint drones buzzing overhead."

### X-Friendly:
Generated with Pixel Studio | Prompt: “A lone cyberpunk traveler walks down a neon-lit alley, glowing circuit coat, digital graffiti, rain reflecting ‘CTRL SHIFT SIGNAL’ in neon. Drones hum above.” #PixelArt #CyberpunkVibes #CTRLShiftSignal #VisualStorytelling

### IG Hashtags:
#CyberpunkVibes #PixelArt #RetroFuture #AestheticArt #GlitchCore #NeonDreams #SciFiCity #FuturisticVibes #CTRLShiftSignal #VaporwaveStyle #DigitalNomad #PixelScene #TechnoNoir #AIArt #VisualStorytelling #RainyNight #NeoTokyo #CyberDreams #ArtOfTheDay #SynthwaveMood
EOF

# Create index files
cat <<EOF > indexes/by-engine.md
# Index: Prompts by Engine

## Pixel Studio
- [Cyberpunk Traveler](../prompts/cyberpunk/traveler.md)
EOF

cat <<EOF > indexes/by-type.md
# Index: Prompts by Type

## Characters
_(To be populated)_

## Environments
- [Cyberpunk Traveler](../prompts/cyberpunk/traveler.md)
EOF

# Create prompt template
cat <<EOF > templates/prompt-template.md
# Prompt Template

### Tool:
[Name of the AI engine/tool used to generate]

### Prompt:
"A short, rich prompt description here..."

### X-Friendly:
Shortened tweet-format version + 3–4 strong hashtags

### IG Hashtags:
#Hashtag1 #Hashtag2 #Hashtag3 ...
EOF

echo "✅ Repo scaffold created. You’re ready to commit!"

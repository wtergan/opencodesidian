---
name: nano-banana
description: Image generation and editing using Gemini Nano Banana
---

# Nano Banana Skill

This skill enables image generation and editing using the Gemini API with Nano Banana extension.

## Overview

Nano Banana provides powerful image capabilities:
- Generate new images from prompts
- Edit existing images
- Create icons and logos
- Generate diagrams and flowcharts

## Prerequisites

Requires `GEMINI_API_KEY` environment variable set.

## Commands

### /generate

Creates new images from text descriptions.

**Syntax**:
```
gemini /nanobanana /generate "<prompt>" [options]
```

**Options**:
- `--count <number>`: Number of images (default: 1)
- `--aspect <ratio>`: Aspect ratio (e.g., "1:1", "16:9", "4:3")
- `--styles <style>`: Comma-separated styles

**Examples**:
```
gemini /nanobanana /generate "a serene mountain landscape at sunset with purple clouds"
gemini /nanobanana /generate "futuristic city skyline" --aspect 16:9 --count 3
gemini /nanobanana /generate "minimalist logo for coffee shop" --styles flat,modern
```

**Output**: Images saved to current directory or subfolder

### /edit

Modifies existing images.

**Syntax**:
```
gemini /nanobanana /edit "<edit prompt>" --image <path_to_image>
```

**Examples**:
```
gemini /nanobanana /edit "make the sky more dramatic with darker clouds" --image ./sunset.jpg
gemini /nanobanana /edit "change the color scheme to blue and gold" --image ./logo.png
```

### /icon

Generates icons and logos.

**Syntax**:
```
gemini /nanobanana /icon "<description>"
```

**Examples**:
```
gemini /nanobanana /icon "modern app icon for a note-taking app, minimalist, blue gradient"
gemini /nanobanana /icon "favicon for science blog, atom symbol, simple"
```

### /diagram

Creates diagrams and flowcharts.

**Syntax**:
```
gemini /nanobanana /diagram "<description>"
```

**Examples**:
```
gemini /nanobanana /diagram "flowchart showing user authentication process"
gemini /nanobanana /diagram "system architecture diagram with API gateway, microservices, and database"
```

## Use Cases

### Content Creation
- Blog post header images
- YouTube thumbnail backgrounds
- Social media graphics
- Article illustrations

### Documentation
- Architecture diagrams
- Process flowcharts
- System overviews
- Concept visualizations

### Project Assets
- Logo concepts
- App icons
- Favicon generation
- Brand imagery

### Note Visualization
- Concept diagrams for complex ideas
- Mind maps
- Timeline visualizations
- Comparison charts

## Best Practices

1. **Be Specific**: Detailed prompts produce better results
   - ❌ "a mountain"
   - ✅ "a snow-capped mountain peak at golden hour with mist in valleys"

2. **Style Keywords**: Include style descriptors
   - "photorealistic", "minimalist", "oil painting", "vector art"
   - "flat design", "3D render", "watercolor", "sketch"

3. **Composition**: Mention composition when important
   - "wide shot", "close-up", "aerial view", "isometric"

4. **Mood/Atmosphere**: Describe the feeling
   - "serene", "dramatic", "mysterious", "cheerful", "professional"

5. **Color Palette**: Specify colors when relevant
   - "warm tones", "monochrome", "vibrant colors", "pastel palette"

## Examples by Use Case

**Blog Header**:
```
gemini /nanobanana /generate "abstract technology background with neural network patterns, blue and purple gradient, futuristic, wide format" --aspect 16:9
```

**YouTube Thumbnail**:
```
gemini /nanobanana /generate "eye-catching thumbnail background with cosmic theme, stars and galaxies, vibrant colors, space for text overlay" --aspect 16:9
```

**Process Diagram**:
```
gemini /nanobanana /diagram "diagram showing PARA method workflow: Input → Inbox → Process → Projects/Areas/Resources/Archive"
```

**Concept Illustration**:
```
gemini /nanobanana /generate "visual metaphor for knowledge management: a garden with interconnected plants representing ideas, watercolor style"
```

## Integration with Workflows

### Writing Workflow
1. Write draft content
2. Identify sections needing visuals
3. Generate appropriate images
4. Add to 05_Attachments/
5. Embed in note: `![[generated-image.png]]`

### Project Workflow
1. Create project note
2. Generate logo/icon concepts
3. Store in 05_Attachments/Project-Name/
4. Link from project note

## Notes

- Images are typically saved in current working directory
- Nano Banana may create subfolders for organization
- Generated images are original content (not from training data)
- Edit mode preserves original while creating variation

## Troubleshooting

**Command not found**: Ensure GEMINI_API_KEY is set
**Rate limiting**: Space out requests if generating many images
**Unexpected results**: Refine prompt with more specific descriptors

---

**Usage**: Call this skill when image generation or editing is needed for content creation.

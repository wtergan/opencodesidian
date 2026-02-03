---
description: Create a new OpenCode skill using the skill-creator guide
tools:
  - skill
  - read
  - write
  - edit
---

# Create Skill

Creates a new OpenCode skill following Anthropic's skill-creator best practices. Guides you through skill design, structure, and implementation.

## Your Input

**Skill Details:** $ARGUMENTS

Describe what skill you want to create, including:
- Purpose and domain
- What workflows it should support
- Any bundled resources needed (scripts, references, assets)

## Process

1. **Parse skill requirements** from $ARGUMENTS
2. **Load skill({ name: 'skill-creator' })** ← Uses Anthropic's skill creation guide
3. **Design skill structure** following skill-creator principles:
   - Skill name (kebab-case, descriptive)
   - Concise description for frontmatter
   - Degree of freedom (high/medium/low based on task fragility)
   - Bundled resources assessment
4. **Create skill directory** at `.opencode/skills/[skill-name]/`
5. **Generate SKILL.md** with:
   - YAML frontmatter (name, description, license)
   - Concise instructions (token-efficient)
   - Usage examples
   - Workflow guidance
6. **Optional: Add bundled resources**
   - `scripts/` - For deterministic operations
   - `references/` - For documentation to load as-needed
   - `assets/` - For templates/files used in output
7. **Validate** against skill-creator principles
8. **Return**: Skill path + creation summary

## Skill Design Principles (from skill-creator)

### Concise is Key
- Challenge each piece: "Does Claude really need this?"
- Prefer examples over verbose explanations
- Every token must justify its cost

### Appropriate Degrees of Freedom
- **High freedom**: Text instructions for contextual decisions
- **Medium freedom**: Pseudocode/scripts with parameters
- **Low freedom**: Specific scripts for fragile/error-prone operations

### Skill Anatomy
```
skill-name/
├── SKILL.md (required)
│   ├── Frontmatter: name, description, license
│   └── Body: Concise instructions
├── scripts/ (optional)
├── references/ (optional)
└── assets/ (optional)
```

## Example Usage

```
/create-skill Help me create a skill for working with my company's internal API
/create-skill I need a skill for formatting legal briefs according to our firm's style
/create-skill Create a skill that helps me analyze data using our specific methodology
```

## Output

Returns:
- **Skill location**: `.opencode/skills/[skill-name]/`
- **Files created**: SKILL.md + any bundled resources
- **Usage instructions**: How to load and use the skill
- **Next steps**: Testing, refinement, documentation

## Best Practices

1. **Name clearly**: Use kebab-case (e.g., `pdf-processor`, `api-client`)
2. **Description matters**: This triggers when skill loads—be comprehensive
3. **Stay lean**: Move detailed reference material to `references/` files
4. **Include examples**: Show expected usage patterns
5. **Consider maintenance**: Skills evolve—design for updates

## Integration with System

New skills integrate immediately:
- Load via: `skill({ name: 'your-skill-name' })`
- Available to all agents that have `skill: true` in their tools
- Follows same quality scoring as other system components

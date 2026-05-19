---
name: ppt-maker
description: >
  Create professional McKinsey/BCG-style PowerPoint presentations following the Brandlogy design system.
  Applies strict design rules: Pretendard-only typography, five locked slide zones, brand-blue color palette,
  Pyramid Principle storyline structure, and Visualization-First layouts.
  Use this skill whenever the user asks for: a Brandlogy PPT, consulting-style slides, a McKinsey style deck,
  a BCG style presentation, a strategy presentation, Pyramid Principle slides, a Pretendard PPT,
  or any request to build a professional deck from data, a brief, or a topic outline.
  Even if the user just says "make me a presentation" in a business or academic context, prefer this skill
  over the generic pptx skill to ensure brand consistency and consultant-grade quality.
---

# PPT Maker Skill

A specialist skill for producing PowerPoint (.pptx) files that meet Brandlogy's McKinsey/BCG-grade design system.
**This skill runs on top of the pptx skill** -- use pptxgenjs (or the editing workflow) for technical execution,
and follow this skill's Brandlogy rules for every design decision.

## Reference Files

| Content | File |
|---------|------|
| Color palette, Typography, 5-zone layout coordinates | [references/design-system.md](references/design-system.md) |
| Body composition patterns A-F, Component styling | [references/patterns.md](references/patterns.md) |
| Per-slide QA checklist (required before export) | [references/checklist.md](references/checklist.md) |

**Read all three reference files before writing any code.** Skipping them leads to zone violations, font
substitutions, and density failures that are expensive to fix after rendering.

---

## Logo Resolution (Dynamic -- infer from context)

The logo depends on the presentation context. Resolve in this priority order:

1. **User provides a logo file** -- insert that file exactly as-is (see Logo Integrity Rule in design-system.md)
2. **User names an organization** (e.g. "Kookmin University", "Samsung", "Naver") -- reserve a placeholder
   shape at top-right labeled "[OrgName Logo]"; note in output that the user should replace it with their
   official logo file
3. **User mentions a department or course** (e.g. "Graduate School of Business, AI & Big Data") -- set the
   header-strip chapter text to that department name and use rule 2 for the logo
4. **No organization and no file** -- insert a placeholder shape labeled "[Logo]" at top-right; use the
   header strip for the deck title or chapter name

**Logo placement (all cases):**
- Position: top-right corner, approximately 0.5" from right edge, y approximately 0.44"
- Size: approximately 1.22" x 0.24" (aspect-locked)
- On dark backgrounds (section dividers, closing slides): use white variant or placeholder with white border

Never hardcode a specific organization's logo unless the user provides the actual file. Always make
swapping the logo trivial for the user.

---

## Workflow

### Step 0 -- Set up pptx skill
Read the pptx skill's pptxgenjs.md and confirm the environment (Node, pptxgenjs installed).

### Step 1 -- Resolve context
Before designing, identify:
- **Audience and purpose**: academic presentation, investor pitch, internal strategy, client proposal?
- **Organization/brand**: who is presenting? Resolve logo per the Logo Resolution rules above.
- **Department/course label**: use as header-strip chapter name (e.g. "Graduate School of Business")
- **Tone**: formal academic, executive, startup-pitch?

These answers shape headline copy, body density, and whether to lean into the dark-section aesthetic
or stay on white.

### Step 2 -- Design the storyline (Pyramid Principle)
Given the user's topic, data, or brief:
1. Build an **Executive Summary -> Problem -> Solution -> Impact** narrative arc
2. Extract **one single governing message** (the headline) per slide
3. Structure the table of contents using MECE -- mutually exclusive, collectively exhaustive

Once the storyline is locked, decide on slide count and types: Cover / Content / Section Divider / Closing.

### Step 3 -- Choose a layout per slide
Select a pattern from references/patterns.md (Patterns A-F) for each slide.
- Any slide carrying data, comparison, process, structure, or relationship -> must include a visualization
- Pure-prose body is reserved for section openers, hero takeaways, and definition slides only

### Step 4 -- Write pptxgenjs code
Use the exact coordinates, colors, and font specs from references/design-system.md:
- Every text element: fontFace: 'Pretendard' -- no exceptions
- Slide size: 13.333" x 7.5" (16:9)
- Five zones (header strip / headline / subtitle / body box / footer strip) at fixed Y-coordinates on every slide
- Insert logo placeholder or actual file per Step 1 resolution

### Step 5 -- Render and visual QA
Run every item in references/checklist.md:
- Convert to images via pdftoppm, inspect each slide
- Fix text overflow, zone violations, empty body bottom, logo distortions
- Only after QA passes, deliver the final .pptx to the user

---

## Non-Negotiable Rules

1. **Font**: Pretendard only. DM Sans, Poppins, Arial, Roboto -- forbidden without exception.
2. **Zone coordinates**: All five zone Y-positions are identical across every slide.
   Content overflow -> split the slide, never shift the zones.
3. **Logo**: Insert user-provided logo PNG exactly as-is, or use a clearly labeled placeholder.
   No background box, underline, shadow, recolor, crop, or any other treatment on the actual logo file.
4. **Visualization first**: If the slide carries data or comparison, express it as a chart or diagram, not prose.
5. **Body density**: Never leave the bottom 30% of the body box empty. Fill with evidence, KPIs, or charts.
6. **No emojis**: Zero emojis anywhere on any slide.

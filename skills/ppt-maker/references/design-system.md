# Brandlogy Design System -- Sections 0 through 3

---

## Section 0: Production Constraints (Read First)

### Output
- 16:9 slides only -- PowerPoint standard 13.333" x 7.5", reference resolution 1920 x 1080 px.
  No other aspect ratios are valid output.
- All deliverables go through the Brandlogy template or equivalent uploaded template.

### Brand Assets (mandatory, no substitution)
- **Logo**: Use the logo file provided by the user, or insert a labeled placeholder shape if no file
  is given (see SKILL.md Logo Resolution for full rules). Position: top-right, ~0.5" from right edge,
  y ~0.44", ~1.22" x 0.24" aspect-locked. The header strip chapter label (left side) should reflect
  the presenting organization or course -- e.g. "Graduate School of Business" or "Strategy Division" --
  in Pretendard 600 12pt #8e8e93.
- **Typography**: Pretendard only -- no exceptions. Do NOT use DM Sans, Outfit, Poppins, Roboto, Noto,
  system fallbacks, or any other family under any circumstance. Every weight reference maps to
  Pretendard's scale (Thin 100 to Black 900). If a fallback string is needed for export use:
  Pretendard, "Pretendard Variable", -apple-system, system-ui, sans-serif
  but the only family that should actually render is Pretendard. Embed Pretendard in the .pptx on export.

### Slide Skeleton -- locked positions across the deck
Every slide must place these five zones at identical coordinates. Only body contents change, never the frame.

| Zone | Y-range (from top) | Contents | Style |
|---|---|---|---|
| Header strip | 0.4" - 0.7" | Chapter name (left), Logo (right) | Chapter: Pretendard 600, 12pt, #8e8e93. Logo: ~1.22" x 0.24" aspect-locked, ~0.5" from right edge |
| Headline zone | 1.0" - 1.75" | Slide headline (one sentence) | Pretendard 700, 32-40pt, #222222, line-height 1.20 |
| Subtitle zone | 1.63" - 2.03" | Subtitle (one-sentence lead) | Pretendard 500, 16pt, #45515e, line-height 1.45 |
| Body box | 2.39" - 6.85" | All body components (charts, KPIs, diagrams) | Mixed |
| Clearance buffer | 6.85" - 7.05" | EMPTY -- no content ever | -- |
| Footer strip | 7.05" - 7.3" | Page number (left), source/footnote (right) | Pretendard 500 10pt #8e8e93 / Pretendard 400 9-10pt #8e8e93 |

**Vertical rhythm:**
- Header strip to Headline: 0.3" (deliberate breathing space)
- Headline zone to Subtitle zone: 0.1" zone-to-zone (~0.13" visual gap) -- reads as one coupled unit
- Subtitle bottom to Body top: ~0.36" -- clear visual break, body reads as its own region

**Lock rule:** These five zones do not move between slides. Override is permitted only for section dividers,
full-bleed covers, or closing slides. "Body is taller than usual" is NOT a valid override -- split the slide.

**Hard boundary:** Body content lives strictly inside 2.39" - 6.85". Anything taller than 4.46" must be
split or moved to a second slide. The 0.2" clearance buffer (6.85" - 7.05") stays empty at all times.

### Logo Integrity Rule
Whatever logo file the user provides must be placed exactly as provided -- original file, original
proportions, original colors, original transparency (alpha channel preserved). Insert as-is.

If no logo file is provided, insert a rounded rectangle placeholder shape (#f2f3f5 fill, 8px radius)
at the logo position, labeled with the organization name in Pretendard 500 10pt #8e8e93.

Do NOT add: underline, strikethrough, drop shadow, glow, border, frame, recolor, gradient, opacity
change, background fill, opaque box behind the logo, or any other visual treatment.
Do NOT: crop, stretch, skew, rotate, or duplicate the logo.

Permitted: uniform scaling to fit the ~0.24" target height (preserving aspect ratio), and uniform
color inversion to a white variant when placed on dark backgrounds (section dividers, closing slides).

A black or white rectangle behind the logo is a defect -- fix it before exporting.

### Body Density Rule
The lower body box must NOT be left half-empty. Fill with charts, KPI tiles, comparison tables,
dual-column layouts, or supporting captions. Empty bottom space breaks the McKinsey/BCG sharpness target.

If a slide genuinely has thin content, use these density tactics (never decorative padding):
- Pull supporting evidence (quote, data point, mini-chart) into a side panel inside the body box
- Add a "So What" callout box at the bottom of the body box (above 6.85") summarizing the takeaway
- Insert a diagram that visually reinforces the headline
- Split the body into a 2-column claim / evidence layout
- Use Pattern F (Stacked Insight Layers) -- three horizontal bands within the body box

### Visualization-First Rule
Whenever a slide carries data, comparison, process, structure, or relationship -- visualize it.
Do not narrate it in prose. This is a strong default, not a suggestion.

**Trigger conditions (slide MUST include a visualization if any apply):**
- Two or more numbers being compared --> chart or KPI tile row, never inline prose
- A trend over time --> line chart or timeline, even with only 2-3 points
- Composition / share / distribution --> bar, donut, or 100% stacked bar
- A process or sequence --> horizontal arrow flow, numbered stages
- A comparison across categories --> grouped/stacked bar or table (chart preferred)
- A structural relationship between concepts --> diagram, matrix, 2x2
- A geographic or hierarchical breakdown --> map, tree, or org chart

**Visualization priority order:**
1. Charts -- bar (horizontal/vertical/grouped/stacked), line, area, scatter, donut. Default.
2. KPI tiles with sparklines -- when a single number deserves emphasis but context still matters
3. Diagrams -- flow, sequence, 2x2 matrix, funnel, hierarchy
4. Annotated images / screenshots -- only when the visual artifact itself is the evidence
5. Tables -- last resort, only when individual cell values matter more than ranking/comparison

**Constraints:**
- Visualizations live strictly inside the body box (2.39" - 6.85"). Never bleed into other zones.
- Maximum 1-2 visualizations per slide.
- Every chart/diagram must have: title (Pretendard 600 14pt), axis labels (Pretendard 400 10pt #45515e),
  and a source line (Pretendard 400 9pt #8e8e93) directly below.
- If a visualization forces font sizes below 9pt, the slide has too much data -- split it.

---

## Section 1: Visual Theme and Atmosphere

The aesthetic bridges Apple-grade product-marketing clarity with a playful, rounded, gallery-like feel.
Pure white (#ffffff) is the structural background; color enters via charts, KPI cards, gradients, and accents.
Pretendard at moderate weights (500-700) carries a confident-but-approachable tone.

Key characteristics:
- White-dominant canvas with colorful accent elements carrying visual interest
- Pretendard across the entire system -- weight (not family) does all hierarchy work
- Pill buttons (9999px radius) for nav, tabs, toggles
- Generous rounded cards (16-24px radius) for content blocks
- Brand blue spectrum: #1456f0 -> #3b82f6 -> #60a5fa
- Brand pink (#ea5ec1) reserved for decorative accents only
- Near-black text (#222222, #18181b) on white
- Purple-tinted shadows (rgba(44, 30, 116, 0.16)) for featured cards
- Dark sections (#181e25) for divider/closing slides

---

## Section 2: Color Palette and Roles

### Brand Primary
- Brand Blue (#1456f0): primary brand identity color
- Sky Blue (#3daeff): lighter brand variant for accents
- Brand Pink (#ea5ec1): secondary accent -- decorative only, never on body text

### Blue Scale
- #bfdbfe -- light blue background
- #60a5fa -- primary-light, active states, chart fills
- #3b82f6 -- primary-500, standard blue actions, primary chart series
- #2563eb -- primary-600, emphasis
- #1d4ed8 -- primary-700, deep emphasis
- #17437d -- brand-deep

### Text Colors
- #222222 -- primary text (body, headline)
- #18181b -- heading-dark, dark button text
- #181e25 -- dark surface text, footer background
- #45515e -- secondary text (subtitle, captions)
- #8e8e93 -- tertiary/muted text (chapter name, page number, source)
- #5f5f5f -- helper text

### Surface Colors
- #ffffff -- primary background (every slide)
- #f0f0f0 -- secondary container background
- #f2f3f5 -- subtle dividers
- #e5e7eb -- component borders

### Semantic
- #e8ffea -- success background (pair with #16a34a for success text)

### Shadow Library
| Token | Value | Use |
|---|---|---|
| Standard | rgba(0,0,0,0.08) 0px 4px 6px | Default cards |
| Soft Glow | rgba(0,0,0,0.08) 0px 0px 22.576px | Ambient shadow |
| Brand Glow | rgba(44,30,116,0.16) 0px 0px 15px | Featured cards (max 1 per slide) |
| Brand Glow Offset | rgba(44,30,116,0.11) 6.5px 2px 17.5px | Hero product cards |
| Elevated | rgba(36,36,36,0.08) 0px 12px 16px -4px | Hero, hover-equivalent emphasis |

### Hero Gradient (Premium Accent -- max 3 elements per deck)
linear-gradient(135deg, #1456f0 0%, #3b82f6 50%, #60a5fa 100%)

Fixed parameters -- do NOT vary:
- Angle: 135deg (top-left dark to bottom-right light). Consistent across the deck.
- Stops: 0% / 50% / 100% with the three brand blues in order. No additional stops.
- Colors: only #1456f0, #3b82f6, #60a5fa. No purple, cyan, teal, or pink.

Permitted locations (max 3 across the entire deck):
1. Cover slide hero card
2. Section divider background (instead of solid #181e25)
3. One featured KPI card per slide -- white text only, paired with Brand Glow shadow

Forbidden locations:
- Chart bars, lines, or data points (creates false visual hierarchy on data)
- Headline or body text (gradient-text is AI-slop visual)
- Header strip and footer strip (always flat)
- Standard content cards in bulk
- Multiple gradient elements on the same slide

Premium rules:
- Always pair Hero Gradient with Brand Glow shadow.
- Text on gradient: #ffffff at Pretendard 500-700, never #222222 or any blue.
- Gradient cards use 20-24px radius -- sharp corners on gradient look cheap.
- If gradient competes with charts on the same slide, the chart wins.

---

## Section 3: Typography Rules (Pretendard only)

### Family
Pretendard only (Korean + Latin support, weights 100-900). No other family permitted under any circumstance.
Export fallback string: Pretendard, "Pretendard Variable", -apple-system, system-ui, sans-serif
Embed Pretendard in the .pptx so the layout survives on machines without it installed.

### Weight Map
- 700 Bold: Slide headlines, section titles, KPI numbers, strong body emphasis
- 600 SemiBold: Card titles, button text, chapter name, body H2/H3
- 500 Medium: Sub-headings, subtitles, feature labels, emphasized body
- 400 Regular: Body text, captions, sources, footnotes
- 300 Light and 800 ExtraBold: available for special cases; use sparingly

### Type Scale (16:9 slide reference)
| Role | Weight | Size | Line Height | Color |
|---|---|---|---|---|
| Slide Headline | 700 | 32-40pt | 1.20 | #222222 |
| Subtitle | 500 | 16pt | 1.45 | #45515e |
| Body H2 | 600 | 18-20pt | 1.40 | #222222 |
| Body H3 | 600 | 14-16pt | 1.45 | #222222 |
| Body | 400 | 12-14pt | 1.50 | #222222 |
| Body Emphasized | 500 | 12-14pt | 1.50 | #222222 |
| Body Bold | 700 | 12-14pt | 1.50 | #222222 |
| KPI Number | 700 | 36-48pt | 1.10 | #1456f0 (or context color) |
| KPI Label | 500 | 11-12pt | 1.30 | #45515e |
| Chapter Name | 600 | 11-12pt | 1.30 | #8e8e93 |
| Page Number | 500 | 9-10pt | 1.30 | #8e8e93 |
| Caption / Source | 400 | 9-10pt | 1.40 | #8e8e93 |
| Tag / Badge | 600 | 10-11pt | 1.20 | varies |

### Principles
- Weight does the hierarchy work, not family. Pretendard 700 vs 500 vs 400 carries the entire rhythm.
- Line-height defaults: 1.50 body, 1.45 subtitles, 1.20-1.30 headlines/labels, 1.10 big numbers.
- No italic unless quoting a source -- use weight contrast instead.
- Tracking: 0 for body, -0.02em to -0.03em for large headlines (32pt+).

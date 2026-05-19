# Brandlogy Design System -- Sections 4 through 6

---

## Section 4: Component Stylings

### Buttons / Pills

**Pill Primary Dark**
- BG #181e25, text #ffffff, padding 11px 20px, radius 8px, Pretendard 600 13-14pt
- Use: primary CTA on cover/closing slides

**Pill Nav / Tab**
- BG rgba(0,0,0,0.05), text #18181b, radius 9999px, Pretendard 500 11-12pt
- Use: section tabs, filter indicators

**Pill White**
- BG #ffffff, text rgba(24,30,37,0.8), radius 9999px, Pretendard 500
- Use: secondary nav, inactive tabs

**Secondary Light**
- BG #f0f0f0, text #333333, padding 11px 20px, radius 8px, Pretendard 500
- Use: secondary actions, divider tags

---

### Content Cards (body zone)

**Standard Content Card**
- BG #ffffff, radius 13-16px, shadow: rgba(0,0,0,0.08) 0px 4px 6px
- Internal padding 16-24px
- Use: KPI tiles, point-by-point breakdowns, capability cards

**Featured Card**
- BG: vibrant gradient (blue family) or white, radius 20-24px
- Shadow: rgba(44,30,116,0.16) 0px 0px 15px (Brand Glow)
- Use: hero takeaway, section opener, headline product card

**Data Card (chart container)**
- BG #ffffff, radius 13px, border 1px solid #f2f3f5, no shadow OR Standard shadow
- Title row at top (Pretendard 600, 14pt), source line at bottom (Pretendard 400, 9pt, #8e8e93)

---

### Charts
- Primary series: #1456f0 or #3b82f6
- Secondary series: #60a5fa, #bfdbfe, #17437d
- Negative/comparison series: #ea5ec1 or neutral #8e8e93
- Gridlines: #e5e7eb, 1px
- Axis labels: Pretendard 400, 10pt, #45515e
- Data labels on bars/points: Pretendard 600, 11pt, #222222
- Always cite source under chart in 9-10pt #8e8e93

---

### Tables
- Header row: BG #f2f3f5, Pretendard 600 12pt, #222222
- Body rows: Pretendard 400 12pt, #222222, alternating BG #ffffff / #fafafa optional
- Row dividers: 1px #e5e7eb
- Cell padding: 8px 12px
- No vertical dividers -- rely on column spacing

---

### Links / Inline Emphasis
- Primary inline: #1456f0, no underline, Pretendard 500
- Source attribution: #8e8e93, Pretendard 400, 9-10pt

---

## Section 5: Layout Principles

### Slide Grid (16:9, 13.333" x 7.5")
- Outer margins: 0.5" left/right, 0.4" top, 0.3" bottom
- Content width: 12.333"
- Content height: 6.8"
- Internal column system: 12-column grid, 0.2" gutter (column width ~0.95")

### Spacing Scale (within body zone)
- Base unit: 4px (0.028")
- Steps: 4, 8, 12, 16, 20, 24, 32, 40, 48, 64, 80px
- Card-to-card gap: 16-24px
- Section-internal padding: 16-24px
- Headline-to-subtitle gap: 16px
- Subtitle-to-body gap: 32px

### Border Radius Scale
- 4px: small tags, micro badges
- 8px: buttons, small cards, input-like elements
- 11-13px: medium cards, data tiles
- 16-20px: large content cards
- 22-24px: hero product cards, major containers
- 30-32px: badge pills
- 9999px: full pill (buttons, tabs)

---

### Body Composition Patterns

**Pattern A -- KPI Strip + Detail** (most common)
- Top half of body: 3-4 KPI cards in a row (each ~3" wide x 1.6" tall)
- Bottom half: supporting chart or 2-column claim/evidence

**Pattern B -- Two-Column Compare**
- Left column (5.5" wide): claim + supporting bullets
- Right column (5.5" wide): chart, diagram, or visual evidence
- Optional bottom-spanning "So What" callout box

**Pattern C -- Diagram-Centered**
- Centered diagram occupies ~70% of body
- 3-4 caption boxes around the diagram explain components
- Bottom strip: source + summary takeaway

**Pattern D -- Process Flow**
- Horizontal arrow flow with 4-6 stages across body
- Each stage: numbered circle, stage label, 1-2 line description
- Below the flow: outcomes summary or pull-quote

**Pattern E -- Quote + Evidence**
- Large pull-quote (Pretendard 500, 24-28pt) on left half
- Stack of 2-3 supporting data cards on right half

**Pattern F -- Stacked Insight Layers** (use when content is thin -- eliminates empty bottom without padding)
- Top band: KPI summary (1 row)
- Middle band: one chart or diagram
- Bottom band: 3-up evidence cards (claim + 1-line proof + source)

---

### Example Component Prompts

**Cover Slide (Hero Gradient)**
Build a 16:9 cover slide on #ffffff. Slide headline at 1.0"-1.75" from top, Pretendard 700, 40pt,
#222222, line-height 1.20. Subtitle at 1.63"-2.03", Pretendard 500, 16pt, #45515e, line-height 1.45.
Body zone (2.39"-6.85"): single hero featured card with Hero Gradient background
(linear-gradient(135deg, #1456f0 0%, #3b82f6 50%, #60a5fa 100%)), 24px radius, Brand Glow shadow
rgba(44,30,116,0.16) 0px 0px 15px, containing the deck's central KPI in Pretendard 700 48pt #ffffff
(white text on gradient -- never blue) with a 12pt Pretendard 500 rgba(255,255,255,0.85) label below.
Logo at top-right (insert provided PNG as-is, ~1.22"x0.24" aspect-locked, alpha preserved -- no
background fill, no decorations, no recolor). Body content stays strictly above 6.85".

**Content Slide -- Pattern A (KPI Strip + Chart)**
Build a 16:9 content slide. Chapter name top-left at y=0.4" baseline, Pretendard 600 12pt #8e8e93.
Logo top-right at y~0.44", insert PNG as-is (~1.22"x0.24" aspect-locked, alpha preserved).
Headline at 1.0"-1.75", Pretendard 700 36pt #222222. Subtitle at 1.63"-2.03", Pretendard 500 16pt #45515e.
Body zone split: top half (2.39"-4.2") is a row of 4 KPI cards (white BG, 13px radius, Standard shadow,
20px padding), KPI number Pretendard 700 32pt #1456f0, label Pretendard 500 11pt #45515e.
Bottom half (4.3"-6.85") is a horizontal bar chart, primary series #3b82f6, axis labels Pretendard 400
10pt #45515e, source line Pretendard 400 9pt #8e8e93. Page number bottom-left (y=7.05").

**Two-Column Compare -- Pattern B**
Body zone: two columns 5.5" wide each, 0.4" gutter. Left column header Pretendard 600 18pt #222222,
body bullets Pretendard 400 13pt #222222 line-height 1.50. Right column: vertical bar chart
(primary #1456f0, comparison #ea5ec1). "So What" callout box spanning full width at bottom of body zone,
BG #f2f3f5, 13px radius, padding 16px, Pretendard 600 14pt #222222.

**Section Divider**
Build a 16:9 section divider on #181e25 (dark) BG OR Hero Gradient
(linear-gradient(135deg, #1456f0 0%, #3b82f6 50%, #60a5fa 100%)) for premium feel.
Section number top-left in Pretendard 600 14pt rgba(255,255,255,0.6). Logo top-right in white variant
(uniformly inverted to white -- no other modification). Section title centered vertically, Pretendard 700
56pt #ffffff. One-line lead under title, Pretendard 500 22pt rgba(255,255,255,0.7), line-height 1.45.
Page number bottom-left in rgba(255,255,255,0.6).

---

## Section 6: Depth and Elevation

| Level | Treatment | Use |
|---|---|---|
| 0 -- Flat | No shadow | Background, in-flow text |
| 1 -- Subtle | rgba(0,0,0,0.08) 0px 4px 6px | Standard content cards |
| 2 -- Ambient | rgba(0,0,0,0.08) 0px 0px 22.576px | Soft surrounding glow |
| 3 -- Brand Glow | rgba(44,30,116,0.16) 0px 0px 15px | Featured/takeaway cards |
| 4 -- Elevated | rgba(36,36,36,0.08) 0px 12px 16px -4px | Hero, hover-equivalent emphasis |

Use Brand Glow sparingly -- at most one element per slide. Standard shadow handles most cards.
Flat is the default for blocks of text directly on the white slide background.

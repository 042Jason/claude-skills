# Brandlogy Design System -- Sections 7 through 9

---

## Section 7: Do's and Don'ts

### Do
- Anchor chapter name, headline, and subtitle at the same coordinates on every single slide
- Fill the lower body box with structured, dense content (charts, KPI cards, 2-column layouts, evidence stacks)
- Use Pretendard weights -- not different families -- to build hierarchy
- Apply pill radius (9999px) for tabs/toggles, 8px for action buttons, 16-24px for content cards
- Reserve the brand purple-tinted shadow for the single featured element on a slide
- Keep body copy at Pretendard 400-500; use 700 only for emphasis and KPI numbers
- Cite every data source in 9-10pt #8e8e93 at the bottom of the relevant element
- Use 12-column internal grid logic for body layouts

### Don't
- Don't leave the bottom 20-30% of the body zone visually empty -- restructure or add evidence/callout
- Don't use any font other than Pretendard -- no DM Sans, Outfit, Poppins, Roboto, Noto, system defaults
- Don't use any logo other than the one provided by the user (or a clearly labeled placeholder)
- Don't deviate from the locked zone coordinates across slides -- override only when structurally
  unavoidable (section divider, full-bleed cover, closing slide)
- Don't let body content invade zones above 2.39" or below 6.85" -- if it doesn't fit, split the slide
- Don't apply brand pink (#ea5ec1) to body text or buttons -- decorative accents only
- Don't use sharp corners on content cards -- minimum radius 8px, body cards 13-24px
- Don't darken shadows past 0.16 opacity -- light-and-airy is the brand register
- Don't apply Hero Gradient to chart bars, lines, or any data series -- use flat brand blue
- Don't apply Hero Gradient to text or use gradient-text effects
- Don't use more than one Hero Gradient element per slide, or more than 3 across the deck
- Don't vary the gradient angle, stops, or colors -- fixed at
  linear-gradient(135deg, #1456f0 0%, #3b82f6 50%, #60a5fa 100%)
- Don't pad slides with decorative shapes or stock illustrations to fake density
- Don't introduce a second display family alongside Pretendard
- Don't use weight 800-900 for body headings (reserve for closing/section divider only)
- Don't use emojis anywhere on slides

---

## Section 8: Aspect Ratio and Export Notes

- 16:9 only. Reject 4:3, 1:1, 9:16, A4, letter, or any other format.
- Export resolution: 1920 x 1080 px minimum for image preview; native PowerPoint vector in .pptx.
- Embed Pretendard in the .pptx so the layout survives on machines without it installed.
- All chart text and data labels must be live text (not rasterized images) to keep edit-ability.

---

## Section 9: QA Checklist (run before exporting any slide)

Run every item below in order before declaring a slide done.

1.  Aspect ratio 16:9? Slide dimensions exactly 13.333" x 7.5".
2.  Pretendard everywhere -- no other fonts? Inspect every text box.
3.  Logo at top-right, original asset with alpha preserved? No box behind it, no underline/shadow/
    recolor/crop/rotation. Or a clearly labeled placeholder if no file was provided.
4.  All five zone anchors match across slides? Header strip (0.4"-0.7"), Headline (1.0"-1.75"),
    Subtitle (1.63"-2.03"), Body box (2.39"-6.85"), Footer strip (7.05"-7.3") -- same Y on every slide.
5.  Body content stays strictly inside 2.39"-6.85"? No invasion above or below.
6.  Clearance buffer (6.85"-7.05") is empty? No cards, text, or shapes in this band.
7.  Lower body box filled with dense, structured content? No empty bottom 30%.
8.  If the slide carries data / comparison / process / structure -- is it visualized as a chart or
    diagram, not narrated as prose?
9.  Every data point has a source line? Pretendard 400, 9pt, #8e8e93, directly below the element.
10. At most one Brand Glow element on the slide?
11. Hero Gradient (if used) only on permitted locations? Max 1 per slide, max 3 across the deck.
    Never on chart bars or text.
12. Headline weight 700, subtitle weight 500, body 400 -- hierarchy holds?
13. No emojis anywhere?
14. All chart/data text is live (not rasterized)?

---

## Quick Reference Strip

| Token | Value |
|---|---|
| Slide size | 16:9, 13.333" x 7.5" |
| Background | #ffffff (content slides), #181e25 (closing/divider) |
| Headline | #222222, Pretendard 700, 32-40pt |
| Subtitle | #45515e, Pretendard 500, 16pt |
| Body | #222222, Pretendard 400, 12-14pt |
| Source/caption | #8e8e93, Pretendard 400, 9-10pt |
| Brand blue | #1456f0 / #3b82f6 / #60a5fa |
| Hero Gradient | linear-gradient(135deg, #1456f0 0%, #3b82f6 50%, #60a5fa 100%) -- max 3/deck |
| Brand pink (accents only) | #ea5ec1 |
| Borders | #e5e7eb, #f2f3f5 |
| Logo position | Top-right, ~0.5" from right edge, y~0.44", ~1.22"x0.24" aspect-locked |
| Page number | Bottom-left, Pretendard 500 10pt #8e8e93 |
| Font | Pretendard only |

# Portfolio Refinement Handoff -- Claude Code Session

## START HERE

Read these files for full context:
1. `agents/portfolio-curator/claude.md` -- Curation rules, audience targeting, all 6 IG profiles, IP protection
2. `Portfolio/index.html`, `Portfolio/evaluator.html`, `Portfolio/creative.html` -- Current live pages
3. `SIRKIT_BRAND_VISUAL_SYSTEM.md` -- Locked brand design system

Live site: smallscope25.github.io/Portfolio (3 pages deployed, images are placeholders)

---

## WHAT'S DONE

- 3 HTML pages built and pushed (index, evaluator, creative)
- SirKit brand design system applied (dark theme, #FF7D45 orange, #1281A3 teal, monospace headings)
- Portfolio-curator agent updated with all 6 IG profiles, Shopify stores, honest framing rules
- Image folder structure in place (`images/work/`, `images/creative/`, `images/evaluator/`, `images/resume/`, `images/hero/`)

---

## WHAT NEEDS TO HAPPEN

### 1. Image Curation (Priority)
User needs to provide broad image selections from:
- 6 Instagram profiles (@sirkitstevens, @snuzzlywumps, @wumpwear, @stuck_on_eject, @wovenwirez, @shamwattsone)
- Game art folders (GTDB, BCT, EQ, GTS -- paths in portfolio-curator agent)
- DesignLab Foundations course project (path TBD)
- RX Manager app screencaps (see PrescriptionManager/, PrescriptionMgr/, RxHelper/ folders)
- CircuitSalad art prints

Process: User picks 3-5 per source -> Claude narrows against audience needs -> User takes narrowed set to Gemini + Copilot for consensus -> Final set locked and deployed.

Target: 12-16 final images across all pages.

### 2. Add DesignLab + RX Manager Projects
These show range beyond game art:
- **DesignLab**: 1-month intensive Figma case study. Shows foundational UX thinking. First Figma project.
- **RX Manager**: Prescription management app for girlfriend's disability medication needs. Shows empathy-driven design + real-world problem solving. Motivation > technical stack.

Present as brief project cards, NOT elaborate case study breakdowns. Show awareness of iterative design process without pretending senior-level expertise.

### 3. Wording Tweaks
User said pages look great but wants minor language adjustments. Go through each page together and tighten.

### 4. Background Patterns / Visual Polish
User wants subtle background patterns or imagery. Options:
- CSS-only patterns (circuit board lines, grid, noise texture)
- Inline SVG patterns
- Keep it subtle -- brand says "The future as imagined in 1979"
- Must not compete with portfolio images or slow page load

### 5. Final Push
After all refinements: commit, push, verify at live URL.

---

## HONEST FRAMING (NON-NEGOTIABLE)

- User does NOT code and never plans to. Uses AI to prototype.
- Pipeline: Leonardo 2D -> Meshy 3D -> Blender touch-ups -> Meshy rigging
- Transfer skills from 25yr operations are real. Don't inflate or bullshit them.
- Brief, honest project cards. Full spectrum of range without overselling as expertise.
- "I learn the tools as I need them" = the authentic voice.

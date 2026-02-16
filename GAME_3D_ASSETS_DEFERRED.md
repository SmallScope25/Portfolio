# Game 3D Assets - Deferred Portfolio Section

**Status:** Ready when needed, documented for future build
**Priority:** After MVP portfolio (visual work + case studies) is live
**Use Case:** Game studio applications, technical deep-dives, portfolio expansion

---

## 3D Assets Inventory (Ready to Use)

### Asset Locations

**EQ (En Queue):**
- Path: `C:\Users\shamw\OneDrive\SmallScope\Game Concepts\EQ\3D\`
- Format: GLB (web-ready with textures)
- Count: 4 models
- File sizes: 1.1-1.5MB (perfect for web)

**BCT (Bloom Circuit Tides):**
- Path: `C:\Users\shamw\OneDrive\SmallScope\Game Concepts\BCT\3D\`
- Format: GLB (web-ready with textures)
- Count: 10 models
- File sizes: 1.7-2.4MB (good for web)

**GTS (Gone Too Soon):**
- Path: `C:\Users\shamw\OneDrive\SmallScope\Game Concepts\GTS\3D\`
- Format: GLB (web-ready with textures)
- Count: 4 models
- File sizes: 8-32MB (⚠️ optimize before web use)

**Total: 18 GLB models ready**

---

## Recommended Models for Portfolio (When Building This Section)

### Best Candidates (Small File Sizes, Fast Loading)

**EQ - Pick 1:**
- ✅ `Dual_Reflections.glb` (1.1MB) - Character pair, minimalist
- ✅ `Contrast_in_Sound.glb` (1.5MB) - Matches 2D designs
- ✅ `Eclipse_Twins.glb` (1.3-1.4MB) - Two versions available

**BCT - Pick 1-2:**
- ✅ `Galactic_Flutterfly.glb` (1.8MB) - Aquatic theme
- ✅ `Glow_Blow.glb` (1.9MB) - Organic creature
- ✅ `Celestial_Mechsquid.glb` (2.4MB) - Mechanical hybrid

**GTS - Pick 1:**
- ✅ `Techno_Explorer.glb` (8.3MB) - Best size from GTS
- ⚠️ Optimize other GTS models in Meshy before using (too large)

---

## Technical Implementation (When Ready)

### Option 1: Interactive 3D Viewer (Recommended)

**Google model-viewer (easiest):**
```html
<script type="module" src="https://unpkg.com/@google/model-viewer/dist/model-viewer.min.js"></script>

<model-viewer
  src="models/character-name.glb"
  alt="Character Name"
  auto-rotate
  camera-controls
  shadow-intensity="1"
  style="width: 100%; height: 500px;"
></model-viewer>
```

**Live demo:** https://modelviewer.dev/

### Option 2: Sketchfab Embed (Most Professional)

1. Upload GLB to Sketchfab (free)
2. Configure lighting/materials
3. Get embed code
4. Paste in portfolio

### Option 3: Static Turntable (Fallback)

- Export 8-12 rotation angles from Blender
- Create image carousel
- Simpler but less impressive

---

## Pipeline Showcase Structure (Future Build)

### For Each Game Project Page:

**Section: "Character Development Pipeline"**

```
┌─────────────────────────────────────────────┐
│  [2D Concept]  →  [3D Model]  →  [Engine]   │
│   Leonardo AI     Meshy AI       Unity/Godot │
└─────────────────────────────────────────────┘

1. 2D Concept Art (static image)
2. 3D Model (interactive GLB viewer)
3. Game Integration (screenshot or "in progress")
```

**Example HTML structure:**
```html
<section class="pipeline-showcase">
  <h2>Character Development Pipeline</h2>

  <div class="pipeline-stage">
    <h3>1. 2D Concept</h3>
    <img src="images/character-concept-2d.jpg" alt="2D concept">
    <p>Art direction via Leonardo AI</p>
  </div>

  <div class="pipeline-stage">
    <h3>2. 3D Model</h3>
    <model-viewer src="models/character.glb" auto-rotate camera-controls></model-viewer>
    <p>Generated via Meshy AI, refined in Blender</p>
  </div>

  <div class="pipeline-stage">
    <h3>3. Game Integration</h3>
    <img src="images/character-in-unity.jpg" alt="Unity scene">
    <p>Rigging and animation in progress</p>
  </div>
</section>
```

---

## What This Section Proves (Future Portfolio Value)

**Technical Skills:**
- ✅ Full 2D→3D→Engine pipeline understanding
- ✅ AI-assisted rapid prototyping workflow
- ✅ Web optimization (GLB format, file sizes)
- ✅ Modern tool proficiency (Leonardo, Meshy, Blender, Unity/Godot)

**Creative Skills:**
- ✅ Art direction at scale (18 models across 3 games)
- ✅ Cohesive visual style per game
- ✅ Character design variety

**Positioning:**
- "AI-assisted indie game developer"
- "Rapid prototyping pipeline specialist"
- "Solo dev with modern workflows"

---

## File Size Optimization (If Needed)

### GTS Models Too Large:

**Current sizes:**
- Paperbot_Companion_1: 32MB ⚠️ Too large for web
- Companions_in_a_Futur: 18MB ⚠️ Borderline
- Colorful_Mechbot_Mira: 13MB ⚠️ Large
- Techno_Explorer: 8MB ✅ Acceptable

**Optimization options:**
1. **Meshy re-export** (costs tokens but user has budget)
2. **Blender optimization:**
   - Decimate mesh (reduce polygon count)
   - Compress textures (resize to 1024x1024 or 512x512)
   - Re-export as GLB with compression

**Target:** Under 5MB per model for fast web loading

---

## When to Build This Section

**After MVP portfolio is live with:**
- ✅ Landing page (6 IG images)
- ✅ Creative page (brands + Wayfarer + RX Manager)
- ✅ Clean CSS/design
- ✅ Mobile responsive
- ✅ Deployed to GitHub Pages

**Then add game section as:**
- Separate pages: `projects/games/eq.html`, `bct.html`, `gts.html`
- Or expandable sections on creative.html
- Or modal overlays with deeper content

---

## Related Documentation

**See also:**
- `GAME_PORTFOLIO_CURATION.md` - Full game project details with IP protection
- `IMAGE_CURATION_ROUNDUP.md` - Visual brand work curation
- EQ 2D assets: `C:\Users\shamw\OneDrive\SmallScope\Game Concepts\EQ\GDD\Design Docs\` (233 images)
- BCT Unity project: Meshy assets + ML-Agents integration
- GTS IG-validated art: 597MB of concept art

---

*Documented: 2026-02-16*
*Status: Ready when needed, not blocking MVP portfolio build*
*Priority: Build after visual portfolio is live and generating opportunities*

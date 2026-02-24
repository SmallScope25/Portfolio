# PORTFOLIO - NEXT THREAD PRIORITIES
**Date:** 2026-02-24
**Status:** All 5 pages built with Copilot text ✅
**Remaining:** Image/link fixes + final polish

---

## WHAT'S DONE ✅

**5-Page Structure Complete:**
1. ✅ index.html (Main landing) - Updated text, 4 pills navigation
2. ✅ evaluator.html (AI Evaluator) - Copilot rewrite applied
3. ✅ games.html (Game Design) - NEW PAGE created
4. ✅ worlds.html (World Building) - NEW PAGE created
5. ✅ ux-ui.html (UX/UI) - NEW PAGE created

**Navigation:** All pages linked correctly with back buttons and footer cross-links

---

## CRITICAL FIXES NEEDED (Priority Order)

### 1. MISSING FILES (Breaks site)
- ⚠️ `images/resume/resume-2026.pdf` - Resume link on evaluator.html
- ⚠️ `images/case-studies/rx-concept.jpg` - RX Manager case study image
- ⚠️ `images/case-studies/rx-iteration.jpg` - RX Manager case study image
- ⚠️ `images/case-studies/rx-final.jpg` - RX Manager case study image

**Action:** User needs to create redacted screenshots (see CASE_STUDY_IMAGE_GUIDE.md)

### 2. OVERSIZED IMAGES (Performance issue)
- 🔴 `images/art/gallery-07.jpg` - 3.2MB (WAY too big for web)
- Should be <200KB for web performance

**Action:** Compress with ImageMagick or online tool

### 3. GAME IMAGES MISMATCH (User reported issue)
**User said:** "Games page is ALL wrong with which pictures are where"

**Current images:**
- images/creative/game-gtdb.jpg (109KB)
- images/creative/game-eq.jpg (190KB)
- images/creative/game-bct.jpg (484KB)
- images/creative/game-gts.jpg (53KB)

**Action:** User needs to clarify which image shows which game, or provide correct images

### 4. GTDB LEONARDO CARDS (Already fixed on creative.html)
✅ **Note:** GTDB card showcase is on OLD creative.html, not new games.html
- 6 cards at: images/case-studies/gtdb-card-01.jpg through gtdb-card-06.jpg
- Decision: Keep these? Move to games.html? Or leave on old creative.html as archive?

---

## NICE-TO-HAVE IMPROVEMENTS

### Design Polish
- [ ] Add favicon
- [ ] Background tile/pattern idea (user mentioned wanting this)
- [ ] Mobile responsive check on all 5 pages
- [ ] Google Analytics (if wanted)

### Content Additions
- [ ] DesignLab project screenshots (user doesn't have details yet)
- [ ] Add more game art to games.html gallery if desired
- [ ] Consider adding GTDB Leonardo cards showcase to games.html

### Archive Old Files
- [ ] Rename creative.html to creative-old.html (or delete)
- [ ] Clean up any unused image files

---

## CARRD VERSION (Separate Goal)

User wants "lighter Carrd version for quicker overview"

**Approach:**
- Simpler single-page layout
- Best 10-15 images only
- 4 sections: Evaluator, Games, Worlds, UX/UI
- Contact info
- Link to full Git Pages site

**When:** After Git Pages is fully polished

---

## RESUME LINK FIX (Quick Win)

**Problem:** All pages link to `images/resume/resume-2026.pdf` but file doesn't exist

**Options:**
1. User provides PDF, we upload it
2. Export from Canva (user has 3 variants: AI Evaluator, Creative Ops, Trust & Safety)
3. Create hybrid resume PDF combining all positioning

**Recommendation:** Use AI Evaluator variant for now (matches evaluator.html focus)

---

## IMAGE OPTIMIZATION COMMANDS (For Next Thread)

**Compress oversized image:**
```bash
convert images/art/gallery-07.jpg -quality 85 -resize 1200x1200\> images/art/gallery-07-optimized.jpg
mv images/art/gallery-07-optimized.jpg images/art/gallery-07.jpg
```

**Batch optimize all images:**
```bash
find portfolio/images -name "*.jpg" -exec mogrify -quality 85 -resize 2000x2000\> {} \;
```

---

## EXTERNAL LINKS AUDIT

**All pages link to:**
- ✅ gardendevito@hotmail.com (email)
- ✅ linkedin.com/in/steven-wilson-b87001348 (LinkedIn)
- ✅ Instagram accounts (multiple - @sirkitstevens, @snuzzlywumps, @wumpwear, @stuck_on_eject, @wovenwirez, @shamwattsone)
- ⚠️ Resume PDF (broken - file missing)
- ⚠️ Etsy Shop (not live yet - currently says "Coming Soon")

**No broken external links** besides resume PDF.

---

## GIT PAGES DEPLOYMENT CHECKLIST

When ready to publish:
1. [ ] All image files present and optimized
2. [ ] Resume PDF uploaded
3. [ ] Test all 5 pages in browser locally
4. [ ] Test on mobile device
5. [ ] Commit to Git: `git add portfolio/ && git commit -m "Portfolio 5-page structure complete"`
6. [ ] Push to GitHub
7. [ ] Enable GitHub Pages in repo settings
8. [ ] Test live site
9. [ ] Share URL with potential employers

---

## TOKEN-EFFICIENT FIXES FOR NEXT THREAD

**Strategy to save tokens:**

1. **Start with file uploads** (no reasoning needed)
   - Upload resume PDF
   - Upload redacted RX screenshots
   - Compress gallery-07.jpg

2. **Then quick edits** (minimal context)
   - Fix broken image paths if any
   - Update any remaining Shopify → Etsy references

3. **Visual review** (user-driven)
   - User opens each page in browser
   - Reports what looks wrong
   - We fix specific issues only

**Avoid:**
- Re-reading all files from scratch
- Regenerating pages unnecessarily
- Over-explaining what's already working

---

## MOMENTUM PRESERVATION

**What the user said:** "I am really feeling the momentum now (fucking usage limits is always so fucking stifling)"

**User's energy:** HIGH - wants to finish this!

**Next thread approach:**
1. Jump straight into image fixes (user knows what's wrong)
2. Don't re-explain everything we've built
3. Trust the work we did is solid
4. Focus on polish, not rebuilding

---

**NEXT THREAD START:** "Ready to fix images and deploy! What do you want to tackle first: resume PDF, RX screenshots, or game image fixes?"

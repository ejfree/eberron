---
title: "${name} — Foundry VTT Scene Prompts"
type: adventure/art-prompts
adventure: "${name}"
tags: ["adventure", "foundry-vtt", "midjourney", "scene-art"]
related: ["overview.md", "scene-planning.md"]
updated: 2026-11-23
---
# ${name} — Foundry VTT Scene Prompts

Midjourney prompts for each scene background. All generated at `--ar 16:9` for Foundry VTT.

---

## Style Notes for Scene Art

Scene wallpapers are **environment illustrations, not portraits.**

- **No characters or people** — tokens are placed on top in Foundry
- **Slight overhead angle** (30–45°) so the space reads as navigable
- **Consistent scale and lighting** — note the scale (e.g., gnome-scale furniture) and lighting palette for this adventure

### Global Style Base (paste into every prompt):
```
tabletop RPG scene background, Eberron setting, ..., slight overhead perspective angle, empty of characters, painterly digital illustration, rich color palette, no people
```

### Foundry VTT Export Settings:
- **Resolution:** 3840 × 2160 px (4K) or 1920 × 1080 (1080p for web)
- **Format:** JPG at 85% quality for backgrounds
- **Foundry scene grid:** Set scene dimensions to match your chosen pixels-per-grid-unit

---

## Scene Prompts

### Load-In — Scene Title
**Foundry scene name:** `scene-slug`
**File:** `/assets/images/scene-slug.jpg`

**Notes:** What the scene should feel like and the key details the art must include.

```
describe the room or place, key props, lighting, mood, ..., slight overhead perspective angle, empty of characters, painterly digital illustration --ar 16:9 --v 6
```

---

### Scene 1 — Scene Title
**Foundry scene name:** `scene-slug`
**File:** `/assets/images/scene-slug.jpg`

**Notes:** ...

```
...
```

---

## Optional / Bonus Scenes

### Transition or State-Change Scene
**File:** `/assets/images/scene-slug.jpg`
When to use it.

```
...
```

---

## Foundry VTT Setup Notes

**Scene configuration for each location:**

| Scene | Grid | Suggested Size | Notes |
| --- | --- | --- | --- |
| Scene name | W×H squares | W×H ft | Terrain, cover, features |

**Consistent style across scenes:** Which scene to run through the Style Tuner first and why.

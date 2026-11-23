# CLAUDE.md

GM prep repo for an **Eberron** campaign played with **Pathfinder 2e** rules.

## Setting
- Eberron, Khorvaire. **Year: 5 years after the end of the Last War** (Treaty of Thronehold; 998 YK → ~1003 YK). Don't use later-timeline events or pre-treaty politics as current.
- Current focus: Zilargo and Korranberg (House Sivis, the Trust, the Library of Korranberg).

## Rules: Pathfinder 2e
- All mechanics (stat blocks, DCs, levels, feats, spells, items) must be PF2e — three-action economy, proficiency ranks, level-based DCs.
- **Offline rules lookup:** run `scripts/fetch-pf2e-data.sh` once; data lands in `reference/pf2e/packs/pf2e/` (gitignored JSON, e.g. `spells/`, `feats/`, `equipment/`, `pathfinder-monster-core/`). Grep there first; fall back to Archives of Nethys (<https://2e.aonprd.com>) only if missing. Never invent rules text.
- **Foundry VTT dev environment:** `foundry/` is a local Foundry v14 + PF2e system instance (see `foundry/README.md`). Start with `foundry/dev.sh`, stop with `foundry/stop-dev.sh`. `foundry/app/` and `foundry/data/` are gitignored and hold the license key and LevelDB worlds — never read, print or commit them. Foundry's own PF2e compendia are LevelDB (not greppable), which is why the JSON copy in `reference/pf2e/` exists. Use `fvtt package unpack` to get campaign content into reviewable text.
- Don't mix systems: legacy material in `docs/` may still be 5e; convert to PF2e when touched.

## Lore
- Lookup order: `docs/` (canon for this campaign) → `source/` PDFs (Eberron books, Sharn, Zilargo, Grand History) → Eberron wiki (`docs/reference/eberron-wiki.md`, <https://eberron.fandom.com/wiki/>).
- Source PDFs are mostly 3.5/5e; take lore, not mechanics.
- Link lore terms to the wiki on first mention in docs.

## Layout
- `docs/people/` NPCs; `docs/groups/`; `docs/locations/`; `docs/adventures/<name>/` overviews and scene planning
- `docs/reference/` lookup pointers; `foundry/` local Foundry VTT dev instance; `assets/images`, `assets/maps`; `source/` reference PDFs; `scripts/`

## Conventions
- Markdown, kebab-case filenames, relative links, images from `assets/images/` (`../../assets/images/x.png`).
- Ask before overwriting canon; mark invented lore as such.

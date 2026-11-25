# CLAUDE.md

GM prep repo for an **Eberron** campaign played with **Pathfinder 2e** rules.

## Setting
- Eberron, Khorvaire. **Year: 5 years after the end of the Last War** (Treaty of Thronehold; 996 YK → current year ~1001 YK). Don't use later-timeline events or pre-treaty politics as current.
- Current focus: Zilargo and Korranberg (House Sivis, the Trust, the Library of Korranberg).

## Rules: Pathfinder 2e
- All mechanics (stat blocks, DCs, levels, feats, spells, items) must be PF2e — three-action economy, proficiency ranks, level-based DCs.
- **Rules MCP:** `.mcp.json` registers `pf2e-mcp` (PF2e Remastered, local SQLite DB at `~/Library/Application Support/pf2e-mcp/pf2e.sqlite`; rebuild with `uvx --from pf2e-mcp python -m pf2e_mcp.ingestion.build`). Prefer its `rules_*` / `build_*` tools for rules lookups.
- **Fallback:** if the MCP lacks something, use Archives of Nethys (<https://2e.aonprd.com>). Never invent rules text.
- **Foundry VTT dev environment:** `foundry/` is a local Foundry v14 + PF2e system instance (see `foundry/README.md`). Start with `foundry/dev.sh`, stop with `foundry/stop-dev.sh`. `foundry/app/` and `foundry/data/` are gitignored and hold the license key and LevelDB worlds — never read, print or commit them. Use `fvtt package unpack` to get campaign content into reviewable text.
- Don't mix systems: everything in `docs/` is PF2e (Mop Mimics was converted from 5e). If you find leftover 5e material, convert it. Standard level DCs; party baseline for Mop Mimics is four level 3 characters.

## GM SECRET — Dragonmarked House Nobles (never reveal to players or in-world)
- The nobles of every dragonmarked house are **true dragons in disguise**. The dragon variant per house is in `docs/reference/house-matrix.csv` (Variant ↔ Noble House, leader, mark, race disguise, land, specialty, guild).
- **Mortals are NEVER part of the official noble houses.** Mortal heirs, branch members, guild staff and marked folk exist, but they are not the house's noble line. Don't write mortal nobles, mortal "family heads", or mortal bloodline claims into canon.
- This is a secret from the players **and from the world itself**: no NPC (outside the dragons and any explicitly read-in conspirators) knows or suspects it. Players learn nothing unless the GM chooses to reveal it.
- Writing rules: keep dragon identities only in GM-only material (mark such sections `*(GM only)*`); player handouts, pre-gens, NPC dialogue and public-facing descriptions must show only the disguise (race, name, mark). Never state the dragon type outside GM-only sections. When asked to draw from the matrix, treat it as secret data.
- Existing notes (e.g. `docs/groups/house-sivis/overview.md`, which says "twelve noble families") may contradict this; flag conflicts rather than silently rewriting.

## CRITICAL CONTEXT — The Trust
- `docs/groups/the-trust/overview.md` is **required reading before writing or editing anything about Korranberg, Zilargo, House Sivis, the Notary Guild or Sivis-stop**. The Trust underlies all of it.
- Core facts: ~1/3 of Zilargo's population informs for the Trust; it reads all Notary Guild / Sivis-stop traffic (Guild operators don't know); the Protector is always the head of House Sivis; the Trusted Ten division heads are d'Sivis nobles; `docs/groups/the-trust/headquarters.md` has the base.
- The overview is tiered (Restricted → Secret → Top Secret → Above Table). Respect the tiers: the dragon-nobles secret is Above Table and is **not** known even to most Trust members. Don't write anything that contradicts it, and never surface higher-tier facts in player-facing text.
- When creating Zilargo/Korranberg locations, NPCs or adventures, consider where the Trust is present and link to the overview in Related Docs.

## Lore
- Lookup order: `docs/` (canon for this campaign) → `source/` PDFs (Eberron books, Sharn, Zilargo, Grand History) → Eberron wiki (`docs/reference/eberron-wiki.md`, <https://eberron.fandom.com/wiki/>).
- Source PDFs are mostly 3.5/5e; take lore, not mechanics.
- Link lore terms to the wiki on first mention in docs.
- **Department names (College of Drystone):** "Supply" is the external name for Shipping & Receiving (internal name). "IT" is Innovation & Transformation; never "Innovation & Technology".

## Layout
- `docs/people/<region>/` NPCs and `docs/locations/<nation or region>/` places (e.g. `zilargo/`, `sharn/`, `karrnath/`), grouped by region; `docs/groups/<name>/`; `docs/adventures/<name>/` overviews and scene planning
- `docs/reference/` lookup pointers, travel times, moons, and `house-matrix.csv` (GM secret); `foundry/` local Foundry VTT dev instance; `assets/images`, `assets/maps`; `source/` reference PDFs

## Conventions
- **Templates (`templates/`):** use `npc_template.md` for people, `location_place_template.md` / `location_shop_template.md` for locations, `room-template.md` for rooms. New adventures go in `docs/adventures/<name>/` using `adventure_overview_template.md` → `overview.md`, `adventure_scene_planning_template.md` → `scene-planning.md`, and `adventure_scene_prompts_template.md` → `scene-prompts.md`. Replace `${name}`; keep GM-only content labeled.
- Markdown, kebab-case filenames, relative links, images from `assets/images/` (`../../assets/images/x.png`).
- Ask before overwriting canon; mark invented lore as such.
- **"Doyen" is NEVER a title** — only "Doyenne" for Lysse Lyrriman d'Sivis. Heads of Library colleges use **Head**, **Rector** (Tabernacle) or **Provost** (Morridan).

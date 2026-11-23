# CLAUDE.md

GM prep repo for an **Eberron** campaign played with **Pathfinder 2e** rules.

## Setting
- Eberron, Khorvaire. **Year: 5 years after the end of the Last War** (Treaty of Thronehold; 998 YK → ~1003 YK). Don't use later-timeline events or pre-treaty politics as current.
- Current focus: Zilargo and Korranberg (House Sivis, the Trust, the Library of Korranberg).

## Rules: Pathfinder 2e
- All mechanics (stat blocks, DCs, levels, feats, spells, items) must be PF2e — three-action economy, proficiency ranks, level-based DCs.
- **Rules MCP:** `.mcp.json` registers `pf2e-mcp` (PF2e Remastered, local SQLite DB at `~/Library/Application Support/pf2e-mcp/pf2e.sqlite`; rebuild with `uvx --from pf2e-mcp python -m pf2e_mcp.ingestion.build`). Prefer its `rules_*` / `build_*` tools for rules lookups.
- **Fallback:** if the MCP lacks something, use Archives of Nethys (<https://2e.aonprd.com>). Never invent rules text.
- **Foundry VTT dev environment:** `foundry/` is a local Foundry v14 + PF2e system instance (see `foundry/README.md`). Start with `foundry/dev.sh`, stop with `foundry/stop-dev.sh`. `foundry/app/` and `foundry/data/` are gitignored and hold the license key and LevelDB worlds — never read, print or commit them. Use `fvtt package unpack` to get campaign content into reviewable text.
- Don't mix systems: legacy material in `docs/` may still be 5e; convert to PF2e when touched.

## GM SECRET — Dragonmarked House Nobles (never reveal to players or in-world)
- The nobles of every dragonmarked house are **true dragons in disguise**. The dragon variant per house is in `docs/reference/house-matrix.csv` (Variant ↔ Noble House, leader, mark, race disguise, land, specialty, guild).
- **Mortals are NEVER part of the official noble houses.** Mortal heirs, branch members, guild staff and marked folk exist, but they are not the house's noble line. Don't write mortal nobles, mortal "family heads", or mortal bloodline claims into canon.
- This is a secret from the players **and from the world itself**: no NPC (outside the dragons and any explicitly read-in conspirators) knows or suspects it. Players learn nothing unless the GM chooses to reveal it.
- Writing rules: keep dragon identities only in GM-only material (mark such sections `*(GM only)*`); player handouts, pre-gens, NPC dialogue and public-facing descriptions must show only the disguise (race, name, mark). Never state the dragon type outside GM-only sections. When asked to draw from the matrix, treat it as secret data.
- Existing notes (e.g. `docs/groups/house-sivis/overview.md`, which says "twelve noble families") may contradict this; flag conflicts rather than silently rewriting.

## Lore
- Lookup order: `docs/` (canon for this campaign) → `source/` PDFs (Eberron books, Sharn, Zilargo, Grand History) → Eberron wiki (`docs/reference/eberron-wiki.md`, <https://eberron.fandom.com/wiki/>).
- Source PDFs are mostly 3.5/5e; take lore, not mechanics.
- Link lore terms to the wiki on first mention in docs.

## Layout
- `docs/people/` NPCs; `docs/groups/`; `docs/locations/`; `docs/adventures/<name>/` overviews and scene planning
- `docs/reference/` lookup pointers and `house-matrix.csv` (GM secret); `foundry/` local Foundry VTT dev instance; `assets/images`, `assets/maps`; `source/` reference PDFs

## Conventions
- Markdown, kebab-case filenames, relative links, images from `assets/images/` (`../../assets/images/x.png`).
- Ask before overwriting canon; mark invented lore as such.

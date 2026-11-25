# Eberron — Pathfinder 2e Campaign Notes

GM prep for an Eberron campaign using Pathfinder 2e rules, set **5 years after the end of the Last War**, centered on Zilargo and Korranberg.

## Contents
| Path | What |
| --- | --- |
| `docs/people/<region>/`, `docs/groups/`, `docs/locations/<region>/` | NPCs, organizations, places, grouped by region |
| `docs/adventures/` | Adventure overviews and scene plans (Mop Mimics, Sivis Stop) |
| `docs/reference/` | Lore and rules lookup pointers |
| `foundry/` | Local Foundry VTT v14 + PF2e dev instance (see `foundry/README.md`) |
| `assets/` | Images and maps |
| `source/` | Reference PDFs (Eberron, Sharn, Zilargo) |

## Rules reference (offline)
The `pf2e-mcp` server (configured in `.mcp.json`) looks up PF2e Remaster rules from a local SQLite database. Build it once:
```sh
uvx --from pf2e-mcp python -m pf2e_mcp.ingestion.build
```
Online fallback: [Archives of Nethys](https://2e.aonprd.com).

## Lore reference
[Eberron Wiki](https://eberron.fandom.com/wiki/Eberron_Wiki) — see `docs/reference/eberron-wiki.md`.

## Status
All content is Pathfinder 2e. Pathfinder content is used under the ORC license; Eberron is property of Wizards of the Coast — personal use only.

# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What This Repo Is

A collection of personal Unraid Docker container templates (XML files) published under the GitHub username `sazap10`. These templates are consumed by Unraid's Community Applications plugin. On Unraid 6.10+ the old "Template Repositories" feature was removed — users install templates by pasting the raw GitHub URL for each XML file into the **Template URL** field under Docker → Add Container.

## Template Format

Each template is an XML file following the Unraid Community Applications `Container version="2"` schema. Key fields:

- `<Repository>` — Docker image reference (e.g. `ghcr.io/sazap10/wealth-tracker:latest`)
- `<WebUI>` — URL pattern using `[IP]` and `[PORT:NNNN]` placeholders
- `<Icon>` — Direct URL to the container icon (raw GitHub or similar CDN)
- `<Config>` — Each mapped port, volume path, or environment variable. Attributes:
  - `Type`: `Port`, `Path`, or `Variable`
  - `Display`: `always` or `advanced`
  - `Required`: `true` or `false`
  - `Mask`: `true` for secrets (passwords, tokens)

## Naming Convention

Template files live in the `templates/` subdirectory and are named `sazap10-<app-name>.xml` to namespace them under the author's username.

## Adding a New Template

1. Create `sazap10-<app-name>.xml` following the structure of an existing template.
2. Add a row for it in the `README.md` templates table.

`sync-templates.sh` discovers all XML files in the repo root via the GitHub API, so no changes to the script are needed when adding a template.

# Unraid Templates

Personal Unraid Docker templates by sazap10.

## Installing Templates

Copy [`sync-templates.sh`](sync-templates.sh) to the Unraid flash drive and run it, or set it up as a User Script (User Scripts plugin) triggered at array start. It fetches all XML templates from this repo into `/boot/config/plugins/community.applications/private/sazap10/` automatically — any templates added to this repo in future will be picked up on the next run.

## Templates

| Template | Description |
|---|---|
| [wealth-tracker](sazap10-wealth-tracker.xml) | Personal net worth tracker — monthly account snapshots with a web UI |

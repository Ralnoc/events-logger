#!/usr/bin/env bash

cd /opt/factorio
mkdir -p backups
tar -czvf backups/darkmatter-gaming-factorio-backup-$(date +"%Y%m%d%H%M%S").tar.gz data

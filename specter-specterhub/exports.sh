#!/usr/bin/env bash
# Expose data directory path and SSH key so SpecterHubWatcher can access the SQLite DB
export APP_SPECTERHUB_DATA_DIR="${APP_DATA_DIR}"
export APP_SPECTERHUB_SSH_KEY="${APP_SSH_PASSWORD_ENCRYPTION_KEY}"

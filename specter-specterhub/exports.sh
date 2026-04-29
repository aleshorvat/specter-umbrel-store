#!/usr/bin/env bash
export APP_SPECTERHUB_DATA_DIR="${EXPORTS_APP_DIR}"
_key=$(docker inspect specter-specterhub_specterhub_1 \
  --format='{{range .Config.Env}}{{println .}}{{end}}' 2>/dev/null \
  | grep '^SSH_PASSWORD_ENCRYPTION_KEY=' | cut -d= -f2- || true)
[[ -n "${_key}" ]] && export APP_SPECTERHUB_SSH_KEY="${_key}"

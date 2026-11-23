#!/usr/bin/env bash
set -euo pipefail

# Nakroth IDE — Linux User-Space Installer (no root required)
# Installs into ~/.local/share/nakroth, links ~/.local/bin/{nakroth,nk,nakroth-cli,nakroth-remote-server},
# and registers ~/.local/share/applications/nakroth.desktop + icon.

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
INSTALL_DIR="${NAKROTH_INSTALL_DIR:-$HOME/.local/share/nakroth}"
BIN_DIR="${HOME}/.local/bin"
APPS_DIR="${HOME}/.local/share/applications"
ICON_DIR="${HOME}/.local/share/icons/hicolor/256x256/apps"

if [[ ! -f "${SCRIPT_DIR}/nakroth" ]]; then
  echo "[Nakroth] Error: 'nakroth' binary not found next to install-linux.sh." >&2
  echo "          Run scripts/linux/build-linux-packages.sh first or extract Nakroth-Linux-x64-Portable.tar.gz." >&2
  exit 1
fi

echo "[Nakroth] Installing to ${INSTALL_DIR}..."
mkdir -p "${INSTALL_DIR}/bin" "${BIN_DIR}" "${APPS_DIR}" "${ICON_DIR}"

install -m 755 "${SCRIPT_DIR}/nakroth" "${INSTALL_DIR}/nakroth"
if [[ -f "${SCRIPT_DIR}/bin/nakroth-cli" ]]; then
  install -m 755 "${SCRIPT_DIR}/bin/nakroth-cli" "${INSTALL_DIR}/bin/nakroth-cli"
fi
if [[ -f "${SCRIPT_DIR}/bin/nakroth-remote-server" ]]; then
  install -m 755 "${SCRIPT_DIR}/bin/nakroth-remote-server" "${INSTALL_DIR}/bin/nakroth-remote-server"
fi
if [[ -f "${SCRIPT_DIR}/nakroth.png" ]]; then
  install -m 644 "${SCRIPT_DIR}/nakroth.png" "${ICON_DIR}/nakroth.png"
fi

ln -sf "${INSTALL_DIR}/nakroth" "${BIN_DIR}/nakroth"
if [[ -f "${INSTALL_DIR}/bin/nakroth-cli" ]]; then
  ln -sf "${INSTALL_DIR}/bin/nakroth-cli" "${BIN_DIR}/nakroth-cli"
  ln -sf "${INSTALL_DIR}/bin/nakroth-cli" "${BIN_DIR}/nk"
fi
if [[ -f "${INSTALL_DIR}/bin/nakroth-remote-server" ]]; then
  ln -sf "${INSTALL_DIR}/bin/nakroth-remote-server" "${BIN_DIR}/nakroth-remote-server"
fi

if [[ -f "${SCRIPT_DIR}/nakroth.desktop" ]]; then
  sed "s|^Exec=nakroth|Exec=${INSTALL_DIR}/nakroth|g" "${SCRIPT_DIR}/nakroth.desktop" > "${APPS_DIR}/nakroth.desktop"
  chmod 644 "${APPS_DIR}/nakroth.desktop"
  if command -v update-desktop-database >/dev/null 2>&1; then
    update-desktop-database "${APPS_DIR}" || true
  fi
fi

echo "[Nakroth] Installed successfully!"
echo "          Run: nakroth   (or nk <path>)"
if [[ ":${PATH}:" != *":${BIN_DIR}:"* ]]; then
  echo "          Note: Add '${BIN_DIR}' to your PATH in ~/.bashrc or ~/.zshrc."
fi

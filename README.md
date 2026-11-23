<p align="center">
  <img src="docs/screenshots/nakroth-icon.png" alt="Nakroth Logo" width="96" />
</p>

<h1 align="center">Nakroth</h1>

<p align="center">
  <strong>Abyssal AI Command IDE &amp; Multi-Agent Cockpit — Pure Native Rust (GPUI)</strong><br />
  120 FPS hardware-accelerated editor, multi-agent command center, Fleet orchestrator, Visual Studio Designer, and native viewers — with zero Electron/Chromium bloat.
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Windows-10%20%7C%2011%20x64-DC2626?logo=windows&logoColor=white" alt="Windows" />
  <img src="https://img.shields.io/badge/Linux-.deb%20%7C%20.rpm%20%7C%20.AppImage-E11D48?logo=linux&logoColor=white" alt="Linux" />
  <img src="https://img.shields.io/badge/macOS-Apple%20Silicon%20.dmg%20%7C%20.pkg-991B1B?logo=apple&logoColor=white" alt="macOS" />
  <img src="https://img.shields.io/badge/Engine-Native%20Rust%20GPUI-B91C1C?logo=rust&logoColor=white" alt="Rust GPUI" />
</p>

---

## Screenshots

### Editor Mode — 120 FPS Code Editor, Explorer, ConPTY Terminal & Persistent AI Cockpit
![Nakroth Editor Mode](docs/screenshots/editor.png)

### Fleet Mode — Multi-Agent Captain Seat, Parallel Worktrees & Formation Topology
![Nakroth Fleet Mode](docs/screenshots/fleet.png)

### Chat Mode — Distraction-Free Fullscreen AI Workspace
![Nakroth Chat Mode](docs/screenshots/chat.png)

### Studio Mode — Visual UI Designer, Flowchart/Mermaid Architect & Import Graph
![Nakroth Studio Mode](docs/screenshots/studio.png)

---

## Highlights

- **Pure Native Rust GPUI Engine**: Hardware-accelerated Direct3D 11 (Windows), Vulkan (Linux), and Metal (macOS) rendering — ~2.5 MB baseline smoke RAM, zero Chromium/Electron overhead.
- **Multi-Agent Cockpit (Persistent Stream-JSON)**: Native integration for **Claude Code**, **Google Antigravity (`agy`)**, **Codex CLI**, **OpenCode**, **Gemini CLI**, **GitHub Copilot**, **Hermes**, **Pi**, and **BYOM/Ollama** direct APIs with persistent workers, instant local slash commands (`/status`, `/doctor`, `/cost`, `/context`, `/learn`, `/diff`), and SQLite cross-session Memory Bank.
- **4 Dedicated Workspaces**:
  - **Editor** — Tree-sitter highlighting (24+ languages), LSP/DAP stdio clients, inline diff hunk review, shadow Git checkpoints & 1-click rewind, interactive ConPTY terminal, and Remote VPS/SSH explorer with `Ctrl+S` auto-upload.
  - **Fleet** — Orchestrate parallel coding agents across isolated Git worktrees with Captain/Lead seat and formation layouts.
  - **Chat** — Standalone distraction-free AI chat workspace with thread history sync and floating modified-file cards.
  - **Studio** — Visual UI Designer (with deterministic Rust GPUI / React Tailwind / Vue / HTML codegen), two-way Mermaid Diagram Editor, and Rust/JS Import Graph with Tarjan circular-dependency detection.
- **Built-in Native Viewers & Power Studios**: SQLite Studio, CSV/Parquet Grid, Hex/PE/ELF/WASM Binary Inspector, REST/GraphQL HTTP Studio, Docker Cockpit, `.env` Vault, CyberChef/JWT/Regex Lab, SAST Auditor, Local FTS5 Hybrid RAG, and Trilingual UI (`EN` / `ID` / `JA`).

---

## Download & Install

Grab the latest release for your OS from the **[Releases](https://github.com/ShinRyu04/Nakroth/releases/latest)** page:

| Platform | Installer | Portable / Notes |
| --- | --- | --- |
| **Windows 10/11 (x64)** | `Nakroth-Setup-1.0.1-x64.exe` | `Nakroth-Windows-x64-Portable.zip` |
| **Linux (Ubuntu / Debian)** | `nakroth_1.0.1_amd64.deb` | `sudo apt install ./nakroth_1.0.1_amd64.deb` |
| **Linux (Fedora / openSUSE / RHEL)** | `nakroth-1.0.1-1.x86_64.rpm` | `sudo dnf install ./nakroth-1.0.1-1.x86_64.rpm` |
| **Linux (Universal)** | `Nakroth-1.0.1-x86_64.AppImage` | `chmod +x Nakroth-*.AppImage && ./Nakroth-*.AppImage` |
| **macOS (Apple Silicon M1–M4)** | `Nakroth-1.0.1-arm64.dmg` / `.pkg` | First launch on unsigned builds: `xattr -cr /Applications/Nakroth.app` |

Verify downloads against `SHA256SUMS.txt` attached to every release.

---

## License

Copyright © 2026 Nakroth Engineering. **All Rights Reserved.**  
Official prebuilt installers are provided for personal and evaluation use. Redistribution, decompilation, or commercial resale without explicit permission is prohibited.

![Nakroth — Abyssal AI Command IDE](docs/screenshots/banner.jpg)

# Nakroth

**English** · [Bahasa Indonesia](#bahasa-indonesia) · [中文 (Mandarin)](#中文-mandarin) · [Download Latest (`v1.1.3`)](https://github.com/ShinRyu04/Nakroth/releases/latest) · [Issues](https://github.com/ShinRyu04/Nakroth/issues)

**Abyssal AI Command IDE & Multi-Agent Cockpit — built 100% from scratch in Pure Rust and GPUI.**

[![Latest Release](https://img.shields.io/github/v/release/ShinRyu04/Nakroth?display_name=tag&label=release&color=DC2626)](https://github.com/ShinRyu04/Nakroth/releases/latest)
![Platform](https://img.shields.io/badge/platform-Windows%20%7C%20Linux%20%7C%20macOS-18181B)
![Engine](https://img.shields.io/badge/engine-Pure%20Rust%20%2B%20GPUI%20(120%20FPS)-991B1B)
![Locales](https://img.shields.io/badge/i18n-EN%20%7C%20ID%20%7C%20%E4%B8%AD%E6%96%87-27272A)
[![License](https://img.shields.io/badge/license-All%20Rights%20Reserved-27272A)](LICENSE)

Nakroth is a native, GPU-rendered code editor, multi-agent orchestrator, visual design studio, and AI creator workbench for Windows, Linux, and macOS. It connects natively to every AI coding CLI you already use (**Claude Code**, **Google Antigravity (`agy`)**, **Oh My Pi (`omp`)**, **OpenCode**, **Codex CLI**, **Gemini CLI**, **Pi**, **GitHub Copilot**, and **BYOK API / Ollama**) via persistent bidirectional workers — inside a single fast native binary with **zero Electron or Chromium overhead**.

---

## What's New in `v1.1.3`

- **Top-Level Creator Mode (`Ctrl+5`)**: 16 pure-Rust interactive creative labs (**Full Identity Pack**, **Theme Forge**, **Icon & Pack Lab**, **Brand & Logo Kit**, **Palette & Tokens**, **CSS Visual Lab**, **UI Screen → Studio**, **Diagram & Flow**, **Quick Starter**, **API & Schema Forge**, **Mock Data & Regex**, **README & Docs**, **Git PR & Release**, **Skill & Rule Forge**, **Fleet Blueprint**, and **Vault**). Automatically follows your active IDE theme, filters strictly to your enabled AI agents, and cleanly separates **OpenCode** from **BYOK API**.
- **Universal AI ↔ Computer Use Bridge**: 14 native Win32 desktop automation tools with 7 granular permissions, blocked-apps guard, `Esc` kill switch, persisted `ON/OFF` consent, and a secure local loopback HTTP bridge automatically wired to **every** AI agent (Editor AI, Chat, Multi-Agent Fleet, and BYOK).
- **Connection per Agent & 1-Click CLI Login**: Configure per-agent API bindings and launch official interactive CLI logins (`Login via agy`, `claude`, `opencode`, `omp`, `codex`, `gemini`, `pi`, `gh`) directly inside Nakroth's built-in ConPTY terminal from `Settings › Connections`.
- **Full 100% Trilingual Localization (`EN` / `ID` / `中文 Mandarin`)**: Switch languages instantaneously across Editor, Fleet, Chat, Studio, Creator, Sidebar, Panels, Analytics, Extensions, and Settings with zero mixed-language fallback.
- **Native Windows Explorer Shell Integration**: Pure-Rust `advapi32.dll` Registry FFI (`<2 ms`, no admin UAC) for `Open with Nakroth`, safe `Open With` registration across 45+ code extensions, optional default code file handler & icon, and safe 1-click Restore.
- **Instant Extensions & Theme-Adaptive Studio**: 2-stage non-blocking Extension README & media loading with 20-entry RAM cache, plus Dark/Light theme-adaptive Studio Mode and Fleet Classic as the default Fleet workspace.

---

## Five Workspaces, One Binary

Code, orchestrate parallel agents, think in fullscreen chat, design UI/diagrams, or forge themes, icons, schemas, and docs — switch seamlessly (`Ctrl+1` .. `Ctrl+5`) without losing state.

<table>
<tr>
<td width="50%" valign="top">
<h3>1. Editor Mode (<code>Ctrl+1</code>)</h3>
<p>120 FPS Tree-sitter editor (24+ languages), GPU minimap, LSP &amp; DAP stdio clients, inline Git hunk review, Pro VT100 ConPTY terminal, Remote VPS/SSH auto-upload, and docked AI cockpit.</p>
<a href="docs/screenshots/editor.png"><img src="docs/screenshots/editor.png" alt="Nakroth Editor Mode with code, minimap, terminal, and AI panel" width="100%" /></a>
</td>
<td width="50%" valign="top">
<h3>2. Fleet Mode &amp; Multi-Agent Lanes (<code>Ctrl+2</code>)</h3>
<p>Fleet Classic Captain/Lead orchestration plus isolated Multi-Agent Session Lanes across Git worktrees, live File-Collision Radar, and 1-click Context Hand-off.</p>
<a href="docs/screenshots/fleet.png"><img src="docs/screenshots/fleet.png" alt="Nakroth Fleet Mode with parallel agents and formation graph" width="100%" /></a>
</td>
</tr>
<tr>
<td width="50%" valign="top">
<h3>3. Chat Mode (<code>Ctrl+3</code>)</h3>
<p>Distraction-free fullscreen AI workspace with synced past CLI sessions, live streaming transcripts, SQLite cross-session Memory Bank, and floating workspace document cards.</p>
<a href="docs/screenshots/chat.png"><img src="docs/screenshots/chat.png" alt="Nakroth Chat Mode fullscreen AI workspace" width="100%" /></a>
</td>
<td width="50%" valign="top">
<h3>4. Studio Mode (<code>Ctrl+4</code>) &amp; 5. Creator Mode (<code>Ctrl+5</code>)</h3>
<p>Theme-adaptive UI Designer (<code>.kdsgn</code>) with deterministic Rust GPUI / React Tailwind / Vue / HTML codegen, two-way Mermaid Flowchart, Tarjan Import Graph, plus 16-lab <strong>Creator Mode</strong>.</p>
<a href="docs/screenshots/studio.png"><img src="docs/screenshots/studio.png" alt="Nakroth Studio Mode UI Designer and Inspector" width="100%" /></a>
</td>
</tr>
</table>

---

## Supported AI Agents & Providers

Bring your existing CLI subscriptions, local models, or custom BYOK endpoints — every active agent is automatically connected to Nakroth's MCP broker and Computer Use bridge.

| Agent / Provider | Transport | Highlights |
| --- | --- | --- |
| **Claude Code** (`claude`) | Persistent bidirectional `stream-json` | 0ms follow-up cold boot, `MCP_CONNECTION_NONBLOCKING=1`, thinking deltas, tool cards, token meter |
| **Google Antigravity** (`agy`) | Persistent ACP JSON-RPC 2.0 + `stream-json` | Warm prompt cache, live `session/set_model`, `Login via agy` terminal auth |
| **Oh My Pi (`omp`) & Pi (`pi`)** | Persistent `--mode rpc` | Live model switching, 1-click Windows NTFS junction repair, synced past sessions |
| **Codex CLI** (`codex`) | Structured `--json` stream | Reasoning steps, shell execution cards, session resume |
| **OpenCode** (`opencode`) | Structured JSON stream | Isolated OpenCode model matrix + optional per-agent API connection binding |
| **Gemini CLI · Copilot · Hermes · Qwen · Kimi · Grok · Goose · Aider · Cursor** | Auto-discovered CLI connectors | Canonical `PATH` detection, 1-click terminal login, isolated per-agent model lists |
| **BYOK Direct API & Ollama** | Native HTTP / SSE + Tool Calling | OpenAI, Anthropic, Gemini, DeepSeek, Z.ai, OpenRouter, Ollama, and custom endpoints (strictly separated from OpenCode) |

---

## Measured Footprint & Responsiveness

Measured on Windows 11 x64 (`v1.1.3` release build):

| Metric | Nakroth (`v1.1.3`) |
| --- | --- |
| **Baseline smoke RAM** (`--smoke-boot`) | `2.5 MB` |
| **Active IDE RAM** (Editor + Explorer + Terminal + AI Panel) | `~61 MB` |
| **Frame pacing target** | `120 FPS` native GPU (Direct3D 11 / Vulkan / Metal) |
| **Windows installer size** (`Nakroth-Setup-1.1.3-x64.exe`) | `31.01 MB` (includes CLI & remote server) |
| **Local slash commands** (`/status`, `/doctor`, `/cost`, `/context`, `/learn`) | `< 10 ms` (0 tokens spent) |
| **Windows Explorer Shell Registration** | `< 2 ms` native Win32 Registry FFI (0 UAC prompts) |
| **Persistent follow-up latency** (Claude / Antigravity `agy` Turn 2) | `~5.8 s` / `~6.6 s` first token (skips ~20s cold boot) |

---

## Built-in Native Viewers, Mobile Cockpit & Power Studios

Everything runs lazily on demand (0 MB until opened) inside native GPUI tabs:

- **Mobile Companion PWA**: 10-screen OLED mobile cockpit paired via ISO QR code + Custom VPS Relay (SSH `-R` / HTTPS reverse proxy) — zero API keys on phone.
- **Data & Binary**: SQLite Studio (read/write SQL bar), CSV/Parquet Grid, Hex/PE/ELF/WASM Inspector, ZIP Archive preview, Markdown/FluxDoc, Jupyter `.ipynb`.
- **DevOps & API**: REST/GraphQL/cURL Studio (`.http`), OpenAPI Explorer + mock server, Docker Cockpit, Remote VPS/SSH Explorer with `Ctrl+S` auto-upload, Port/Tunnel Manager, `.env` Vault & secret-leak guard.
- **Security & Quality**: SAST Auditor + CVSS triage, Dependency/License Auditor, CyberChef/JWT/Regex Lab, Local SQLite FTS5 Hybrid RAG, Git Commit Graph & Shadow Checkpoints with 1-click Rewind.
- **Extensions & Personalization**: Native VS Code `.vsix` Marketplace + Node Extension Host + Edge WebView2 bridge, custom background & acrylic glass, Icon Pack Mixer, Discord Rich Presence, 15-frame companion mascot + soundboard, full **EN / ID / 中文** localization, and Vim modal editing.

---

## Download & Install (`v1.1.3`)

### One-Line Quick Install
- **Windows (PowerShell)**:
  ```powershell
  irm https://github.com/ShinRyu04/Nakroth/releases/latest/download/install.ps1 | iex
  ```
- **Linux / macOS (Shell)**:
  ```sh
  curl -fsSL https://github.com/ShinRyu04/Nakroth/releases/latest/download/install.sh | sh
  ```

### Direct Packages ([Releases](https://github.com/ShinRyu04/Nakroth/releases/latest))

| Platform | Package | Install / Run |
| --- | --- | --- |
| **Windows 10/11 (x64)** | `Nakroth-Setup-1.1.3-x64.exe` | Double-click installer (adds `nakroth` / `nk` CLI, Explorer menu & optional code file associations) |
| **Windows Portable (x64)** | `Nakroth-Windows-x64-Portable.zip` | Extract anywhere and run `nakroth.exe` |
| **Linux — Ubuntu / Debian** | `nakroth_1.1.3_amd64.deb` | `sudo apt install ./nakroth_1.1.3_amd64.deb` |
| **Linux — Fedora / openSUSE / RHEL** | `nakroth-1.1.3-1.x86_64.rpm` | `sudo dnf install ./nakroth-1.1.3-1.x86_64.rpm` |
| **Linux — Universal** | `Nakroth-1.1.3-x86_64.AppImage` | `chmod +x Nakroth-1.1.3-x86_64.AppImage && ./Nakroth-1.1.3-x86_64.AppImage` |
| **macOS (Apple Silicon M1–M4)** | `Nakroth-1.1.3-arm64.dmg` / `.pkg` | Drag to Applications (or run `.pkg`); unsigned first launch: `xattr -cr /Applications/Nakroth.app` |

Verify integrity using `SHA256SUMS.txt` and `latest.json` attached to every release.

---

## Bahasa Indonesia

**Nakroth `v1.1.3`** adalah IDE AI-first dan kokpit multi-agen yang dibangun 100% murni dengan **Rust + GPUI** (tanpa Electron/Chromium) untuk Windows, Linux, dan macOS.

- **5 Mode Terpadu (`Ctrl+1`–`Ctrl+5`)**: **Editor**, **Fleet** (Fleet Classic + Multi-Agent Session Lanes lintas git worktree), **Chat** (ruang AI fullscreen + Memory Bank SQLite), **Studio** (UI Designer adaptif tema + codegen Rust GPUI/React/Vue/HTML + Mermaid Flowchart + Import Graph), dan **Creator Mode** (16 lab kreatif untuk tema, ikon, logo, palet, CSS, schema API, regex, README, Git PR, skill, dan fleet blueprint).
- **Universal AI ↔ Computer Use Bridge**: 14 alat kontrol desktop Win32 native, 7 izin granular, tombol darurat `Esc`, dan bridge HTTP lokal otomatis tersambung ke semua agen AI.
- **Koneksi per Agen + Login CLI 1-Klik**: Masuk langsung lewat terminal bawaan (`Login via agy`, `claude`, `opencode`, `omp`, `codex`, `gemini`, `pi`, `gh`) atau kaitkan koneksi BYOK API terpisah.
- **100% Bahasa Indonesia / English / 中文 (Mandarin)** di seluruh antarmuka, ditambah integrasi native Windows Explorer (`Open with Nakroth` + `Open With` aman `<2ms` tanpa UAC).
- **Unduh**: Ambil installer terbaru di [Releases](https://github.com/ShinRyu04/Nakroth/releases/latest).

---

## 中文 (Mandarin)

**Nakroth `v1.1.3`** 是一款使用 **纯 Rust + GPUI** 从零构建的原生 AI 指挥中心 IDE 与多智能体工作台（零 Electron / Chromium 占用），全面支持 Windows、Linux 和 macOS。

- **五大工作区模式 (`Ctrl+1`–`Ctrl+5`)**：**编辑器**、**舰队**（经典编队 + 独立多智能体工作树通道）、**对话**、**工作室**（自适应主题 UI 设计器 + 代码生成 + Mermaid 流程图 + 依赖图）与 **创作中心**（16 个交互式主题、图标、品牌、配色、CSS、API 模型、文档与技能工坊）。
- **通用 AI ↔ Computer Use 桥接**：内置 14 个原生 Win32 桌面工具、7 项细粒度权限与 `Esc` 急停，所有 AI 智能体均可安全调用。
- **每个智能体独立登录与连接**：支持一键在内置终端完成 `agy`、`claude`、`opencode`、`omp`、`codex`、`gemini`、`pi` 登录，并将 **OpenCode** 与 **BYOK API** 完全分离。
- **完整三语界面（英语 / 印尼语 / 简体中文）** 与原生 Windows 资源管理器集成。
- **立即下载**：前往 [Releases](https://github.com/ShinRyu04/Nakroth/releases/latest) 获取最新版安装包。

---

## License

Copyright © 2026 [ShinRyu04](https://github.com/ShinRyu04). **All Rights Reserved.**  
Official prebuilt binaries are provided for personal and evaluation use. See [LICENSE](LICENSE) for details.

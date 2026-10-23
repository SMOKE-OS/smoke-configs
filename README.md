# 🌫️ smoke-configs

Official dotfiles, desktop themes, and configurations for **[SMOKE OS](https://github.com/SMOKE-OS)**.

[![Hyprland](https://img.shields.io/badge/Compositor-Hyprland-00AAFF?style=flat&logo=wayland&logoColor=white)](https://hyprland.org/)
[![Quickshell](https://img.shields.io/badge/Shell-Quickshell-89B4FA?style=flat)](https://git.outfoxxed.me/quickshell/quickshell)
[![Terminal](https://img.shields.io/badge/Terminal-Kitty-F5A97F?style=flat&logo=kitty&logoColor=white)](https://sw.kovidgoyal.net/kitty/)
[![Status](https://img.shields.io/badge/Status-Early%20Alpha-yellow?style=flat)](https://github.com/SMOKE-OS)
[![License](https://img.shields.io/badge/License-GPLv3-blue?style=flat)](LICENSE)

---

## 📦 What's Included

```
smoke-configs/
├── .config/
│   ├── hypr/
│   │   └── hyprland.conf     # Tiling, window rules, blur/shadow decorations, keybindings
│   ├── quickshell/
│   │   └── shell.qml         # Modern QML/QtQuick status bar, time display, and widgets
│   └── kitty/
│       └── kitty.conf        # Smoke Dark color palette, Nerd Font, and window padding
├── install.sh                # Safe interactive install & backup script
└── README.md
```

---

## ⚡ Quick Install / Sync

To install or sync these configurations on an existing system:

```bash
# 1. Clone repository
git clone https://github.com/SMOKE-OS/smoke-configs.git
cd smoke-configs

# 2. Run the safe installer (automatically backs up your existing configs first)
./install.sh
```

The script creates a timestamped backup of your current setup at `~/.config.smoke-backup-<timestamp>/` so you never lose personal modifications.

---

## ⌨️ Default Keybindings Cheat Sheet

| Keybinding | Action |
| :--- | :--- |
| `SUPER + Q` | Launch Kitty terminal |
| `SUPER + SPACE` | Application Launcher (Rofi) |
| `SUPER + E` | File Manager (Thunar) |
| `SUPER + C` | Close Active Window |
| `SUPER + V` | Toggle Floating Window |
| `SUPER + 1..9` | Switch Workspace 1–9 |
| `SUPER + SHIFT + 1..9` | Move Window to Workspace 1–9 |
| `SUPER + LMB Drag` | Move Window |
| `SUPER + RMB Drag` | Resize Window |

---

## 🔄 Relationship with `smoke-iso`

* These dotfiles serve as the single source of truth for the default desktop environment in **SMOKE OS**.
* The live ISO copies these configs into [`smoke-iso/airootfs/etc/skel/.config/`](https://github.com/SMOKE-OS/smoke-iso) during the ISO build process.

---

## 🤝 Contributing

Contributions to improve widgets, color palettes, animations, and keybinding presets are welcome!

1. Fork the repository.
2. Create your feature branch (`git checkout -b feature/cool-widget`).
3. Commit your changes adhering to our minimal, bloat-free design principles.
4. Open a Pull Request.

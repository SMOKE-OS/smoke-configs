#!/usr/bin/env bash
# ---------------------------------------------------------
# 🌫️ SMOKE OS Configuration Installer & Sync Script
# ---------------------------------------------------------
set -e

CONFIGS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET_DIR="${XDG_CONFIG_HOME:-$HOME/.config}"
BACKUP_DIR="$HOME/.config.smoke-backup-$(date +%Y%m%d_%H%M%S)"

echo "=========================================================="
echo "          🌫️  SMOKE OS - Configuration Installer          "
echo "=========================================================="
echo ""
echo "Source: $CONFIGS_DIR/.config"
echo "Target: $TARGET_DIR"
echo ""

read -rp "Apply latest SMOKE OS configs to $TARGET_DIR? (y/N): " confirm
if [[ ! "$confirm" =~ ^[Yy]$ ]]; then
    echo "Aborted. No changes were made."
    exit 0
fi

echo ""
echo "📦 Backing up existing configurations to:"
echo "   $BACKUP_DIR"
mkdir -p "$BACKUP_DIR"

for item in hypr quickshell kitty; do
    if [[ -d "$TARGET_DIR/$item" ]] || [[ -f "$TARGET_DIR/$item" ]]; then
        cp -r "$TARGET_DIR/$item" "$BACKUP_DIR/"
        echo "   - Backed up $item"
    fi
done

echo ""
echo "🚀 Applying SMOKE OS configurations..."
mkdir -p "$TARGET_DIR"
cp -r "$CONFIGS_DIR/.config/"* "$TARGET_DIR/"

echo "✅ Configurations updated successfully!"
echo ""

# Reload compositor if running
if command -v hyprctl &>/dev/null && [[ -n "$HYPRLAND_INSTANCE_SIGNATURE" ]]; then
    read -rp "Reload Hyprland now? (Y/n): " reload_confirm
    if [[ ! "$reload_confirm" =~ ^[Nn]$ ]]; then
        hyprctl reload
        echo "🔄 Hyprland reloaded!"
    fi
fi

echo ""
echo "Enjoy SMOKE OS!"

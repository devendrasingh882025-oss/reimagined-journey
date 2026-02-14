#!/bin/bash
echo "🌟 Igniting GODPOWER Station..."
vncserver -kill :1 || true
rm -rf /tmp/.X1* || true
vncserver :1 -geometry 1280x720 -SecurityTypes None

echo "💾 Syncing Vault to GitHub..."
cd ~/cloud-v2
git add .
git commit -m "Auto-sync from Termux" || echo "Nothing new to save."
git push origin main || echo "Sync paused - Check internet."

echo "✅ Ready! Open VNC (127.0.0.1:5901) and dominate."

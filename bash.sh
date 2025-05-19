#!/bin/bin

python3 -m http.server 8080 &

tmate -S /tmp/tmate.sock new-session -d

tmate -S /tmp/tmate.sock wait tmate-ready

echo "=============================="
echo "✅ Tmate SSH session ready:"
tmate -S /tmp/tmate.sock display -p '#{tmate_ssh}'
echo "🌐 Web URL:"
tmate -S /tmp/tmate.sock display -p '#{tmate_web}'
echo "=============================="

while true; do
    echo "💤 Still alive: $(date)"
    sleep 300
done

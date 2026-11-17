SIZE_MB=2
FILENAME=$(head /dev/urandom | tr -dc 'a-z0-9' | head -c 10).bin
SIZE=$((SIZE_MB * 1024 * 1024))

dd if=/dev/urandom of="$FILENAME" bs=1 count=$SIZE 2>/dev/null

echo "Created $FILENAME ($SIZE bytes)"

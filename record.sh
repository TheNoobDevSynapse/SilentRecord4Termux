#!/system/bin/sh

if [ "$(id -u)" -ne 0 ]; then
    exec su -c "sh '$0' \"\$@\""
fi

if [ "$(id -u)" -ne 0 ]; then
    echo "Root is required for this script. Make sure Termux has root permission. Force stop Termux and try again."
    exit 1
fi

DIR="/sdcard/Movies/ScreenRecords"
mkdir -p "$DIR"

stty -echoctl 2>/dev/null
clear

echo "Starting screen recording loop..."
echo "Press Ctrl+C to stop."
echo "------------------------------------------------------------"

STOP=0
trap 'echo ""; echo "Stopping recording"; STOP=1; stty echoctl 2>/dev/null' INT TERM

while [ "$STOP" -eq 0 ]; do
    OUT_PATH="$DIR/record_$(date +%Y%m%d_%H%M%S).mp4"
    echo "Recording to: $OUT_PATH"
    screenrecord --time-limit 180 "$OUT_PATH"
    STATUS=$?
    if [ "$STOP" -eq 1 ]; then
        exit 0
    fi
    if [ $STATUS -ne 0 ]; then
        echo ""
        echo "screenrecord exited with error ($STATUS), stopping."
        stty echoctl 2>/dev/null
        exit 1
    fi
done

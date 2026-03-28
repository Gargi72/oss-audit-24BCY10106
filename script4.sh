#!/bin/bash
LOGFILE="/var/log/messages"
KEYWORD="error"
COUNT=0
if [ ! -f "$LOGFILE" ]; then
echo "Log file not found"
exit 1
fi
while read line; do
if echo "$line" | grep -iq "$KEYWORD"; then
COUNT=$((COUNT + 1))
fi
done < "$LOGFILE"
echo "Total '$KEYWORD' found: $COUNT"

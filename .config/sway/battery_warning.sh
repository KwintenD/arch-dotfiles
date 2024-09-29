#!/bin/bash
prev_battery_file="/tmp/prev_battery"
prev_battery=$(cat "$prev_battery_file" 2>/dev/null)
battery=$(acpi -b | grep -o '[0-9]*%' | cut -d '%' -f1)

if ((battery <= 15 && prev_battery > 15)); then
	notify-send 'Battery warning!' -u critical "The battery is almost depleted \(${battery}%\)\!"
elif ((battery <= 30 && prev_battery > 30)); then
	notify-send 'Battery warning!' "The battery level is low \(${battery}%\)."
elif ((battery >= 100 && prev_battery < 100)); then
	notify-send 'Battery' "The battery is completly charged."
fi

echo "${battery}" > "${prev_battery_file}"

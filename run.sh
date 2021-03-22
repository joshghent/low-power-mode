# If the CPU percentage is below 30% then turn on low power mode
# Otherwise the "normal" CPU functionality is ran

PERC=$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)

if [ $PERC -lt 30 ]; then
    echo "Lowering Battery Usage"
    ./low.sh
fi

if [ $PERC -gt 30 ]; then
    echo "Restoring Normal Functionality"
    ./high.sh
fi

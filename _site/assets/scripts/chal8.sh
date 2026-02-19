#!/bin/bash
# --- Helpers ---
info()    { echo -e "\033[1;34mℹ️  [INFO]\033[0m $*"; }
success() { echo -e "\033[1;32m✅ [SUCCESS]\033[0m $*"; }
warn()    { echo -e "\033[1;33m⚠️  [WARNING]\033[0m $*"; }
fatal()   { echo -e "\033[1;31m❌ [FATAL]\033[0m $*" >&2; exit 1; }

NUM_ENTRIES=100

LOGFILE="access.log"

USERS=("Arisu" "Kei" "Honami" "Haruka" "Ken" "Rize" "Touka" "Asimov" "Seras" "Walter" "Julia" "Eren" "Annie" "Edward" "Shinji" "Rei" "Ein" "Faye" "Jet" "Spike")
ENDPOINTS=("/login" "/logout" "/upload" "/download" "/settings" "/dashboard" "/404" "/admin" "/reset")
RESULTS=("SUCCESS" "FAIL" "DENIED")

# Clear old file
> "$LOGFILE"

info "Generating $NUM_ENTRIES log entries in $LOGFILE..."

for ((i=1; i<=NUM_ENTRIES; i++)); do

    # Random date in 2025
    MONTH=$(printf "%02d" $((RANDOM % 12 + 1)))
    DAY=$(printf "%02d" $((RANDOM % 28 + 1)))
    DATE="2025-$MONTH-$DAY"

    # Random time
    HOUR=$(printf "%02d" $((RANDOM % 24)))
    MIN=$(printf "%02d" $((RANDOM % 60)))
    SEC=$(printf "%02d" $((RANDOM % 60)))
    TIME="$HOUR:$MIN:$SEC"

    # Random user, endpoint, and result
    USER=${USERS[$RANDOM % ${#USERS[@]}]}
    ENDPOINT=${ENDPOINTS[$RANDOM % ${#ENDPOINTS[@]}]}
    RESULT=${RESULTS[$RANDOM % ${#RESULTS[@]}]}

    # Write log line
    echo "$DATE $TIME $USER $ENDPOINT $RESULT" >> "$LOGFILE"
done

success "Access.log created sucessfully. Location: $(realpath $LOGFILE)"


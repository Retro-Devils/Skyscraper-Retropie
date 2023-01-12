#!/bin/bash
export NCURSES_NO_UTF8_ACS=1
BACKTITLE="<-----Skyscraper Retropie----->"
sleep 1
killall emulationstation
sudo openvt -c 1 -s -f emulationstation 2>&1

function skyscraper() {
    local choice

    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title "SKYSKRAPER RETROPIE V1.00" \
            --ok-label Select --cancel-label Exit-Installer \
            --menu "CHOOSE SITE TO SCRAPE FROM" 25 50 30 \
            1 "" \
            1 "" \
            1 "" \
            1 "" \
            1 "" \
            1 "" \
            1 "" \
            2>&1 > /dev/tty)

        case "$choice" in
            1) screen-scraper ;;
            2) gamesdb   ;;
            -) no ;;
            *) break       ;;
        esac
    done
}



function screen-scraper() {
    local choice

    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title "SCREENSCRAPER SCRAPES" \
            --ok-label Select --cancel-label Exit-Installer \
            --menu "CHOOSE SYSTEM TO SCRAPE" 25 50 30 \
            1 "3DO" \
            2 "Amiga" \
            3 "Atari 2600" \
            4 "Atari 5200" \
            1 "" \
            1 "" \
            1 "" \
            1 "" \
            1 "" \
            1 "" \
            1 "" \
            1 "" \
            1 "" \
            1 "" \
            1 "" \
            1 "" \
            1 "" \
            1 "" \
            1 "" \
            1 "" \
            1 "" \
            1 "" \
            1 "" \
            1 "" \
            1 "" \
            1 "" \
            2>&1 > /dev/tty)

        case "$choice" in
            1) scrape "3do"  "screenscraper" ;;
            2) scrape  "atari2600" "screenscraper"   ;;
            -) no ;;
            *) break       ;;
        esac
    done
}


function scrape() {
/opt/retropie/supplementary/skyscraper/Skyscraper -p "$1"
/opt/retropie/supplementary/skyscraper/Skyscraper -p "$1" -s "$2"
}


skyscraper



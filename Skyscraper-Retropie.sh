#!/bin/bash
export NCURSES_NO_UTF8_ACS=1
BACKTITLE="<-----Skyscraper Retropie-----Version-1.00----Retro Devils--->"
sleep 1
killall emulationstation

function skyscraper() {
  local choice
  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title "SKYSKRAPER RETROPIE V1.00" \
      --ok-label Select --cancel-label Exit-Installer \
      --menu "CHOOSE SITE TO SCRAPE FROM" 25 50 30 \
      1 "COMING SOON --ArcadeDB" \
      2 "COMING SOON --GamesDB" \
      3 "COMING SOON --Moby Games" \
      4 "Screenscrapper" \
      2>&1 > /dev/tty)

    case "$choice" in
      1) arcade ;;
      2) gamesdb  ;;
      3) moby ;;
      4) screen-scraper ;;
      -) no ;;
      *) break    ;;
    esac
  done
}



function screen-scraper() {
  local choice

  while true; do
    choice=$(dialog --backtitle "$BACKTITLE" --title "SCREENSCRAPER SCRAPES" \
      --ok-label Select --cancel-label Exit-Installer \
      --menu "CHOOSE SYSTEM TO SCRAPE" 25 50 30 \
   1 "Actionmax" \
   2 "Amiga" \
   3 "Amigacd" \
   4 "Amstrad" \
   5 "Arcade" \
   6 "Arcadia" \
   7 "Astrocade" \
   8 "Atari800"\
   9 "Atari2600" \
   10 "Atari5200" \
   11 "Atari7800" \
   12 "AtariLynx" \
   13 "AtariST" \
   14 "Atomiswave" \
   15 "BBC Micro" \
   16 "Commadore64" \
   17 "Colecovision" \
   18 "Dragon32" \
   19 "Daphne" \
   20 "Dreamcast" \
   21 "Electron" \
   22 "Famicon" \
   23 "Famicom Disk" \
   24 "Game and Watch" \
   25 "Gameboy" \
   26 "Gameboy Advance" \
   27 "Gameboy Color" \
   28 "Gamegear" \
   29 "Intellivision" \
   30 "MarkIII" \
   31 "Mastersystem" \
   32 "Genesis/Megadrive" \
   33 "MSX" \
   34 "MSX 2" \
   35 "Nintendo 64" \
   36 "Naomi" \
   37 "Nintendo DS" \
   38 "NeoGeo" \
   40 "Neo Geo Pocket Color" \
   41 "NES" \
   42 "Openbor" \
   43 "Oric" \
   44 "Pokemini" \
   45 "PlayStation 1" \
   46 "Plug N Play" \
   47 "Pokitto" \
   48 "PSP" \
   49 "Sega Model 3" \
   50 "Sega Saturn" \
   51 "Sega Saturn Japan" \
   52 "ScummVM" \
   53 "Sega32x" \
   54 "SegaCD" \
   55 "Super Famicon" \
   56 "SG-1000" \
   57 "SNES" \
   58 "SNES MSU1" \
   59 "SuperGraffiix" \
   60 "Turbo Graffix 16/PC Engine" \
   61 "Vectrex" \
   62 "VideoPAC" \
   63 "Virtual Boy" \
   64 "VMU Dreamcast" \
   65 "Wine" \
   66 "Wonderswan Color" \
   67 "Sharp X1" \
   68 "Sharp X68000" \
   69 "ZMachine" \
   70 "ZXSpectrum" \
      2>&1 > /dev/tty)

    case "$choice" in
  1) "actionmax" "screenscraper" ;;
  2) "amiga" "screenscraper" ;;
  3) "amigacd" "screenscraper" ;;
  4) "amstradcpc" "screenscraper" ;;
  5) "arcade" "screenscraper" ;;
  6) "arcadia" "screenscraper" ;;
  7) "astrocade" "screenscraper" ;;
  8) "atari800" "screenscraper" ;;
  9) "atari2600" "screenscraper" ;;
  10) "atari5200" "screenscraper" ;;
  11) "atari7800" "screenscraper" ;;
  12) "atarilynx" "screenscraper" ;;
  13) "atarist" "screenscraper" ;;
  14) "atomiswave" "screenscraper" ;;
  15) "bbc" "screenscraper" ;;
  16) "c64" "screenscraper" ;;
  17) "coleco" "screenscraper" ;;
  18) "dragon32" "screenscraper" ;;
  19) "daphne" "screenscraper" ;;
  20) "dreamcast" "screenscraper" ;;
  21) "electron" "screenscraper" ;;
  22) "famicon" "screenscraper" ;;
  23) "fds" "screenscraper" ;;
  24) "gameandwatch" "screenscraper" ;;
  25) "gameboy" "screenscraper" ;;
  26) "gba" "screenscraper" ;;
  27) "gbc" "screenscraper" ;;
  28) "gamegear" "screenscraper" ;;
  29) "intellivision" "screenscraper" ;;
  30) "markiii" ;;
  31) "mastersystem" "screenscraper" ;;
  32) "megadrive" "screenscraper" ;;
  33) "msx" "screenscraper" ;;
  34) "msx2" "lr-bluemsx" "lr-fmsx" "----" ;;
  35) "n64" "lr-parallel-n64" "lr-mupen64plus-next" "mupen64plus" ;;
  36) "naomi" "screenscraper" ;;
  37) "nds" "screenscraper" ;;
  38) "neogeo" "screenscraper" ;;
  40) "ngpc" "screenscraper" ;;
  41) "nes" "screenscraper";;
  42) "openbo" "screenscraper" ;;
  43) "oric" "screenscraper" ;;
  44) "pokemini" "screenscraper" ;;
  45) "psx" "screenscraper" ;;
  46) "plugnplay" "screenscraper" ;;
  47) "pokitto" "screenscraper" ;;
  48) "psp" "screenscraper" ;;
  49) "model3" "screenscraper" ;;
  50) "saturn" "screenscraper" ;;
  51) "saturnjapan" "screenscraper" ;;
  52) "scummvm" "screenscraper" ;;
  53) "sega32x" "screenscraper" ;;
  54) "segacd" "screenscraper" ;;
  55) "sfc" "screenscraper" ;;
  56) "sg1000" "screenscraper" ;;
  57) "snes" "screenscraper" ;;
  58) "snes-msu1" "screenscraper" ;;
  59) "supergrafx" "screenscraper" ;;
  60) "tg16" "screenscraper" ;;
  61) "vectrex" "screenscraper" ;;
  62) "videopac" "screenscraper" ;;
  63) "virtualboy" "screenscraper" ;;
  64) "vmu" "screenscraper" ;;
  65) "wine" "screenscraper" ;;
  66) "wonderswancolor" "screenscraper" ;;
  67) "x1" "screenscraper" ;;
  68) "x68000" "screenscraper" ;;
  69) "zmachine" "screenscraper" ;;
  70) "zxspectrum" "screenscraper" ;;
      -) no ;;
      *) break  ;;
    esac
  done
}


function screenscraper() {
/opt/retropie/supplementary/skyscraper/Skyscraper -p "$1"
/opt/retropie/supplementary/skyscraper/Skyscraper -p "$1" -s "$2"
skyscrapper
}


skyscraper


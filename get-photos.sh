#!/usr/bin/env bash
# Downloads the 7 photos for "A day in the role" (day.html) from Wikimedia Commons into ./images
# Run from this folder:  bash get-photos.sh
set -u
cd "$(dirname "$0")"
mkdir -p images
UA="KishreiChutzBooth/1.0 (school project; photo download)"
BASE="https://commons.wikimedia.org/wiki/Special:FilePath"

get () {
  local out="$1" file="$2"
  if curl -fsSL -A "$UA" --retry 2 -o "images/$out" "$BASE/$file?width=1400"; then
    echo "ok    images/$out  <-  $file"
  else
    rm -f "images/$out"; echo "FAIL  $file  (the page will show a placeholder; swap in another photo)"
  fi
}

get day-1.jpg "International_Operational_Innovation_Conference,_September_2022._LII.jpg"
get day-2.jpg "IDF_Officers_visit_Supercarrier_USS_George_H._W._Bush_(CVN_77)_(32902294945).jpg"
get day-3.jpg "Party_given_by_the_IDF_spokesperson_unit_for_high_ranking_USA_officers_meeting_with_Israeli_officers_on_a_tour_in_Israel_(FL45835895).jpg"
get day-4.jpg "Juniper_Falcon_Exercise,_February_2023_(93208).jpg"
get day-5.jpg "Joint_exercise_of_the_Duvdevan_Unit_and_the_601st_Special_Forces_Group_of_the_Czech_army,_August_2017._III.jpg"
get day-6.jpg "Enduring_Lightning_Exercises,_March_2020._III.jpg"
get day-7.jpg "Blue_Flag,_2017_(38355754611).jpg"

echo
echo "Done. Open day.html (or re-upload the folder to your host) to see the photos."
echo "Photos come from Wikimedia Commons; each file's page there lists its exact license and author."

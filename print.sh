#!/bin/bash
clear
bold=$(tput bold)
normal=$(tput sgr0)

echo -e "${bold}Program to print Possible number of 12 words Combination from list of 2048 words\n${normal}"
echo -e "${bold}Writing combinations to file (output.txt)${normal}\n"
echo -e "Please wait ...\n"

IFS=$'\n' read -d '' -r -a charset < words.txt

permute(){
  (($1 == 0)) && { echo "$2"; return; }
  for char in "${charset[@]}"
  do
    permute "$((${1} - 1 ))" "$2 $char"
  done
}
permute "12" > output.txt

echo "${bold}Done${normal}"

#!/bin/bash
clear
bold=$(tput bold)
normal=$(tput sgr0)

echo -e "${bold}Program to find Possible number of 12 words Combination from list of 2048 words\n${normal}"
n="2048"
a=`seq -s "*" 1 $n |bc`
r="12"
b=`seq -s "*" 1 $r |bc`
c=$(expr "$n" - "$r")
d=`seq -s "*" 1 $c |bc`
t=$( echo " scale =0; $b *$d " | bc )
ans=$( echo " scale =0; $a /$t " | bc )

echo "Calculating ${bold}$n! / ($n - $r)!($r)!${normal} ..."
echo -e "Result = $ans possible combinations"
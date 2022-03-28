#!/bin/sh

#DeforMA main script
# This is the most stable beta version		

####################################################################
#  1. Preparation

# 1.1 Inputs

#VARIÁVEIS
echo "Hello this is DeforMA - Deformation Monitoring and Analysis"
echo "Attention: This is beta version"
echo "What type of processing? [final rapid ultra]"
read proc
echo "Type year YY"
read year
echo "Type month MM"
read month
echo "Type day DD"
read day
echo "Type gps week and day WWWWD"
read week

# 1.2 Directories, scripts and inputs

# Directories
home=$PWD

# Functions
code=$PWD/1_code/code
igs=$PWD/1_code/igs

# Inputs
igs_list=$PWD/0_data/igs_list
echo $igs_list
igs_sta=$(<$igs_list)
var=$(<temp)
echo $var
echo $igs_sta
igs_daily_ftp=$PWD/0_data/igs_daily_ftp

# 1.3 Date conversions

in_date=20${year}-${month}-${day}
doy=$(date -d "$in_date" +%j)

# Export variables
export home year month week doy igs_daily_ftp igs_sta

####################################################################
# 2. Pre-processing

# 2.1 Products
#source $code
#code_rapid "$home" "$year" "$month" "$week"

# 2.2 International RINEX
source $igs
echo "test1"
igs_daily "$home" "$year" "$doy" "$igs_daily_ftp" "$igs_sta"






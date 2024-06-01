#!/bin/bash

# Function to convert month to capitalized form and handle abbreviations/numbers
convert_month() {
  case "$1" in
    1|jan|january) echo "Jan";;
    2|feb|february) echo "Feb";;
    3|mar|march) echo "Mar";;
    4|apr|april) echo "Apr";;
    5|may) echo "May";;
    6|jun|june) echo "Jun";;
    7|jul|july) echo "Jul";;
    8|aug|august) echo "Aug";;
    9|sep|september) echo "Sep";;
    10|oct|october) echo "Oct";;
    11|nov|november) echo "Nov";;
    12|dec|december) echo "Dec";;
    *) echo "Invalid";;
  esac
}

# Function to check if a year is a leap year
is_leap_year() {
  local year=$1
  if (( year % 4 != 0 )); then
    echo "false"
  elif (( year % 400 == 0 )); then
    echo "true"
  elif (( year % 100 == 0 )); then
    echo "false"
  else
    echo "true"
  fi
}

# Ensure exactly 3 arguments are passed
if [ "$#" -ne 3 ]; then
  echo "입력값 오류"
  exit 1
fi

# Extract and convert inputs
month=$(convert_month "$1")
day=$2
year=$3

# Validate month conversion
if [ "$month" == "Invalid" ]; then
  echo "Invalid month: $1"
  echo "$1 $2 $3는 유효합니다"
  exit 1
fi

# Check if day and year are numbers
if ! [[ "$day" =~ ^[0-9]+$ ]] || ! [[ "$year" =~ ^[0-9]+$ ]]; then
  echo "Invalid day or year: $day, $year"
  echo "$1 $2 $3는 유효하지 않습니다"
  exit 1
fi

# Convert day and year to integers
day=$(($day))
year=$(($year))

# Determine the number of days in the month
case "$month" in
  Jan|Mar|May|Jul|Aug|Oct|Dec) max_day=31;;
  Apr|Jun|Sep|Nov) max_day=30;;
  Feb)
    if [ "$(is_leap_year "$year")" == "true" ]; then
      max_day=29
    else
      max_day=28
    fi
    ;;
esac

# Validate the day range
if (( day < 1 || day > max_day )); then
  echo "Invalid day range: $month has $max_day days"
  echo "$1 $2 $3는 유효하지 않습니다"
  exit 1
fi

# If everything is valid, print the date in uppercase
echo "$month $day $year"
exit 0

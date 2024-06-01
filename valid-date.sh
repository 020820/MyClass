#!/bin/bash

# 인수가 3개가 아닌 경우 오류 메시지 출력 후 종료
if [ "$#" -ne 3 ]
then
    echo "입력값 오류"
    exit 1
fi

# 월, 일, 연도 입력
input_month=$1
input_date=$2
input_year=$3

# 월 변환
case "$input_month" in
    JAN|1) month="Jan" ;;
    FEB|2) month="Feb" ;;
    MAR|3) month="Mar" ;;
    APR|4) month="Apr" ;;
    MAY|5) month="May" ;;
    JUN|6) month="Jun" ;;
    JUL|7) month="Jul" ;;
    AUG|8) month="Aug" ;;
    SEP|9) month="Sep" ;;
    OCT|10) month="Oct" ;;
    NOV|11) month="Nov" ;;
    DEC|12) month="Dec" ;;
    *) month="Invalid" ;;
esac

# 유효하지 않은 월
if [ "$month" = "Invalid" ]
then
    echo "$input_month는 유효하지 않은 월입니다."
    exit 1
fi

# 윤년을 확인
if (( (input_year % 4 == 0 && input_year % 100 != 0) || (input_year % 400 == 0) ))
then
    leap_year="true"
else
    leap_year="false"
fi

# 월 일수
case "$month" in
    Jan|Mar|May|Jul|Aug|Oct|Dec) dates=31 ;;
    Apr|Jun|Sep|Nov) dates=30 ;;
    Feb) if [ "$leap_year" = "true" ]
    then 
    dates=29
    else 
    dates=28
    fi ;;
esac

# 유효하지 않음
if (( input_date < 1 || input_date > dates ))
then
    echo "$month $input_date $input_year는 유효하지 않습니다."
    exit 1
fi

# 유효한 날짜일 경우 출력
echo "$month $input_date $input_year"

# 정상 종료
exit 0

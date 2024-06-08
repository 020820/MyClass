#!/bin/bash

# 전화번호부 파일 경로
PHONEBOOK="phonebook.txt"

# 지역번호 매핑
declare -A area_codes
area_codes["02"]="서울"
area_codes["031"]="경기"
area_codes["032"]="인천"
area_codes["051"]="부산"
area_codes["053"]="대구"

# 인수 2개 및 종료 코드
if [ "$#" -ne 2 ]
then
  echo "$0 이름 전화번호"
  exit 1
fi

name=$1
phone=$2

# 잘못된 전화번호 판별
if ! [[ $phone =~ ^[0-9]{2,4}-[0-9]{3,4}-[0-9]{4}$ ]]
then
  echo "잘못된 전화번호 입니다. 다시 입력해주세요."
  exit 1
fi

# 지역번호 지정
area_code=$(cut -d'-' -f1 <<< "$phone")
area=${area_codes[$area_code]}

# 전화번호 존재하는지 판별
exist_num=$(grep "^$name " $PHONEBOOK)

if [ -n "$exist_num" ]
# 존재 판별 코드 작성
then
  echo "이미 존재하는 이름입니다."
  
else
# 전화번호 저장하기
  echo "$name $phone $area" >> $PHONEBOOK
  echo "전화번호를 저장합니다."
fi
# 이름순으로 정렬하기
sort -o $PHONEBOOK $PHONEBOOK
exit 0

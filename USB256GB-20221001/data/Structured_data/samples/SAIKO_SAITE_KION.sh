#!/bin/bash -vx
#
# 金沢大学 大学院科目
# Kanazawa University Graduate School Subjects
# 「2022年度 スマート創成科学（第1回から第3回）」向け
# For "2022 Smart Science and Technology for Innovation(1st-3rd)"
# 気象データ処理用サンプルスクリプト
# Sample scripts for weather data processing
#
# サンプル1.最高気温、最低気温の抽出
# Sample 1. Extraction of maximum and minimum temperatures
#
# 実行方法: ./SAIKO_SAITE_KION.sh
# Execution method: . /SAIKO_SAITE_KION.sh
#
# 作成者: USP研究所 山田将誉 (m-yamada@usp-lab.com)
# Author: Masataka Yamada, USP Laboratory (m-yamada@usp-lab.com)
# 前回更新日: 2021/06/10
# Last updated: 2021/06/10
# 最終更新日: 2022/08/04 (modified by @hohno_at_kuimc)
# Last modified by @hohno_at_kuimc on 2022/08/04 (modified by @hohno_at_kuimc)
#

################################################################

# 気温のランキング付けを行う
# Rank temperatures.
# 2020年の全国の気温データ(10分単位)から
# From national temperature data (in 10-minute increments) for the year 2020
# 観測地点ごと、日ごとの最高気温、最低気温を求める
# Find the highest and lowest temperatures for each observation point and each day.
# そこから、最高気温、最低気温のTop10をそれぞれ算出する
# Calculate the top 10 highest and lowest temperatures from the data.

################################################################

export LANG=ja_JP.UTF8

################################################################

# amed_yyyy.txt データ項目 
# 1:アメダス観測所番号 2:観測年月日(yyyymmdd) 3:観測時間(hhmm) 
# 4:雨(降水強度)mm/h 5:雨(降水強度)利用フラグ 
# 6:風向 7:風向利用フラグ 8:風速m/s 9:風速利用フラグ 
# 10:気温 11:気温利用フラグ 12:日照時間(s) 13:日照時間利用フラグ 
# 14:積雪量 15:積雪量利用フラグ
# amed_yyyy.txt Data items 
# 1:AMEDAS station number 2:Observation date (yyyymmdd) 3:Observation time (hhmm) 
# 4:Rain (precipitation intensity) mm/h 5:Rain (precipitation intensity) usage flag 
# 6:Wind direction 7:Wind direction usage flag 8:Wind speed m/s 9:Wind speed usage flag 
# 10: Temperature 11: Temperature usage flag 12: Sunshine hours (s) 13: Sunshine hours usage flag 
# 14: Snow amount 15: Snow amount usage flag

# ファイル読み込み
# Read file
cat ../amedas/yeartext/amed_2020.txt		|
# 2020年のファイルを用いる
# Use file 2020

# 気温データ抜き出し
# Extract temperature data
self 1 2 3 10 11				|
# 1:アメダス観測所番号 2: 観測年月日 3:観測時間 4:気温 5:気温利用フラグ
# 1:AMeDAS observatory number 2:Observation date 3:Observation time 4:Temperature 5:Temperature usage flag

# 利用フラグ0,1,2,3（正常数値、正常数値、正常現象無し、正常現象無し）のものだけ抜き出す
# 第5フィールドの値が3以下という条件を満たすレコードのみ抽出している
# Only those with use flags 0,1,2,3 (normal value, normal value, no normal phenomenon, no normal phenomenon) are extracted
# Only records that meet the condition that the value of the fifth field is 3 or less are extracted
cond '$5 le 3'					|

# 第5フィールド(気温利用フラグ)を削除
# Delete 5th field (temperature use flag)
delf 5						> 1.temp.2020
# 1.temp.2020ファイルへの書き出しを行う
# Export to 1.temp.2020 file.
# 1:アメダス観測所番号 2: 観測年月日 3:観測時間 4:気温 
# 1: AMeDAS observatory number 2: Observation date 3: Observation time 4: Temperature 

################################################################
# 最高気温ランキングの作成
# Create maximum temperature ranking

# まずはじめに、日ごとの最高気温を求める
# First, find the maximum temperature for each day
# 先ほど書き出したファイルtemp.2020を読み込む
# Read the file temp.2020 that was written out earlier
cat 1.temp.2020					|

# 1:アメダス観測所番号 2: 観測年月日 3:観測時間 4:気温 
# 1: AMeDAS observatory number 2: Date of observation 3: Time of observation 4: Temperature 

# 気温の高い順にソート
# Sort by temperature in descending order
msort key=1n@2n@4nr				|

# 日ごとの最高気温を抽出する
# Sort by temperature in descending order
getfirst 1 2					|
# 1:アメダス観測所番号 2: 観測年月日 3:観測時間 4:最高気温
# 1: AMeDAS observatory number 2: Date of observation 3: Time of observation 4: Maximum temperature

# 最高気温のランキングを求める
# Find the ranking of highest temperatures
# 最高気温の高い順にソート
# Sort by highest temperature
msort key=4nr					|

# 最高気温の高いレコードtop10を抽出
# Extract the top 10 highest temperature records
head -n 10					|

# 気温の高い順に順位を付ける
# Rank in order of temperature
# 結果をファイル1.SAIKO_KION.2020に書き出す
# Write the results to file 1.SAIKO_KION.2020
juni 						> 1.SAIKO_KION.2020
# 1:順位 2:アメダス観測所番号 3: 観測年月日 4:観測時間 5:最高気温
# 1:Rank 2:AMeDAS observatory number 3:Date of observation 4:Time of observation 5:Maximum temperature

################################################################
# 最低気温ランキングの作成
# Create a minimum temperature ranking

# 日ごとの最低気温を求める
# Find the minimum temperature for each day
# 先ほど書き出したファイルtemp.2020を読み込む
# Read the file temp.2020 that was written out earlier
cat 1.temp.2020					|
# 1:アメダス観測所番号 2: 観測年月日 3:観測時間 4:気温 
# 1: AMeDAS observatory number 2: Date of observation 3: Time of observation 4: Temperature 

# 気温の低い順にソート
# Sort by coolest to coldest temperatures
msort key=1n@2n@4n				|

# 日ごとの最低気温を抽出する
# Extract daily minimum temperatures
getfirst 1 2					|
# 1:アメダス観測所番号 2: 観測年月日 3:観測時間 4:最低気温
# 1: AMeDAS observatory number 2: Date of observation 3: Time of observation 4: Minimum temperature

# 最低気温のランキングを求める
# Find the ranking of lowest temperatures
# 最低気温の低い順にソート
# Sort by lowest temperature
msort key=4n					|

# 気温の低いレコードtop10を抽出
# Extract the top 10 records with the lowest temperature
head -n 10					|

# 気温の低い順に順位を付ける
# Rank the temperatures in order of decreasing temperature
# 結果をファイル1.SAIKO_KION.2020に書き出す
# Write the results to file 1.SAIKO_KION.2020
juni						> 1.SAITE_KION.2020	
# 1:順位 2:アメダス観測所番号 3: 観測年月日 4:観測時間 5:最低気温
# 1: Rank 2: AMeDAS observatory number 3: Date of observation 4: Time of observation 5: Minimum temperature

# 出力ファイル
# Output file
# 1.SAIKO_KION.2020
# 1.SAITE_KION.2020

# $ cat 1.SAIKO_KION.2020
# 1:順位 2:アメダス観測所番号 3: 観測年月日 4:観測時間 5:最高気温
# 1: Rank 2: AMeDAS observatory number 3: Date of observation 4: Time of observation 5: Maximum temperature

# $ cat 1.SAITE_KION.2020
# 1:順位 2:アメダス観測所番号 3: 観測年月日 4:観測時間 5:最低気温
# 1: Rank 2: AMeDAS Observatory number 3: Date of observation 4: Time of observation 5: Minimum temperature

# これらのコマンドで結果を確認する
# Check the results with these commands

exit 0

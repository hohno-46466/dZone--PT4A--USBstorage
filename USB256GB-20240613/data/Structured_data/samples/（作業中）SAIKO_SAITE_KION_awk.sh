#!/bin/bash -vx
#
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
# 最終更新日: 2024/05/31 (modified by @mori4416)
# Last modified by @mori4416 on 2024/05/31
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
# 1:アメダス観測所番号(2:地上観測所番号) 16:観測年月日(yyyymmdd) 17:観測時間(hhmm) 
# 22:雨(降水強度)mm/h 23:雨(降水強度)利用フラグ 
# 41:風向 42:風向利用フラグ 48:風速m/s 49:風速利用フラグ 
# 51:気温 52:気温利用フラグ 59:日照時間(s) 60:日照時間利用フラグ 
# 67:積雪量 68:積雪量利用フラグ
# amed_yyyy.txt Data items 
# 1:AMEDAS Observatory number(2:Surface Observatory number) 16:Observation date (yyyymmdd) 17:Observation time (hhmm) 
# 22:Rain (precipitation intensity) mm/h 23:Rain (precipitation intensity) usage flag 
# 41:Wind direction 42:Wind direction usage flag 48:Wind speed m/s 49:Wind speed usage flag 
# 51: Temperature 52: Temperature usage flag 12: Sunshine hours (s) 13: Sunshine hours usage flag 
# 67: Snow amount 68: Snow amount usage flag

# ファイル読み込み
# Read file
zcat < ../amed_2020.txt.gz		    |
# 2020年のファイルを用いる
# Use file 2020

# 気温データ抜き出し
# Extract temperature data
# $52の利用フラグ0,1,2,3（正常数値、正常数値、正常現象無し、正常現象無し）のものだけ抜き出す
# Only those with use flags 0,1,2,3 of $52(normal value, normal value, no normal phenomenon, no normal phenomenon) are extracted
# 1.temp.2020ファイルへの書き出しを行う
# Export to 1.temp.2020 file.
awk '{if($52<=3){print $1,$16,$17,$51}}' > 1.temp.2020
# 1:アメダス観測所番号 2: 観測年月日 3:観測時間 4:気温 
# 1: AMeDAS observatory number 2: Observation date 3: Observation time 4: Temperature 

#self 1 16 17 51 52			    	|
#cond '$5 le 3'					|
#delf 5						> 1.temp.2020



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

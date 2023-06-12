#!/bin/bash -vx
#
# 金沢大学 学術メディア創成センターMONKチーム
# 気象データ処理用サンプルスクリプト
# Sample scripts for weather data processing
#
# サンプル2.平均気温の推移
# Sample 2. Average temperature
# 
# 実行方法: ./HEIKIN_KION23.sh
# Execution method: . /HEIKIN_KION23.sh
#
# 作成者: USP研究所 山田将誉 (m-yamada@usp-lab.com)
# Author: Masataka Yamada, USP Laboratory (m-yamada@usp-lab.com)
# 最終更新日: 2023/06/13 (modified by @hohno_at_kuimc)
# Last modified by @hohno_at_kuimc on 2023/06/13 (modified by @hohno_at_kuimc)
#

#####注意/Attention#####
# 本サンプルスクリプトは /data/samples で実行してください
# This sample script should be run in /data/samples

################################################################

# 年平均気温の推移を観察する
# Observe the annual average temperature trend
# 気温データを年ごとに集計し、平均値を求める処理を行う
# Aggregate temperature data by year and process to obtain average values
# 本サンプルスクリプトでは金沢の気温を抽出して処理を行っている
# In this sample script, extract and process temperatures in Kanazawa

################################################################

export LANG=ja_JP.UTF8

################################################################
# 年ごとに気温データを整理
# Organize temperature data by year

# はじめに、気温データから金沢のデータのみを抜き出している
# First, only Kanazawa data is extracted from all temperature data
# 気温のデータ項目のみを抜き出し、利用フラグが正常なデータのみを抜き出す
# Extract only temperature data items, and extract only data with normal usage flags
# 2009~2021のファイルに対して同様の処理を行い、
# Do the same process for the files 2009~2021, and
# 最後に各年のデータを一つのファイルにまとめて出力している
# The same process is applied to the 2009~2021 files, and finally, the data of each year is output in one file.


# amed_yyyy.txt データ項目 
# 1:アメダス観測所番号 2:観測年月日(yyyymmdd) 3:観測時間(hhmm) 
# 4:雨(降水強度)mm/h 5:雨(降水強度)利用フラグ 
# 6:風向 7:風向利用フラグ 8:風速m/s 9:風速利用フラグ 
# 10:気温 11:気温利用フラグ 12:日照時間(s) 13:日照時間利用フラグ 
# 14:積雪量 15:積雪量利用フラグ
# amed_yyyy.txt Data items 
# 1:AMEDAS Observatory number 2:Observation date (yyyymmdd) 3:Observation time (hhmm) 
# 4:Rain (precipitation intensity) mm/h 5:Rain (precipitation intensity) usage flag 
# 6:Wind direction 7:Wind direction usage flag 8:Wind speed m/s 9:Wind speed usage flag 
# 10: Temperature 11: Temperature usage flag 12: Sunshine hours (s) 13: Sunshine hours usage flag 
# 14: Snow amount 15: Snow amount usage flag

# for文をもちいることでdoからdoneまでの処理を繰り返すことができる
# The for statement can be used to repeat the process from do to done.

for i in 2009 2010 2011 2012 2013 2014 2015 2016 2017 2018 2019 2020 2021; do

	cat ../amedas/yeartext/amed_$i.txt	|

	# 観測所番号でデータを抜きだし
	# Extract data by Observatory number
	# 56227=金沢のデータのみ抽出
	# 56227=Only Kanazawa data is extracted
	# この番号を変更すれば他の地域の気温を抽出できる
	# Change this number to extract temperatures in other areas
	selr 1 "56227"				|

	# 気温データのフィールドを抜き出し
	# Extract temperature data fields
		self 2 3 10 11				|
	# 1: 観測年月日 2: 観測時分 3:気温 4:気温利用フラグ
	# 1: Date of observation 4: Observation Time 3: Temperature 4: Temperature usage flag

	# 利用フラグ0,1,2,3（正常数値、正常数値、正常現象無し、正常現象無し）のものだけ抜き出す
	# Extract only those with use flag 0,1,2,3 (normal value, normal value, no normal phenomenon, no normal phenomenon)
	cond '$4 le 4'				|

	delf 4
	# 1: 観測年月日 2: 観測時分 3:気温
	# 1: Date of observation 4: Observation Time 3: Temperature

done						> 2.NENGAPPI_KION.56227
# KION.観測所番号 ファイルに出力
# Output to KION.Observatory_number file
# 2009~2021までの気温データをまとめる
# Summarize temperature data from 2009~2021

################################################################
# 平均値の計算
# Calculate average

# 上で出力したファイルを読み込む
# Read the output file above
cat 2.NENGAPPI_KION.56227			|
# 1: 観測年月日 2: 観測時分 3:気温
# 1: Date of observation 4: Observation Time 3: Temperature

# 年ごとに集計するために、第1フィールドの年月日(yyyymmdd)から年(yyyy)のみを抜き出す
# Extract only the year (yyyy) from the date (yyyymmdd) in the 1st field to aggregate by year
self 1.1.4 3						|
# 1:年 2:気温
# 1:year 2:temperature

# 年ごとに気温を足す
# Add the temperature for each year
# +countオプションを指定することで、足し合わせた項目数を表示できる
# The number of items added can be displayed by specifying the +count option
# 項目数は平均値の計算に用いる
# number of items is used to calculate the average value
sm2 +count 1 1 2 2				|
# 1:年 2:カウント 3:気温
# 1: Year 2: Count 3: Temperature

# 平均気温を算出
# Calculate average temperature
lcalc '$1, $3/$2'				|
# 1:年 2:年平均気温
# 1: Year 2: Mean annual temperature

# 小数第２位を四捨五入
# Rounded to the second decimal place
marume 2.1					> 2.NEN_HEIKIN_KION.56227
# 年平均気温ファイル(NEN_HEIKIN_KION.56227)の作成
# Create annual mean temperature file (NEN_HEIKIN_KION.56227)

# 出力ファイル 2.NEN_HEIKIN_KION.56227
# Output file 2.NEN_HEIKIN_KION.56227
# 1:年 2:年平均気温
# 1: Year 2: Mean annual temperature

# $ cat 2.NEN_HEIKIN_KION.56227
# で結果を確認する
# Check the result with this command
# $ cat 2.NEN_HEIKIN_KION.56227


exit 0

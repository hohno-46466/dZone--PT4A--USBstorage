#!/bin/bash -vx
#
# 気象データ処理用サンプルスクリプト
# Sample scripts for weather data processing
#
# サンプル3.桜の開花時期
# Sample 3. Cherry blossom season
# 
# 実行方法: ./SAKURA_KAIKA.sh
# Execution method: . /SAKURA_KAIKA.sh
#
# 作成者: USP研究所 山田将誉 (m-yamada@usp-lab.com)
# Author: Masataka Yamada, USP Laboratory (m-yamada@usp-lab.com)
# 最終更新日: 2024/05/31 (modified by @mori4416)
# Last modified by @mori4416 on 2024/05/31
#

################################################################

# 桜の開花時期について
#  「２月１日以降の最高気温の積算が600度を超えると開花する」
#  「２月１日以降の平均気温の積算が400度を超えると開花する」
# という法則が知られている。気温データを積算し、実際の開花情報と比較することで
# これらの法則が実際に適用されているかどうかについて調べてみる
# There are known rules of thumb regarding when cherry blossoms bloom :
# ' Cherry blossoms bloom when the cumulative maximum temperature after February 1 exceeds 600 degrees Celsius',
# ' Cherry blossoms bloom when the cumulative average temperature after February 1 exceeds 400 degrees Celsius'.
# Determine whether these laws are actually applied by integrating temperature data 
# and comparing it with actual flowering information

# 2009年~2020年の気温データを用いて、積算気温を算出する
# Calculate the accumulated temperature using temperature data from 2009~2020
# 求めた積算気温と開花日マスタを結合
# Combine the obtained accumulated temperature and bloom date master

# 実際の桜の開花日の情報ファイル(開花日マスタ)は、KAIKA_MASTERディレクトリの下に配置している
# The information file of actual blooming date of cherry trees (blooming date master) is placed under KAIKA_MASTER directory.
# 開花日マスタは地点ごとに分割されているため、選択する観測地点に応じて使い分ける
# The bloom date master is divided by location, so you can use different locations depending on the location you choose.
# 対応する地点は「Readme_Rev.2.1.txt」に記載されている
# Corresponding locations are listed in "Readme_Rev.2.1.txt".

# サンプルスクリプトでは金沢のデータを用いている
# Sample script uses data from Kanazawa

################################################################

export LANG=ja_JP.UTF8

################################################################
# 1.データの整形
# 1. Formatting Data


# 気象データは1年間の全国のデータが1つのファイルになっている。
# Meteorological data for the whole country for one year is in one file.
# 今回はひとつの観測地点にしぼり、気温データのみを抜き出し
# This time, we will focus on one observation point and extract only temperature data.
# 各年のデータを1つのファイルにまとめる作業を行う。
# We will combine the data of each year into one file.

# for文をもちいることでdoからdoneまでの処理を繰り返すことができる
# The process from "do" to "done" can be repeated by using "for" statement.
# 最後にファイルに書き出し、各年のデータを1つのファイルにまとめている
# Finally, the data is written to a file, and the data for each year is combined into a single file.

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

for i in 2021 2022; do
#for i in 2009 2010 2011 2012 2013 2014 2015 2016 2017 2018 2019 2020 2021 2022; do

	# データの読み込みを行う
	# Load data.
	zcat < ../amed_$i.txt.gz	|

	# 観測所番号でデータの抜き出しを行う
	# Extract data by observatory station number
	# ここでは例として金沢=56227のデータを用いる
	# Here we use the data of Kanazawa=56227 as an example
	# 観測所番号の指定を変更することで、
	# You can change the observatory number to extract the data by changing it.
	# 他の地点に関しても同様の処理ができるので試してみてください
	# You can change the observatory number to another one, so please try it.
	awk '{if($1=="56227"){print $16,$17,$51,$52}}'	|
	# 気温データのフィールドを抜き出し
	# Extract temperature data fields
	# 1: 観測年月日 2:観測時間 3:気温 4:気温利用フラグ
	# 1: Date of observation 2: Time of observation 3: Temperature 4: Temperature usage flag

	# 利用フラグが正常のデータ
	# (0:正常数値、1:正常数値、2:正常現象無し、3:正常現象無し)だけ抜き出す
	# Data with normal usage flags
	# Extract only (0: normal value, 1: normal value, 2: no normal phenomenon, 3: no normal phenomenon)
	awk '{if($4<=3){print $1,$2,$3}}'				|

	# 2月1日以降のデータに限定
	# Limited to data from February 1 onward
	awk '{if($1>='${i}'0201){print $1,$2,$3}}'
	#cond '$1 ge '${i}'0201'			|
	# 1: 観測年月日 2:観測時間 3:気温
	# 1: Date of observation 2: Time of observation 3: Temperature

done						> 3a.NENGAPPI_KION.56227

################################################################
# 上で作成したNENGAPPI_KION.56227ファイルを元に作業を行う
# Work from the NENGAPPI_KION.56227 file created above
# 日ごとの最高気温を取り出す
# Extract the maximum temperature for each day

# 1: 観測年月日 2:観測時間 3:気温
# 1: Date of observation 2: Time of observation 3: Temperature
cat 3a.NENGAPPI_KION.56227			|

# 気温の高い順にソート
# Sort by temperature in descending order
sort -k 3 -nr                   	|
#msort key=1@2nr					|

# 日ごとの最高気温の取り出し
# Retrieve daily maximum temperatures
# ファイルに出力する
# Output to file
awk '!a[$1]++'						|
sort -k 1 -n						> 3a.SAIKO
#getfirst 1 1					> 3.SAIKO
# 1: 観測年月日 2:観測時間 3:最高気温
# 1: Date of observation 2: Time of observation 3: Maximum Temperature

################################################################
# 日ごとの平均気温を求める
# Find the average temperature for each day

# 1: 観測年月日 2:観測時間 3:気温
# 1: Date of observation 2: Time of observation 3: Temperature
cat 3a.NENGAPPI_KION.56227			|

# 年月日ごとの気温の平均値を求める
# Find the average temperature for each year and month.
# 第2フィールドの値の小数第２位を四捨五入
# Round the value of the second field to one decimal place
awk '{count[$1]++; sum[$1] += $3} END {for (date in sum) printf "%s %.2f\n", date, sum[date]/count[date]}'	|

# ファイルに出力する
# Output to file
sort -k 1 -n						> 3a.HEIKIN
# 1:観測年月日 2:平均気温
# 1: Date of observation 2: Average temperature

################################################################
# 最高気温、平均気温ファイルの結合を行う
# Combine the maximum and average temperature files

# 上で出力した3a.SAIKO 3a.HEIKINの２ファイルを結合する
# 3a.SAIKO 3a.HEIKIN files output above are merged.
# 観測年月日をキーとしてデータを結合する
# Combine data using the date of observation as a key.
join -1 1 -2 1 3a.SAIKO 3a.HEIKIN		|
awk '{print $1, $4, $2, $3}'			|
# 1:観測年月日 2:最高気温 3:平均気温 4:最高気温の観測時間
# 1: Date of observation 2: Maximum temperature 3: Average temperature 4: Observation time of Maximum temperature

# 年ごとに気温を積算するためのフィールドを追加
# Add field to totalize temperature by year
awk '{printf "%s %s %s %s %s\n", $1, substr($1,1,4), $2, $3, $4}'	|
self 1 1.1.4 2 3				|
# 1:観測年月日 2:観測年(yyyy) 3:最高気温 4:平均気温 5:最高気温の観測時間
# 1: Date of observation 2: Year of observation (yyyy) 3: Maximum temperature 4: Average temperature 5: Observation time of Maximum temperature

# データ積算
# Data Accumulation
# 年ごとに最高気温、平均気温を積算
# Accumulate maximum and average temperatures by year
kasan +r key=2 val=3/4				|
# 1:観測年月日 2:観測年(yyyy) 3:最高気温(積算) 4:平均気温(積算)
# 1: Date of observation 2: Year of observation (yyyy) 3: Maximum temperature (total) 4: Average temperature (total)

# フィールド削除
# Field deletion
delf 2						|
# 1:観測年月日 2:最高気温(積算) 3:平均気温(積算)
# 1: Date of observation 2: Maximum temperature (total) 3: Average temperature (total)

# 開花情報マスタと結合
# Combine with bloom information master
# KAIKA_MASTER.観測所番号.txt 1:開花日(yyyymmdd) 2:観測所番号 3:地点名
# KAIKA_MASTER.observatory_number.txt 1:bloom date(yyyymmdd) 2:observatory number 3:observatory name
# 開花日時点での累計気温情報の取得
# Obtain cumulative temperature information as of bloom date
join0 key=1 KAIKA_MASTER/KAIKA_MASTER.56227.txt -		> 3.KAIKABI_KION.56227

# 出力 KAIKABI_KION.56227
# 1:開花日 2:開花日までの積算最高気温 3:開花日までの積算平均気温
# 1: Date of bloom 2: Total maximum temperature up to the date of bloom 3: Total average temperature up to the date of bloom

# $ cat KAIKABI_KION.56227
# このコマンドで結果を確認する
# Check the results with this command

exit 0


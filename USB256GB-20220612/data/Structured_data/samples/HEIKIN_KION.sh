#!/bin/bash -vx
#
# 金沢大学 共通教育科目
# 「シェルスクリプトを用いた『大規模データ処理』演習」2021 向け
# 気象データ処理用サンプルスクリプト
#
# サンプル2.平均気温の推移
# 
# 実行方法: ./HEIKIN_KION.sh
#
# 作成者: USP研究所 山田将誉 (m-yamada@usp-lab.com)
# 最終更新日: 2021/06/10
#

#####注意#####
# 本サンプルスクリプトは /data/samples で実行してください

################################################################

# 年平均気温の推移を観察する
# 気温データを年ごとに集計し、平均値を求める処理を行う
# 本サンプルスクリプトでは金沢の気温を抽出して処理を行っている

################################################################

export LANG=ja_JP.UTF8

################################################################
# 年ごとに気温データを整理

# はじめに、気温データから金沢のデータのみを抜き出している
# 気温のデータ項目のみを抜き出し、利用フラグが正常なデータのみを抜き出す
# 2009~2020のファイルに対して同様の処理を行い、
# 最後に各年のデータを一つのファイルにまとめて出力している

# amed_yyyy.txt データ項目 
# 1:アメダス観測所番号 2:観測年月日(yyyymmdd) 3:観測時間(hhmm) 
# 4:雨(降水強度)mm/h 5:雨(降水強度)利用フラグ 
# 6:風向 7:風向利用フラグ 8:風速m/s 9:風速利用フラグ 
# 10:気温 11:気温利用フラグ 12:日照時間(s) 13:日照時間利用フラグ 
# 14:積雪量 15:積雪量利用フラグ

# for文をもちいることでdoからdoneまでの処理を繰り返すことができる

for i in 2009 2010 2011 2012 2013 2014 2015 2016 2017 2018 2019 2020; do

	cat ../amedas/yeartext/amed_$i.txt	|

	# 観測所番号でデータを抜きだし
	# 56227=金沢のデータのみ抽出
	# この番号を変更すれば他の地域の気温を抽出できる
	selr 1 "56227"				|

	# 気温データのフィールドを抜き出し
	self 2 10 11				|
	# 1: 観測年月日 2:気温 3:気温利用フラグ

	# 利用フラグ0,1,2,3（正常数値、正常数値、正常現象無し、正常現象無し）のものだけ抜き出す
	cond '$3 le 3'				|

	delf 3						
	# 1: 観測年月日 2:気温 

done						> 2.NENGAPPI_KION.56227
# KION.観測所番号 ファイルに出力
# 2009~2020までの気温データをまとめる

################################################################
# 平均値の計算

# 上で出力したファイルを読み込む
cat 2.NENGAPPI_KION.56227			|
# 1: 観測年月日 2:気温

# 年ごとに集計するために、第1フィールドの
# 年月日(yyyymmdd)から年(yyyy)のみを抜き出す
self 1.1.4 2					|
# 1:年 2:気温

# 年ごとに気温を足す
# +countオプションを指定することで、足し合わせた項目数を表示できる
# 項目数は平均値の計算に用いる
sm2 +count 1 1 2 2				|
# 1:年 2:カウント 3:気温

# 平均気温を算出
lcalc '$1, $3/$2'				|
# 1:年 2:年平均気温

# 小数第２位を四捨五入
marume 2.1					> 2.NEN_HEIKIN_KION.56227
# 年平均気温ファイル(NEN_HEIKIN_KION.56227)の作成

# 出力ファイル 2.NEN_HEIKIN_KION.56227
# 1:年 2:年平均気温

# $ cat 2.NEN_HEIKIN_KION.56227
# で結果を確認する

exit 0
################################################################################
#
# 金沢大学 学術メディア創成センター MONKチーム
# MONK Team, Emerging Media Initiative, Kanazawa University
#
# 構造化データおよびサンプルスクリプトについて
# About Structured Data and Sample Scripts
#
# 作成者・連絡先:
# Author/Contact:
#     金沢大学学術メディア創成センター 大野、森
#     Emerging Media Initiative, Kanazawa University: H.Ohno, Y.Mori
# 最終更新日   : 2024年6月13日
# Last updated : Jun 13, 2024
#
################################################################################

<<構造化データ概要/Structured Data Overview>>

この構造化データは、金沢大学学術メディア創成センターとUSP研究所との共同研究の中で、
日本の気象庁が日本各地に設置しているアメダスと地上観測所から送られてくるデータを入手し、
講義で使用できるように処理したものです。
This structured data was obtained in a joint research project 
between the Emerging Media Initiative, Kanazawa University and the USP Laboratory, 
and was processed for use in lectures by obtaining data sent from AMeDAS and surface stations 
located throughout Japan by the Japan Meteorological Agency.

データは、気象庁の外郭団体「気象業務支援センター」から購入しました。
購入したデータファイルから、講義で使用するのに十分な項目を抜き出し、テキストファイルに保存しなおしました。
The data was purchased from the Japan Meteorological Agency's affiliated organization, the Japan Meteorological Service Support Center.
From the purchased data files, we extracted sufficient items for use in lectures and re-saved them in text files.

データのフォーマット（保存形式や設置場所の情報など）は、「format」というディレクトリの中に、csvファイル形式で保存されています。
The format of the data (storage format, location information, etc.) is stored in the directory "format" in the form of csv files.

################################################################################

<<ファイル構成/File Structure>>

Structured_data
│   
├── Readme_Rev.5.0.txt このファイル
├── amed_2008.txt.gz 2008年アメダスと地上観測所1分データをgzip形式で圧縮した
├── amed_2009.txt.gz 2009年アメダスと地上観測所1分データをgzip形式で圧縮した
├── amed_2010.txt.gz 2010年アメダスと地上観測所1分データをgzip形式で圧縮した
├── amed_2011.txt.gz 2011年アメダスと地上観測所1分データをgzip形式で圧縮した
├── amed_2012.txt.gz 2012年アメダスと地上観測所1分データをgzip形式で圧縮した
├── amed_2013.txt.gz 2013年アメダスと地上観測所1分データをgzip形式で圧縮した
├── amed_2014.txt.gz 2014年アメダスと地上観測所1分データをgzip形式で圧縮した
├── amed_2015.txt.gz 2015年アメダスと地上観測所1分データをgzip形式で圧縮した
├── amed_2016.txt.gz 2016年アメダスと地上観測所1分データをgzip形式で圧縮した
├── amed_2017.txt.gz 2017年アメダスと地上観測所1分データをgzip形式で圧縮した
├── amed_2018.txt.gz 2018年アメダスと地上観測所1分データをgzip形式で圧縮した
├── amed_2019.txt.gz 2019年アメダスと地上観測所1分データをgzip形式で圧縮した
├── amed_2020.txt.gz 2020年アメダスと地上観測所1分データをgzip形式で圧縮した
├── amed_2021.txt.gz 2021年アメダスと地上観測所1分データをgzip形式で圧縮した
├── amed_2022.txt.gz 2022年アメダスと地上観測所1分データをgzip形式で圧縮した
├── format
│   ├── 00_README.md formatフォルダ内のファイル（以下のもの）の内容について記したファイル
│   ├── 01-01_Observaory_station_list.csv
│   ├── 01-01_Observaory_station_list_Eng.csv
│   ├── 01-02_Observaory_station_list_History_amedas.csv
│   ├── 01-03_Observaory_station_list_History_surface.csv
│   ├── 01-04_Observaory_station_list.xlsx
│   ├── 02-01_format_amedas.pdf
│   ├── 02-02_format_surface.pdf
│   ├── 02-03_Format_of_all_observation_datal_20231109.xlsx
│   ├── 02-04_Format_of_amed_1min_after20210302.csv
│   ├── 02-04_Format_of_amed_1min_before20210301.csv
│   ├── 02-05_Format_of_amed_10sec_after20210302.csv
│   ├── 02-05_Format_of_amed_10sec_before20210301.csv
│   ├── 02-05_Format_of_amed_HK_list_after20210302.csv
│   ├── 02-05_Format_of_amed_HK_list_before20210301.csv
│   ├── 02-06_Format_of_surf_1min.csv
│   ├── 02-07_Format_of_surf_10sec_after20150303.csv
│   ├── 02-07_Format_of_surf_10sec_before20150302-01.csv
│   ├── 02-07_Format_of_surf_10sec_before20150302-02.csv
│   ├── 02-07_Format_of_surf_HK_list_after20150303.csv
│   ├── 02-07_Format_of_surf_HK_list_before20150302.csv
│   ├── 02-08_Surface-Met-Obs_guide.pdf
│   ├── 03-01_item_list.csv
│   ├── 03-01_item_list_Eng.csv
│   ├── 03-03_item_flag.csv
│   ├── 03-03_item_flag_Eng.csv
│   ├── 03-04_weather_chart.csv
│   ├── 03-04_weather_chart02.csv
│   ├── 03-04_weather_chart02_Eng.csv
│   ├── 03-04_weather_chart_Eng.csv
│   └── memo.txt
└── samples
    ├── HEIKIN_KION_YYYY.sh 年毎の平均気温の推移（PT4A版）
    ├── HEIKIN_KION_YYYY_awk.sh 年毎の平均気温の推移（awk版）
    ├── HEIKIN_KION_YYYYMM.sh 年月毎の平均気温の推移（PT4A版）
    ├── HEIKIN_KION_YYYYMM_awk.sh 年月毎の平均気温の推移（awk版）
    ├── SAIKO_SAITE_KION.sh 最高気温、最低気温の抽出（PT4A版）
    ├── SAIKO_SAITE_KION_awk.sh 最高気温、最低気温の抽出（awk版）
    ├── SAKURA_KAIKA.sh 桜の開花時期（PT4A版）
    ├── SAKURA_KAIKA_awk.sh 桜の開花時期（awk版）
    └── KAIKA_MASTER/
        ├── KAIKA_MASTER.11016.txt 稚内
        ├── KAIKA_MASTER.12442.txt 旭川
        ├── KAIKA_MASTER.14163.txt 札幌
        ├── KAIKA_MASTER.17341.txt 網走
        ├── KAIKA_MASTER.19432.txt 釧路
        ├── KAIKA_MASTER.20432.txt 帯広
        ├── KAIKA_MASTER.21323.txt 室蘭
        ├── KAIKA_MASTER.23232.txt 函館
        ├── KAIKA_MASTER.31312.txt 青森
        ├── KAIKA_MASTER.32402.txt 秋田
        ├── KAIKA_MASTER.33431.txt 盛岡
        ├── KAIKA_MASTER.34392.txt 仙台
        ├── KAIKA_MASTER.35426.txt 山形
        ├── KAIKA_MASTER.36127.txt 福島
        ├── KAIKA_MASTER.40201.txt 水戸
        ├── KAIKA_MASTER.41277.txt 宇都宮
        ├── KAIKA_MASTER.42251.txt 前橋
        ├── KAIKA_MASTER.43056.txt 熊谷
        ├── KAIKA_MASTER.44132.txt 東京
        ├── KAIKA_MASTER.45147.txt 銚子
        ├── KAIKA_MASTER.46106.txt 横浜
        ├── KAIKA_MASTER.48156.txt 長野
        ├── KAIKA_MASTER.49142.txt 甲府
        ├── KAIKA_MASTER.50331.txt 静岡
        ├── KAIKA_MASTER.51106.txt 名古屋
        ├── KAIKA_MASTER.52586.txt 岐阜
        ├── KAIKA_MASTER.53133.txt 津
        ├── KAIKA_MASTER.54232.txt 新潟
        ├── KAIKA_MASTER.55102.txt 富山
        ├── KAIKA_MASTER.56227.txt 金沢
        ├── KAIKA_MASTER.57066.txt 福井
        ├── KAIKA_MASTER.60131.txt 彦根
        ├── KAIKA_MASTER.61111.txt 舞鶴
        ├── KAIKA_MASTER.61286.txt 京都
        ├── KAIKA_MASTER.62078.txt 大阪
        ├── KAIKA_MASTER.63518.txt 神戸
        ├── KAIKA_MASTER.64036.txt 奈良
        ├── KAIKA_MASTER.65042.txt 和歌山
        ├── KAIKA_MASTER.66408.txt 岡山
        ├── KAIKA_MASTER.67437.txt 広島
        ├── KAIKA_MASTER.68132.txt 松江
        ├── KAIKA_MASTER.69122.txt 鳥取
        ├── KAIKA_MASTER.71106.txt 徳島
        ├── KAIKA_MASTER.72086.txt 高松
        ├── KAIKA_MASTER.73166.txt 松山
        ├── KAIKA_MASTER.74181.txt 高知
        ├── KAIKA_MASTER.81428.txt 下関
        ├── KAIKA_MASTER.82182.txt 福岡
        ├── KAIKA_MASTER.83216.txt 大分
        ├── KAIKA_MASTER.84496.txt 長崎
        ├── KAIKA_MASTER.85142.txt 佐賀
        ├── KAIKA_MASTER.86141.txt 熊本
        ├── KAIKA_MASTER.87376.txt 宮崎
        ├── KAIKA_MASTER.88317.txt 鹿児島
        ├── KAIKA_MASTER.88836.txt 名瀬
        ├── KAIKA_MASTER.91197.txt 那覇
        ├── KAIKA_MASTER.92011.txt 南大東島
        ├── KAIKA_MASTER.93041.txt 宮古島
        └── KAIKA_MASTER.94081.txt 石垣島


################################################################################

<<サンプルスクリプト/Sample Script>>

このUSBメモリ内に保存されているサンプルスクリプトは、USP研究所から提供されたものです。
The sample scripts stored on this USB memory device were provided by the USP Laboratory.

samplesというディレクトリ（フォルダ）の中に、アメダスデータを用いたサンプル・スクリプトが置かれています。
In the directory (folder) named "samples," sample scripts using AMeDAS data are placed.

サンプル1. 最高気温、最低気温の抽出
Sample 1. Extraction of maximum and minimum temperatures
  年ごとに最高気温が最も高い日、最低気温が最も低い日を抽出する。
  Extract the highest and lowest maximum and minimum temperatures for each year.
  サンプルスクリプトファイル: SAIKO_SAITE_KION_awk.sh
  Sample script file: SAIKO_SAITE_KION_awk.sh
  実行方法: ./SAIKO_SAITE_KION_awk.sh
  Execution method: . /SAIKO_SAITE_KION_awk.sh

サンプル2-1. 平均気温の推移1
Sample 2-1. Trends in average temperature 1
  年平均気温を求め、その推移を確認する。
  Find the annual average temperature and check its transition.
  サンプルスクリプトファイル: HEIKIN_KION_YYYY_awk.sh
  Sample script file: HEIKIN_KION_YYYY_awk.sh
  実行方法: ./HEIKIN_KION_YYYY_awk.sh
  Execution method: . /HEIKIN_KION_YYYY_awk.sh

サンプル2-2. 平均気温の推移2
Sample 2-1. Trends in average temperature 2
  年月平均気温を求め、その推移を確認する。
  Find the month-year average temperature and check its transition.
  サンプルスクリプトファイル: HEIKIN_KION_YYYYMM_awk.sh
  Sample script file: HEIKIN_KION_YYYYMM_awk.sh
  実行方法: ./HEIKIN_KION_YYYYMM_awk.sh
  Execution method: . /HEIKIN_KION_YYYYMM_awk.sh

サンプル3. 桜の開花時期
Sample 3: Cherry blossom season
  ※桜の開花時期について
    「２月１日以降の最高気温の積算が600度を超えると開花する」
    「２月１日以降の平均気温の積算が400度を超えると開花する」
    という法則（経験則）が知られている。
    A rule of thumb is known regarding the timing of cherry blossom blooming:
    Cherry blossoms bloom
    "when the maximum temperature total after February 1 exceeds 600 degrees Celsius"
     or "when the average temperature total after February 1 exceeds 400 degrees Celsius."
    気温データを計算し、実際の開花情報と比較して、これらの法則が適用可能か調べる。
    Calculate temperature data and compare with actual bloom information to determine if these laws are applicable.
  サンプルスクリプトファイル: SAKURA_KAIKA_awk.sh
  Sample script file: SAKURA_KAIKA_awk.sh
  実行方法: ./SAKURA_KAIKA_awk.sh
  Execution method: . /SAKURA_KAIKA_awk.sh
  さくらの開花日(気象庁): https://www.data.jma.go.jp/sakura/data/sakura003_06.html
  Cherry blossom bloom date (Japan Meteorological Agency): https://www.data.jma.go.jp/sakura/data/sakura003_06.html

################################################################################

≪著作権および免責事項/Copyright and Disclaimer≫

・この媒体に含まれる数値データは、日本の著作権法では、著作権保護の対象ではありませんので、自由に利用できます。
  Numerical data stored in this USB memory device is not subject to copyright protection under Japanese copyright law,
  and may be used freely.

・この媒体に含まれるサンプルプログラム（シェルスクリプト）や技術資料は、
  USP研究所の許諾により、複製、翻訳・変形等の翻案等、自由に利用できます。
  The sample programs (shell scripts) and technical materials contained in this medium
  may be freely used, including reproduction, translation, transformation, and other adaptations,
  with the permission of the USP Laboratory.
  ただし、商用利用はできません
  However, commercial use is not permitted.

・この媒体に含まれる数値データ、サンプルプログラム（シェルスクリプト）を使用したことによって生じた
  すべての障害・損害・不具合等に関しては、
  USP研究所、金沢大学学術メディア創成センターは一切の責任を負いません。
  USP Laboratory and Emerging Media Initiative, Kanazawa University are not responsible for any failure, damage, or malfunction caused by the use of the numerical data and sample programs (shell scripts) contained in this medium.
  各自の責任においてご使用ください。
  Use at your own risk.


################################################################################

≪履歴/Update History≫

 2021年6月11日 Ver.1.0 初版
 2021年8月 5日 Ver.2.0 改訂版
 2022年6月17日 Ver.2.1 改訂版
 2022年10月1日 Ver.2.1a 改訂版
 2022年10月13日 Ver.2.2
 2023年8月3日 Ver.2.3
 2023年9月29日 Ver.3.0
 2024年5月31日 Ver.4.0
 2024年6月13日 Ver.4.1 WG改訂版

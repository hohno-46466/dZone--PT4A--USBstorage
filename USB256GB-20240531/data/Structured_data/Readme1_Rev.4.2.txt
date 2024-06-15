################################################################################
#
# 金沢大学 学術メディア創成センター MONKチーム
# MONK Team, Emerging Media Initiative, Kanazawa University
#
# USBメモリ内のビッグデータ（構造化、非構造化）およびサンプルスクリプトについて
# Big data (Structured and Unstructured) and sample scripts in USB memory device
#
# 作成者・連絡先:
# Author/Contact:
#     金沢大学学術メディア創成センター 大野、森
#     Emerging Media Initiative, Kanazawa University: H.Ohno, Y.Mori
# 最終更新日   : 2024年6月13日
# Last updated : Jun 13, 2024
#
################################################################################

<< 概要/Overview >>

講義で配布したUSBメモリに保存されているビッグデータおよびサンプルスクリプトは、
金沢大学学術メディア創成センター大野、森と、USP研究所（https://www.usp-lab.com/）との共同研究によるものです。
特に、本稿などの原案を作成していただいたUSP研究所 綿野氏、山田氏、松浦氏には深く感謝いたします。
The big data and sample scripts stored on the USB memory devices distributed at the 講義 
were the result of collaboration between H.Ohno and Y.Mori of EMI of Kanazawa University and the USP Laboratory.
In particular, We would like to express our thanks to 
Mr. Watano, Mr. Yamada, and Mr. Matsuura of the USP Laboratory, 
who prepared the original draft of these documents.

構造化データ（data/Structured_data/内の各種ファイル）と
非構造化データ（data/Unstructured_data/Tokyo2020内の各種ファイル）で219GBのサイズがあります。
Structured data (files in data/Structured_data/) and
Unstructured data (files in data/Unstructured_data/Tokyo2020) is over 219 GB in size.

これらのデータは、年月日時でファイルが分かれています。
特に構造化データは、1つのファイルあたり「6千8百万行」以上の大きさがあり、
Excelなどの表計算ソフトウェアでは処理できません。
These data were divided into files by year, month, day, and hour.
Structured data, in particular, can be over "68,000,000 lines" per file 
and cannot be processed by spreadsheet software such as Excel.

講義では、このようなビッグデータを、学生の皆さんが使用している携帯型パソコンで処理する方法を学びます。
その上で、学生の皆さんには、課題として、これらのデータを使って、
さまざまなデータ処理をし、レポートにまとめてもらいます。
In the lecture, students will learn how to process such big data on their laptops.
Then, as an assignment, students will be asked to use these data to process various data and compile them into a report.

皆さんが、この講義で学ぶ「データ処理方法」は、学生生活や研究活動、卒業後の仕事現場でも役に立ちます。
しっかりと学んでください。
The "data processing methods" you will learn in this lecture 
will be useful in your student life, in your research activities, and in the workplace after graduation.
Study it carefully.

なお、データおよびサンプルスクリプトの取扱いについては、
このファイルの最後に≪著作権および免責事項≫にまとめましたので、その内容に従って、上手に利用してください。
Please note that the handling of data and sample scripts are summarized
in the <<Copyright and Disclaimer>> at the end of this file, so please use them in accordance with its contents.


################################################################################

<<動作条件/Operating Conditions>>

・POSIXに準拠したコマンドラインインターフェースが使用できる環境であること。
  The PC environment must be able to use a POSIX-compliant command line interface (CLI / CUI).
  ※Windows11/10であれば、「Linux用Windowsサブシステム（WSL）」をインストールし、初期設定が終了していること。
    For Windows 11/10, "Windows Subsystem for Linux (WSL)" must be installed and initially configured.
  ※macOSであれば、「ターミナル（Terminal）」を使用する。
    For macOS, you must be able to use "Terminal".

・サンプルスクリプトを使用する場合は、
  最新版の Personal Tukubai for Academic（PT4A）がインストールされていること。
  The latest version of Personal Tukubai for Academic (PT4A) must be installed 
  to use sample scripts.

  ※PT4Aのインストール及び利用に必要なリソース。
    Resources required to install and use PT4A.
    ・Windows11/10のWSLの場合：メモリ8GB以上、インストール作業時のディスク空き容量 500MB以上
      For Windows11/10's WSL: 8GB or more memory, 500MB or more free disk space for installation.
    ・macOSの場合：メモリ8GB以上、インストール作業時のディスク空き容量 500MB
      For macOS: 8GB or more memory, 500MB or more free disk space for installation.


################################################################################

<<ファイル構成/File Configuration>>

Structured_data
│   
├── Readme_Rev.4.1.txt このファイル
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

<<サンプルスクリプト/Sample Scripts>>

このUSBメモリ内に保存されているサンプルスクリプトは、USP研究所から提供されたものです。
Sample scripts stored on this USB memory device were provided by the USP Laboratory.


構造化データ（Structured_data）の場合は、
samplesというディレクトリ（フォルダ）の中に、アメダスデータを用いたサンプル・スクリプトがあります。
For structured data (Structured_data),
there are several sample scripts that use AMEDAS data in the directory (folder) named samples.

まずは、data/Structured_data/samplesのディレクトリ（フォルダ）に移動して、サンプルスクリプトを確認してみてください。
First, go to the directory (folder) data/Structured_data/samples and check out the sample scripts.

USP研究所が用意してくれたサンプルスクリプト（ファイル名の最後に「.sh」がついているもの）が4つ置かれています。
In the directory, there are four sample scripts (with ".sh" at the end of the file name) provided by the USP Laboratory.


サンプル1. 最高気温、最低気温の抽出
Sample 1. Extraction of maximum and minimum temperatures
  年ごとに最高気温が最も高い日、最低気温が最も低い日を抽出する。
  Extract the highest and lowest maximum and minimum temperatures for each year.
  サンプルスクリプトファイル: SAIKO_SAITE_KION.sh / SAIKO_SAITE_KION_awk.sh
  Sample script file: SAIKO_SAITE_KION.sh / SAIKO_SAITE_KION_awk.sh
  実行方法: ./SAIKO_SAITE_KION.sh / ./SAIKO_SAITE_KION_awk.sh
  Execution method: ./SAIKO_SAITE_KION.sh / ./SAIKO_SAITE_KION_awk.sh

サンプル2-1. 平均気温の推移1
Sample 2-1. Trends in average temperature 1
  年平均気温を求め、その推移を確認する。
  Find the annual average temperature and check its transition.
  サンプルスクリプトファイル: HEIKIN_KION_YYYY.sh / HEIKIN_KION_YYYY_awk.sh
  Sample script file: HEIKIN_KION_YYYY.sh / HEIKIN_KION_YYYY_awk.sh
  実行方法: ./HEIKIN_KION_YYYY.sh / ./HEIKIN_KION_YYYY_awk.sh
  Execution method: ./HEIKIN_KION_YYYY.sh / ./HEIKIN_KION_YYYY_awk.sh

サンプル2-2. 平均気温の推移2
Sample 2-1. Trends in average temperature 2
  年月平均気温を求め、その推移を確認する。
  Find the month-year average temperature and check its transition.
  サンプルスクリプトファイル: HEIKIN_KION_YYYYMM.sh / HEIKIN_KION_YYYYMM_awk.sh
  Sample script file: HEIKIN_KION_YYYYMM.sh / HEIKIN_KION_YYYYMM_awk.sh
  実行方法: ./HEIKIN_KION_YYYYMM.sh / ./HEIKIN_KION_YYYYMM_awk.sh
  Execution method: ./HEIKIN_KION_YYYYMM.sh / ./HEIKIN_KION_YYYYMM_awk.sh

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
  サンプルスクリプトファイル: SAKURA_KAIKA_awk.sh / SAKURA_KAIKA_awk.sh
  Sample script file: SAKURA_KAIKA_awk.sh / SAKURA_KAIKA_awk.sh
  実行方法: ./SAKURA_KAIKA_awk.sh / ./SAKURA_KAIKA_awk.sh
  Execution method: ./SAKURA_KAIKA_awk.sh / ./SAKURA_KAIKA_awk.sh
  さくらの開花日(気象庁): https://www.data.jma.go.jp/sakura/data/sakura003_06.html
  Cherry blossom bloom date (Japan Meteorological Agency): https://www.data.jma.go.jp/sakura/data/sakura003_06.html

非構造化データ（Unstructured_data）の場合は、
TUTORIAL.txtというテキストファイルの中に書かれています。
For unstructured data (Unstructured_data),
sample scripts are in a text file "TUTORIAL.txt".

また、参考文献がReferencesというディレクトリ（フォルダ）の中に置かれています。
In addition, references are placed in a directory (folder) called References.


################################################################################

≪著作権および免責事項/Copyright and Disclaimer≫

・この媒体に含まれる数値データは、日本の著作権法では、著作権保護の対象ではありませんので、自由に利用できます。
  Numerical data stored in this USB memory device is not subject to copyright protection under Japanese copyright law, and may be used freely.

・この媒体に含まれるサンプルプログラム（シェルスクリプト）や技術資料は、
  USP研究所の許諾により、複製、翻訳・変形等の翻案等、自由に利用できます。
  The sample programs (shell scripts) and technical materials contained in this medium
  may be freely used, including reproduction, translation, transformation, and other adaptations,
  with the permission of the USP Laboratory.
  ただし、商用利用はできません
  However, commercial use is not permitted.

・この媒体に含まれる数値データ、サンプルプログラム（シェルスクリプト）を使用したことによって生じた
  すべての障害・損害・不具合等に関しては、
  金沢大学学術メディア創成センター、USP研究所は一切の責任を負いません。
  各自の責任においてご使用ください。
  Emerging Media Initiative, Kanazawa University and the USP Laboratory are not responsible for any failure, damage, or malfunction caused by the use of the numerical data and sample programs (shell scripts) contained in this medium.
  Use at your own risk.


################################################################################

≪履歴/Update History≫

 2021年6月11日 Ver.1.0 初版
 2021年8月 4日 Ver.2.0 改訂版
 2022年6月14日 Ver.2.1 2022年度改訂版
 2022年10月1日 Ver.2.1a 改訂版
 2022年10月13日 Ver.2.2 日本語英語併記
 2023年9月29日 Ver.3.0 改訂版
 2024年5月31日 Ver.4.0 改訂版
 2024年6月13日 Ver.4.1 WG対応に改訂
 2024年6月16日 Ver.4.2 2024年度講義用に改訂


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
#     Emerging Media Initiative, Kanazawa University: Ohno, Mori
#     USP研究所（https://www.usp-lab.com/） 綿野 <s-watano@usp-lab.com>、山田<m-yamada@usp-lab.com>、松浦 <t-matsuura@usp-lab.com>
#     Universal Shell Programming Laboratory: Watano, Yamada, Matsuura
# 最終更新日   : 2024年5月31日
# Last updated : May 31, 2024
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

<<サンプルスクリプト/Sample Script>>

このUSBメモリ内に保存されているサンプルスクリプトは、USP研究所から提供されたものです。
The sample scripts stored on this USB flash drive were provided by the USP Laboratory.

samplesというディレクトリ（フォルダ）の中に、アメダスデータを用いたサンプル・スクリプトが置かれています。
In the directory (folder) named "samples," sample scripts using AMeDAS data are placed.

サンプル1. 最高気温、最低気温の抽出
Sample 1. Extraction of maximum and minimum temperatures
  年ごとに最高気温が最も高い日、最低気温が最も低い日を抽出する。
  Extract the highest and lowest maximum and minimum temperatures for each year.
  サンプルスクリプトファイル: SAIKO_SAITE_KION.sh
  Sample script file: SAIKO_SAITE_KION.sh
  実行方法: ./SAIKO_SAITE_KION.sh
  Execution method: . /SAIKO_SAITE_KION.sh

サンプル2. 平均気温の推移
Sample 2. Trends in average temperature
  年平均気温を求め、その推移を確認する。
  Find the annual average temperature and check its transition.
  サンプルスクリプトファイル: HEIKIN_KION.sh
  Sample script file: HEIKIN_KION.sh
  実行方法: ./HEIKIN_KION.sh
  Execution method: . /HEIKIN_KION.sh

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
  サンプルスクリプトファイル: SAKURA_KAIKA.sh
  Sample script file: SAKURA_KAIKA.sh
  実行方法: ./SAKURA_KAIKA.sh
  Execution method: . /SAKURA_KAIKA.sh
  さくらの開花日(気象庁): https://www.data.jma.go.jp/sakura/data/sakura003_06.html
  Cherry blossom bloom date (Japan Meteorological Agency): https://www.data.jma.go.jp/sakura/data/sakura003_06.html

################################################################################

≪著作権および免責事項/Copyright and Disclaimer≫

・この媒体に含まれる数値データは、日本の著作権法では、著作権保護の対象ではありませんので、自由に利用できます。
  Numerical data stored in this USB flash drive is not subject to copyright protection under Japanese copyright law,
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

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
#     Emerging Media Initiative, Kanazawa University: Ohno, Mori
#     USP研究所（https://www.usp-lab.com/） 綿野 <s-watano@usp-lab.com>、山田<m-yamada@usp-lab.com>、松浦 <t-matsuura@usp-lab.com>
#     Universal Shell Programming Laboratory: Watano, Yamada, Matsuura
# 最終更新日   : 2023年10月17日
# Last updated : October 17, 2023

################################################################################

<< 概要/Overview >>

講義で配布したUSBメモリに保存されているビッグデータおよびサンプルスクリプトは、
金沢大学学術メディア創成センター大野、森と、USP研究所（https://www.usp-lab.com/）との共同研究によるものです。
The big data and sample scripts stored on the USB memory devices distributed at the lecture 
were the result of collaboration between Ohno and Mori of EMI,KU and USP Laboratory.

構造化データ（data/Structured_data/amedas内の各種ファイル）と
非構造化データ（data/Unstructured_data/Tokyo2020内の各種ファイル）で138GBのサイズがあります。
Structured data (various files in data/Structured_data/amedas) and
Unstructured data (various files in data/Unstructured_data/Tokyo2020) is over 138 GB in size.

これらのデータは、年月日時でファイルが分かれています。
特に構造化データは、1つのファイルあたり「100万行」以上の大きさがあり、
Excelなどの表計算ソフトウェアでは処理できません。
These data were divided into files by year, month, day, and hour.
Structured data, in particular, can be over "1,000,000 lines" per file 
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
  ※Windows10/11であれば、「Linux用Windowsサブシステム（WSL）」をインストールし、初期設定が終了していること。
    For Windows 10/11, "Windows Subsystem for Linux (WSL)" must be installed and initially configured.
  ※macOSであれば、「ターミナル（Terminal）」が使用できること。
    For macOS, you must be able to use "Terminal".

・サンプルスクリプトを使用する場合は、
  最新版の Personal Tukubai for Academic（PT4A）がインストールされていること。
  The latest version of Personal Tukubai for Academic (PT4A) must be installed 
  to use sample scripts.

  ※PT4Aのインストール及び利用に必要なリソース。
    Resources required to install and use PT4A.
    ・Windows10/11のWSLの場合：メモリ8GB以上、インストール作業時のディスク空き容量 500MB以上
      For Windows10/11's WSL: 8GB or more memory, 500MB or more free disk space for installation.
    ・macOSの場合：メモリ8GB以上、インストール作業時のディスク空き容量 500MB
      For macOS: 8GB or more memory, 500MB or more free disk space for installation.


################################################################################

<<ファイル構成/File Configuration>>

配布したUSBメモリ内に保存されているファイルの構成は、
USBメモリに保存されている「Readme2_tree_2023.txt／Readme2_tree_2023_JPonly.txt」で確認してください。
Please check the file composition in "Readme2_tree.txt" stored in this USB memory device.


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

USP研究所が用意してくれたサンプルスクリプト（ファイル名の最後に「.sh」がついているもの）が3つ置かれています。
In the directory you have moved to,
you will find three sample scripts (with ".sh" at the end of the file name) provided by the USP Laboratory.


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

非構造化データ（Unstructured_data）の場合は、
TUTORIAL.txtというテキストファイルの中に書かれています。
For unstructured data (Unstructured_data),
sample scripts are in a text file "TUTORIAL.txt".

また、参考文献がReferencesというディレクトリ（フォルダ）の中に置かれています。
In addition, references are placed in a directory (folder) called References.


################################################################################

≪著作権および免責事項/Copyright and Disclaimer≫

・この媒体に含まれる数値データは、日本の著作権法では、著作権保護の対象ではありませんので、自由に利用できます。
  Numerical data stored in this USB memory device is not subject to copyright protection under Japanese copyright law,
  and may be used freely.

・この媒体に含まれるサンプルプログラム（シェルスクリプト）や技術資料は、
  USP研究所の許諾により、複製、翻訳・変形等の翻案等、自由に利用できます。
  ただし、商用利用はできません
  The sample programs (shell scripts) and technical materials contained in this medium
  may be freely used, including reproduction, translation, transformation, and other adaptations,
  with the permission of the USP Laboratory.
  However, commercial use is not permitted.

・この媒体に含まれる数値データ、サンプルプログラム（シェルスクリプト）を使用したことによって生じた
  すべての障害・損害・不具合等に関しては、
  USP研究所、金沢大学学術メディア創成センターは一切の責任を負いません。
  各自の責任においてご使用ください。
  USP Laboratory and Emerging Media Initiative, Kanazawa University are not responsible for any failure, damage, or malfunction caused by the use of the numerical data and sample programs (shell scripts) contained in this medium.
  Use at your own risk.


################################################################################

≪履歴/Update History≫

 2021年6月11日 Ver.1.0 初版
 2021年8月 4日 Ver.2.0 改訂版
 2022年6月14日 Ver.2.1 2022年度改訂版
 2022年10月1日 Ver.2.1a 改訂版
 2022年10月13日 Ver.2.2 日本語英語併記
 2023年9月29日 Ver.3.0 改訂版

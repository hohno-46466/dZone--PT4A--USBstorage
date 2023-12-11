################################################################################
#
# 金沢大学 大学院科目
# Kanazawa University Graduate School Subjects
# 「2022年度 スマート創成科学（第1回から第3回）」向け
# For "2022 Smart Science and Technology for Innovation(1st-3rd)"
#
# USBメモリ内のビッグデータ（構造化、非構造化）およびサンプルスクリプトについて
# Big data (Structured and Unstructured) and sample scripts in USB flash drive
#
# 作成者・連絡先:
# Author/Contact:
#     金沢大学学術メディア創成センター 大野、森
#     Emerging Media Initiative, Kanazawa University: Ohno, Mori
# 　　USP研究所（https://www.usp-lab.com/） 綿野 <s-watano@usp-lab.com>、山田<m-yamada@usp-lab.com>、松浦 <t-matsuura@usp-lab.com>
#     Universal Shell Programming Laboratory: Watano, Yamada, Matsuura
# 最終更新日   : 2022年10月13日
# Last updated : October 13, 2022
#
################################################################################

<< 概要/Overview >>

講義で配布したUSBメモリに保存されているビッグデータおよびサンプルスクリプトは、
金沢大学学術メディア創成センター大野、森とUSP研究所との共同研究によって、
USP研究所から提供されました。
The big data and sample scripts stored on the USB flash drive distributed
at the lecture were provided by Universal Shell Programming Laboratory
in collaboration with Ohno and Mori of Emerging Media Initiative, Kanazawa University
and Universal Shell Programming Laboratory.

構造化データ（data/Structured_data/amedas内の各種ファイル）と
非構造化データ（data/Unstructured_data/Tokyo2020内の各種ファイル）で200GBのサイズがあります。
Structured data (various files in data/Structured_data/amedas) and
Unstructured data (various files in data/Unstructured_data/Tokyo2020) is over 200 GB in size.

これらのデータは、年月日などでファイルが分かれていますが、1つのファイルあたり「100万行」以上の大きさがあり、
Excelなどの表計算ソフトウェアでは処理できません。
These data are divided into files by date and time, etc.,
but each file is over "1 million rows" in size
and cannot be processed by spreadsheet software such as Excel.


講義では、このようなビッグデータを、学生の皆さんが使用している携帯型パソコンで処理する方法を学び、
これらのデータを使って、さまざまなデータ処理をしてもらいます。
In the lecture, you will learn how to process this big data on your laptop computer.
Then, you will be asked to use this big data to process various data.

この講義で学ぶ方法は、皆さんの学生生活や研究活動でも役に立ちますので、しっかりと学んでください。
The data processing methods you will learn in the lecture will be useful in your various activities,
so please learn them well.

なお、データおよびサンプルスクリプトの取扱いについては、
このファイルの最後に≪著作権および免責事項≫にまとめましたので、その内容に従って、上手に利用してください。
Please note that the handling of data and sample scripts are summarized
in the <<Copyright and Disclaimer>> at the end of this file, so please use them in accordance with its contents.


#############################

<<動作条件/Operating Conditions>>

・POSIXに準拠したコマンドラインインターフェースが使用できる環境であること。
  The PC environment must be able to use a POSIX-compliant command line interface (CLI / CUI).
　※Windows10/11であれば、「Linux用Windowsサブシステム（WSL）」をインストールし、初期設定が終了していること。
    For Windows 10/11, "Windows Subsystem for Linux (WSL)" must be installed and initially configured.
　※macOSであれば、「ターミナル（Terminal）」が使用できること。
    For macOS, you must be able to use "Terminal".

・2022年度版 Personal Tukubai for Academic（PT4A）がインストールされていること。
  Personal Tukubai for Academic (PT4A) for the year 2022 must be installed.

　※PT4Aのインストール及び利用に必要なリソース。
    Resources required to install and use PT4A.
　　・Windows10/11のWSLの場合：メモリ8GB以上、インストール作業時のディスク空き容量 500MB以上
      For Windows10/11's WSL: 8GB or more memory, 500MB or more free disk space for installation.
　　・macOSの場合：メモリ8GB以上、インストール作業時のディスク空き容量 500MB
      For macOS: 8GB or more memory, 500MB or more free disk space for installation.


#############################

<<ファイル構成/File Configuration>>

配布したUSBメモリ内に保存されているファイルの構成は、
USBメモリに保存されている「Readme2_tree.txt」で確認してください。
Please check the file composition in "Readme2_tree.txt" stored in this USB flash drive.

#############################

<<サンプルスクリプト/Sample Scripts>>

このUSBメモリ内に保存されているサンプルスクリプトは、USP研究所から提供されたものです。
Sample scripts stored on this USB flash drive were provided by the USP Laboratory.


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


#############################

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

#############################

≪履歴/Update History≫

 2021年6月11日 Ver.1.0 初版
 2021年8月 4日 Ver.2.0 改訂版
 2022年6月14日 Ver.2.1 2022年度改訂版
 2022年10月1日 Ver.2.1a 改訂版
 2022年10月13日 Ver.2.2 日本語英語併記

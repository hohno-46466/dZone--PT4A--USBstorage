################################################################################
#
# 金沢大学 大学院科目
# Kanazawa University Graduate School Subjects
# 「2022年度 スマート創成科学（第1回から第3回）」向け
# For "2022 Smart Science and Technology for Innovation(1st-3rd)"
#
# USBメモリ内のビッグデータ（構造化、非構造化）およびサンプルスクリプトについて
# Big data (Structured and Unstructured) and sample scripts in USB memory stick
#
# 作成者・連絡先: 
# Author/Contact: 
#     金沢大学学術メディア創成センター 大野、森
#     Emerging Media Initiative, Kanazawa University: Ohno, Mori
# 　　USP研究所（https://www.usp-lab.com/） 綿野 <s-watano@usp-lab.com>、山田<m-yamada@usp-lab.com>、松浦 <t-matsuura@usp-lab.com>
#     Universal Shell Programming Laboratory: Watano, Yamada, Matsuura
# 最終更新日   : 2022年10月12日
# Last updated : October 12, 2022
#
################################################################################

<< 概要/Overview >>

講義で配布したUSBメモリに保存されているビッグデータおよびサンプルスクリプトは、
金沢大学学術メディア創成センター大野、森とUSP研究所との共同研究によって、
USP研究所から提供されました。
The big data and sample scripts stored on the USB memory stick distributed 
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

この講義で学ぶ方法は、皆さんの学生生活や研究活動でも役に立ちますので、しっかりと学んでください。

なお、データおよびサンプルスクリプトの取扱いについては、
このファイルの最後に≪著作権および免責事項≫にまとめましたので、その内容に従って、上手に利用してください。


#############################

<<動作条件>>

・POSIXに準拠したコマンドラインインターフェースが使用できる環境であること。
　※Windows10/11であれば、「Linux用Windowsサブシステム（WSL）」が有効で、Microsoft Storeから「Ubuntu」をダウンロードされ、初期設定が終了していること。
　※macOSであれば、「ターミナル（Terminal）」が使用できること。

・2022年度版 Personal Tukubai for Academic（PT4A）がインストールされていること。
　※PT4Aのインストール及び利用に必要なリソース。
　　・Windows10/11のWSLの場合：メモリ8GB以上、インストール作業時のディスク空き容量 500MB以上
　　・macOSの場合：メモリ8GB以上、インストール作業時のディスク空き容量 500MB


#############################

<<ファイル構成>>

配布したUSBメモリ内に保存されているファイルの構成は、
USBメモリに保存されている「Readme2_tree.txt」で確認してください。


#############################

<<サンプルスクリプト>>

このUSBメモリ内に保存されているサンプルスクリプトは、USP研究所から提供されたものです。


定型データ（Structured_data）の場合は、
samplesというディレクトリ（フォルダ）の中に、アメダスデータを用いたサンプル・スクリプトが置かれています。
まずは、data/Structured_data/samplesのディレクトリ（フォルダ）に移動して、サンプルスクリプトを確認してみてください。

USP研究所が用意してくれたサンプルスクリプト（ファイル名の最後に「.sh」がついているもの）が3つ置かれています。

サンプル1. 最高気温、最低気温の抽出
　年ごとに最高気温が最も高い日、最低気温が最も低い日を抽出する。
　サンプルスクリプトファイル: SAIKO_SAITE_KION.sh
　実行方法: ./SAIKO_SAITE_KION.sh

サンプル2. 平均気温の推移
　年平均気温を求め、その推移を確認する。
　サンプルスクリプトファイル: HEIKIN_KION.sh
　実行方法: ./HEIKIN_KION.sh

サンプル3. 桜の開花時期
　※桜の開花時期について
　　　「２月１日以降の最高気温の積算が600度を超えると開花する」
　　　「２月１日以降の平均気温の積算が400度を超えると開花する」
　　という法則（経験則）が知られている。
　　気温データを積算し、実際の開花情報と比較することで、これらの法則が実際に適用されているかどうかについて調べる。
　サンプルスクリプトファイル: SAKURA_KAIKA.sh
　実行方法: ./SAKURA_KAIKA.sh
　さくらの開花日(気象庁): https://www.data.jma.go.jp/sakura/data/sakura003_06.html


非定型データ（Unstructured_data）の場合は、
TUTORIAL.txtというテキストファイルの中に書かれています。
また、参考文献がReferencesというディレクトリ（フォルダ）の中に置かれています。


#############################

≪著作権および免責事項≫

・この媒体に含まれる数値データは、日本の著作権法では、著作権保護の対象ではありませんので、自由に利用できます。

・この媒体に含まれるサンプルプログラム（シェルスクリプト）や技術資料は、
  USP研究所の許諾により、複製、翻訳・変形等の翻案等、自由に利用できます。
  ただし、商用利用はできません

・この媒体に含まれる数値データ、サンプルプログラム（シェルスクリプト）を使用したことによって生じた
　すべての障害・損害・不具合等に関しては、
　USP研究所、金沢大学学術メディア創成センターは一切の責任を負いません。
  各自の責任においてご使用ください。


#############################

≪履歴≫

 2021年6月11日 Ver.1.0 初版
 2021年8月 4日 Ver.2.0 改訂版
 2022年6月14日 Ver.2.1 2022年度改訂版
 2022年10月11日 Ver.2.2



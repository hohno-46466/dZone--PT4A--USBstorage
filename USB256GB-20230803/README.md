# dZone--PT4A--USBstorage

USB storage skelton for PT4A lectures (USB256GB-20230803 Rev1.1)

### Last update: Thu Oct 03 13:56:40 JST 202 by @mori4416

PT4A を用いた大規模データ処理演習で使用する USB メモリ（2023年8月版）の骨格（データファイル以外）は以下の通り
（表記の末尾が "/" で終わっているのはディレクトリ、それ以外はファイルである）。

    (USBメモリ配布前に改訂予定あり）

    ./USB256GB-20230803
     ├──  PT4A/
     │   └──  README.md
     ├──  README.md
     ├──  Readme1_Rev.2.1_JPonly.txt
     ├──  Readme1_Rev.2.2.txt
     ├──  Readme2_tree_2023.txt
     ├──  Readme3_USB_MOUNT_REV.2.1_JPonly.txt
     ├──  Readme3_USB_MOUNT_REV.2.2.txt
     ├──  Readme4_PT4A_REV.2.4.txt
     ├──  Readme4_PT4A_REV.2.4_JPonly.txt
     └──  data/
         ├──  Structured_data/
         │   ├──  Readme_Rev.2.3.txt
         │   ├──  format/
         │   │   ├──  amed_item_flag.csv
         │   │   ├──  amed_item_flag_Eng.csv
         │   │   ├──  amed_item_list.csv
         │   │   ├──  amed_item_list_Eng.csv
         │   │   ├──  amed_list.csv
         │   │   ├──  amed_list_Eng.csv
         │   │   └──  format_amedas.pdf
         │   └──  samples/
         │       ├──  HEIKIN_KION.sh
         │       ├──  HEIKIN_KION23.sh
         │       ├──  KAIKA_MASTER/
         │       │   ├──  KAIKA_MASTER.11016.txt
         │       │   ├──  KAIKA_MASTER.12442.txt
         │       │   ├──  KAIKA_MASTER.14163.txt
         │       │   ├──  KAIKA_MASTER.17341.txt
         │       │   ├──  KAIKA_MASTER.19432.txt
         │       │   ├──  KAIKA_MASTER.20432.txt
         │       │   ├──  KAIKA_MASTER.21323.txt
         │       │   ├──  KAIKA_MASTER.23232.txt
         │       │   ├──  KAIKA_MASTER.31312.txt
         │       │   ├──  KAIKA_MASTER.32402.txt
         │       │   ├──  KAIKA_MASTER.33431.txt
         │       │   ├──  KAIKA_MASTER.34392.txt
         │       │   ├──  KAIKA_MASTER.35426.txt
         │       │   ├──  KAIKA_MASTER.36127.txt
         │       │   ├──  KAIKA_MASTER.40201.txt
         │       │   ├──  KAIKA_MASTER.41277.txt
         │       │   ├──  KAIKA_MASTER.42251.txt
         │       │   ├──  KAIKA_MASTER.43056.txt
         │       │   ├──  KAIKA_MASTER.44132.txt
         │       │   ├──  KAIKA_MASTER.45147.txt
         │       │   ├──  KAIKA_MASTER.46106.txt
         │       │   ├──  KAIKA_MASTER.48156.txt
         │       │   ├──  KAIKA_MASTER.49142.txt
         │       │   ├──  KAIKA_MASTER.50331.txt
         │       │   ├──  KAIKA_MASTER.51106.txt
         │       │   ├──  KAIKA_MASTER.52586.txt
         │       │   ├──  KAIKA_MASTER.53133.txt
         │       │   ├──  KAIKA_MASTER.54232.txt
         │       │   ├──  KAIKA_MASTER.55102.txt
         │       │   ├──  KAIKA_MASTER.56227.txt
         │       │   ├──  KAIKA_MASTER.57066.txt
         │       │   ├──  KAIKA_MASTER.60131.txt
         │       │   ├──  KAIKA_MASTER.61111.txt
         │       │   ├──  KAIKA_MASTER.61286.txt
         │       │   ├──  KAIKA_MASTER.62078.txt
         │       │   ├──  KAIKA_MASTER.63518.txt
         │       │   ├──  KAIKA_MASTER.64036.txt
         │       │   ├──  KAIKA_MASTER.65042.txt
         │       │   ├──  KAIKA_MASTER.66408.txt
         │       │   ├──  KAIKA_MASTER.67437.txt
         │       │   ├──  KAIKA_MASTER.68132.txt
         │       │   ├──  KAIKA_MASTER.69122.txt
         │       │   ├──  KAIKA_MASTER.71106.txt
         │       │   ├──  KAIKA_MASTER.72086.txt
         │       │   ├──  KAIKA_MASTER.73166.txt
         │       │   ├──  KAIKA_MASTER.74181.txt
         │       │   ├──  KAIKA_MASTER.81428.txt
         │       │   ├──  KAIKA_MASTER.82182.txt
         │       │   ├──  KAIKA_MASTER.83216.txt
         │       │   ├──  KAIKA_MASTER.84496.txt
         │       │   ├──  KAIKA_MASTER.85142.txt
         │       │   ├──  KAIKA_MASTER.86141.txt
         │       │   ├──  KAIKA_MASTER.87376.txt
         │       │   ├──  KAIKA_MASTER.88317.txt
         │       │   ├──  KAIKA_MASTER.88836.txt
         │       │   ├──  KAIKA_MASTER.91197.txt
         │       │   ├──  KAIKA_MASTER.92011.txt
         │       │   ├──  KAIKA_MASTER.93041.txt
         │       │   └──  KAIKA_MASTER.94081.txt
         │       ├──  SAIKO_SAITE_KION.sh
         │       └──  SAKURA_KAIKA.sh
         └──  Unstructured_data/
             ├──  README.txt
             ├──  References/
             │   ├──  kemotw.pdf
             │   └──  kemotw2.pdf
             └──  TUTORIAL.txt
     
     9 directories, 86 files (Thu Oct 03 13:56:40 JST 2023)

※KAIKA_MASTERないのテキストファイルには、2022年の開花情報はまだ入っていない。

%%%%

実際に配布した USB メモリには、上記のディレクトリとファイルに加え、大規模データ処理演習に供する定形および非定形のデータが以下の場所に格納されている。

・定形データ： ./USB256GB-20221001/data/Structured_data/amedas

・非定形データ： ./USB256GB-20221001/data/Unstructured_data/Tokyo2020

Note:	url = https://github.com/hohno-46466/dZone--PT4A--USBstorage

Note:	url = git@github.com:hohno-46466/dZone--PT4A--USBstorage.git

-EOF-

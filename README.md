# GitHub/dZone--PT4A--USBstorage

USB storage skelton for PT4A lectures

PT4A を用いた大規模データ処理演習で配布する USB メモリの骨格（ただしデータを除く）

このディレクトリ内の任意の USBメモリイメージをコピーし，そこに別途用意したデータを追記することで「大規模データ処理演習用のUSBメモリ」ができあがる

これをマスターとして必要数を確保する場合は，適宜 USBメモリ複製機などを使うとよい．

    ./dZone--PT4A--USBstorage
     ├──  README.md
     ├──  USB256GB-20240531/
     │   ├──  Readme1_Rev.4.2.txt
     │   ├──  Readme2_tree_2024.txt
     │   ├──  Readme3_USB_MOUNT_REV.3.3.txt
     │   ├──  Readme4_PT4A_REV.3.3.txt
     │   ├──  _USB256GB-20240531_
     │   └──  data/
     │       ├──  Structured_data/
     │       │   ├──  Readme1_Rev.4.2.txt
     │       │   ├──  format/
     │       │   │   ├──  00_README.md
     │       │   │   ├──  01-01_Observaory_station_list.csv
     │       │   │   ├──  01-01_Observaory_station_list_Eng.csv
     │       │   │   ├──  01-02_Observaory_station_list_History_amedas.csv
     │       │   │   ├──  01-03_Observaory_station_list_History_surface.csv
     │       │   │   ├──  01-04_Observaory_station_list.xlsx
     │       │   │   ├──  02-01_format_amedas.pdf
     │       │   │   ├──  02-02_format_surface.pdf
     │       │   │   ├──  02-03_Format_of_all_observation_datal_20231109.xlsx
     │       │   │   ├──  02-04_Format_of_amed_1min_after20210302.csv
     │       │   │   ├──  02-04_Format_of_amed_1min_before20210301.csv
     │       │   │   ├──  02-05_Format_of_amed_10sec_after20210302.csv
     │       │   │   ├──  02-05_Format_of_amed_10sec_before20210301.csv
     │       │   │   ├──  02-05_Format_of_amed_HK_list_after20210302.csv
     │       │   │   ├──  02-05_Format_of_amed_HK_list_before20210301.csv
     │       │   │   ├──  02-06_Format_of_surf_1min.csv
     │       │   │   ├──  02-07_Format_of_surf_10sec_after20150303.csv
     │       │   │   ├──  02-07_Format_of_surf_10sec_before20150302-01.csv
     │       │   │   ├──  02-07_Format_of_surf_10sec_before20150302-02.csv
     │       │   │   ├──  02-07_Format_of_surf_HK_list_after20150303.csv
     │       │   │   ├──  02-07_Format_of_surf_HK_list_before20150302.csv
     │       │   │   ├──  02-08_Surface-Met-Obs_guide.pdf
     │       │   │   ├──  03-01_item_list.csv
     │       │   │   ├──  03-01_item_list_Eng.csv
     │       │   │   ├──  03-03_item_flag.csv
     │       │   │   ├──  03-03_item_flag_Eng.csv
     │       │   │   ├──  03-04_weather_chart.csv
     │       │   │   ├──  03-04_weather_chart02.csv
     │       │   │   ├──  03-04_weather_chart02_Eng.csv
     │       │   │   ├──  03-04_weather_chart_Eng.csv
     │       │   │   └──  memo.txt
     │       │   └──  samples/
     │       │       ├──  HEIKIN_KION_YYYY.sh
     │       │       ├──  HEIKIN_KION_YYYYMM.sh
     │       │       ├──  HEIKIN_KION_YYYYMM_awk.sh
     │       │       ├──  HEIKIN_KION_YYYY_awk.sh
     │       │       ├──  KAIKA_MASTER/
     │       │       │   ├──  KAIKA_MASTER.11016.txt
     │       │       │   ├──  KAIKA_MASTER.12442.txt
     │       │       │   ├──  KAIKA_MASTER.14163.txt
     │       │       │   ├──  KAIKA_MASTER.17341.txt
     │       │       │   ├──  KAIKA_MASTER.19432.txt
     │       │       │   ├──  KAIKA_MASTER.20432.txt
     │       │       │   ├──  KAIKA_MASTER.21323.txt
     │       │       │   ├──  KAIKA_MASTER.23232.txt
     │       │       │   ├──  KAIKA_MASTER.31312.txt
     │       │       │   ├──  KAIKA_MASTER.32402.txt
     │       │       │   ├──  KAIKA_MASTER.33431.txt
     │       │       │   ├──  KAIKA_MASTER.34392.txt
     │       │       │   ├──  KAIKA_MASTER.35426.txt
     │       │       │   ├──  KAIKA_MASTER.36127.txt
     │       │       │   ├──  KAIKA_MASTER.40201.txt
     │       │       │   ├──  KAIKA_MASTER.41277.txt
     │       │       │   ├──  KAIKA_MASTER.42251.txt
     │       │       │   ├──  KAIKA_MASTER.43056.txt
     │       │       │   ├──  KAIKA_MASTER.44132.txt
     │       │       │   ├──  KAIKA_MASTER.45147.txt
     │       │       │   ├──  KAIKA_MASTER.46106.txt
     │       │       │   ├──  KAIKA_MASTER.48156.txt
     │       │       │   ├──  KAIKA_MASTER.49142.txt
     │       │       │   ├──  KAIKA_MASTER.50331.txt
     │       │       │   ├──  KAIKA_MASTER.51106.txt
     │       │       │   ├──  KAIKA_MASTER.52586.txt
     │       │       │   ├──  KAIKA_MASTER.53133.txt
     │       │       │   ├──  KAIKA_MASTER.54232.txt
     │       │       │   ├──  KAIKA_MASTER.55102.txt
     │       │       │   ├──  KAIKA_MASTER.56227.txt
     │       │       │   ├──  KAIKA_MASTER.57066.txt
     │       │       │   ├──  KAIKA_MASTER.60131.txt
     │       │       │   ├──  KAIKA_MASTER.61111.txt
     │       │       │   ├──  KAIKA_MASTER.61286.txt
     │       │       │   ├──  KAIKA_MASTER.62078.txt
     │       │       │   ├──  KAIKA_MASTER.63518.txt
     │       │       │   ├──  KAIKA_MASTER.64036.txt
     │       │       │   ├──  KAIKA_MASTER.65042.txt
     │       │       │   ├──  KAIKA_MASTER.66408.txt
     │       │       │   ├──  KAIKA_MASTER.67437.txt
     │       │       │   ├──  KAIKA_MASTER.68132.txt
     │       │       │   ├──  KAIKA_MASTER.69122.txt
     │       │       │   ├──  KAIKA_MASTER.71106.txt
     │       │       │   ├──  KAIKA_MASTER.72086.txt
     │       │       │   ├──  KAIKA_MASTER.73166.txt
     │       │       │   ├──  KAIKA_MASTER.74181.txt
     │       │       │   ├──  KAIKA_MASTER.81428.txt
     │       │       │   ├──  KAIKA_MASTER.82182.txt
     │       │       │   ├──  KAIKA_MASTER.83216.txt
     │       │       │   ├──  KAIKA_MASTER.84496.txt
     │       │       │   ├──  KAIKA_MASTER.85142.txt
     │       │       │   ├──  KAIKA_MASTER.86141.txt
     │       │       │   ├──  KAIKA_MASTER.87376.txt
     │       │       │   ├──  KAIKA_MASTER.88317.txt
     │       │       │   ├──  KAIKA_MASTER.88836.txt
     │       │       │   ├──  KAIKA_MASTER.91197.txt
     │       │       │   ├──  KAIKA_MASTER.92011.txt
     │       │       │   ├──  KAIKA_MASTER.93041.txt
     │       │       │   └──  KAIKA_MASTER.94081.txt
     │       │       ├──  SAIKO_SAITE_KION.sh
     │       │       ├──  SAIKO_SAITE_KION_awk.sh
     │       │       ├──  SAKURA_KAIKA.sh
     │       │       └──  SAKURA_KAIKA_awk.sh
     │       └──  Unstructured_data/
     │           ├──  README.txt
     │           ├──  References/
     │           │   ├──  kemotw.pdf
     │           │   └──  kemotw2.pdf
     │           ├──  TUTORIAL.txt
     │           └──  TUTORIAL_JPonly.txt
     ├──  USB256GB-20240613/
     │   ├──  Readme1_Rev.4.1.txt
     │   ├──  Readme2_tree_2024.txt
     │   ├──  Readme3_USB_MOUNT_REV.3.2.txt
     │   ├──  _USB256GB-20240613_
     │   └──  data/
     │       ├──  Structured_data/
     │       │   ├──  Readme_Rev.4.1.txt
     │       │   ├──  format/
     │       │   │   ├──  00_README.md
     │       │   │   ├──  01-01_Observaory_station_list.csv
     │       │   │   ├──  01-01_Observaory_station_list_Eng.csv
     │       │   │   ├──  01-02_Observaory_station_list_History_amedas.csv
     │       │   │   ├──  01-03_Observaory_station_list_History_surface.csv
     │       │   │   ├──  01-04_Observaory_station_list.xlsx
     │       │   │   ├──  02-01_format_amedas.pdf
     │       │   │   ├──  02-02_format_surface.pdf
     │       │   │   ├──  02-03_Format_of_all_observation_datal_20231109.xlsx
     │       │   │   ├──  02-04_Format_of_amed_1min_after20210302.csv
     │       │   │   ├──  02-04_Format_of_amed_1min_before20210301.csv
     │       │   │   ├──  02-05_Format_of_amed_10sec_after20210302.csv
     │       │   │   ├──  02-05_Format_of_amed_10sec_before20210301.csv
     │       │   │   ├──  02-05_Format_of_amed_HK_list_after20210302.csv
     │       │   │   ├──  02-05_Format_of_amed_HK_list_before20210301.csv
     │       │   │   ├──  02-06_Format_of_surf_1min.csv
     │       │   │   ├──  02-07_Format_of_surf_10sec_after20150303.csv
     │       │   │   ├──  02-07_Format_of_surf_10sec_before20150302-01.csv
     │       │   │   ├──  02-07_Format_of_surf_10sec_before20150302-02.csv
     │       │   │   ├──  02-07_Format_of_surf_HK_list_after20150303.csv
     │       │   │   ├──  02-07_Format_of_surf_HK_list_before20150302.csv
     │       │   │   ├──  02-08_Surface-Met-Obs_guide.pdf
     │       │   │   ├──  03-01_item_list.csv
     │       │   │   ├──  03-01_item_list_Eng.csv
     │       │   │   ├──  03-03_item_flag.csv
     │       │   │   ├──  03-03_item_flag_Eng.csv
     │       │   │   ├──  03-04_weather_chart.csv
     │       │   │   ├──  03-04_weather_chart02.csv
     │       │   │   ├──  03-04_weather_chart02_Eng.csv
     │       │   │   ├──  03-04_weather_chart_Eng.csv
     │       │   │   └──  memo.txt
     │       │   └──  samples/
     │       │       ├──  HEIKIN_KION_YYYY.sh
     │       │       ├──  HEIKIN_KION_YYYYMM.sh
     │       │       ├──  HEIKIN_KION_YYYYMM_awk.sh
     │       │       ├──  HEIKIN_KION_YYYY_awk.sh
     │       │       ├──  KAIKA_MASTER/
     │       │       │   ├──  KAIKA_MASTER.11016.txt
     │       │       │   ├──  KAIKA_MASTER.12442.txt
     │       │       │   ├──  KAIKA_MASTER.14163.txt
     │       │       │   ├──  KAIKA_MASTER.17341.txt
     │       │       │   ├──  KAIKA_MASTER.19432.txt
     │       │       │   ├──  KAIKA_MASTER.20432.txt
     │       │       │   ├──  KAIKA_MASTER.21323.txt
     │       │       │   ├──  KAIKA_MASTER.23232.txt
     │       │       │   ├──  KAIKA_MASTER.31312.txt
     │       │       │   ├──  KAIKA_MASTER.32402.txt
     │       │       │   ├──  KAIKA_MASTER.33431.txt
     │       │       │   ├──  KAIKA_MASTER.34392.txt
     │       │       │   ├──  KAIKA_MASTER.35426.txt
     │       │       │   ├──  KAIKA_MASTER.36127.txt
     │       │       │   ├──  KAIKA_MASTER.40201.txt
     │       │       │   ├──  KAIKA_MASTER.41277.txt
     │       │       │   ├──  KAIKA_MASTER.42251.txt
     │       │       │   ├──  KAIKA_MASTER.43056.txt
     │       │       │   ├──  KAIKA_MASTER.44132.txt
     │       │       │   ├──  KAIKA_MASTER.45147.txt
     │       │       │   ├──  KAIKA_MASTER.46106.txt
     │       │       │   ├──  KAIKA_MASTER.48156.txt
     │       │       │   ├──  KAIKA_MASTER.49142.txt
     │       │       │   ├──  KAIKA_MASTER.50331.txt
     │       │       │   ├──  KAIKA_MASTER.51106.txt
     │       │       │   ├──  KAIKA_MASTER.52586.txt
     │       │       │   ├──  KAIKA_MASTER.53133.txt
     │       │       │   ├──  KAIKA_MASTER.54232.txt
     │       │       │   ├──  KAIKA_MASTER.55102.txt
     │       │       │   ├──  KAIKA_MASTER.56227.txt
     │       │       │   ├──  KAIKA_MASTER.57066.txt
     │       │       │   ├──  KAIKA_MASTER.60131.txt
     │       │       │   ├──  KAIKA_MASTER.61111.txt
     │       │       │   ├──  KAIKA_MASTER.61286.txt
     │       │       │   ├──  KAIKA_MASTER.62078.txt
     │       │       │   ├──  KAIKA_MASTER.63518.txt
     │       │       │   ├──  KAIKA_MASTER.64036.txt
     │       │       │   ├──  KAIKA_MASTER.65042.txt
     │       │       │   ├──  KAIKA_MASTER.66408.txt
     │       │       │   ├──  KAIKA_MASTER.67437.txt
     │       │       │   ├──  KAIKA_MASTER.68132.txt
     │       │       │   ├──  KAIKA_MASTER.69122.txt
     │       │       │   ├──  KAIKA_MASTER.71106.txt
     │       │       │   ├──  KAIKA_MASTER.72086.txt
     │       │       │   ├──  KAIKA_MASTER.73166.txt
     │       │       │   ├──  KAIKA_MASTER.74181.txt
     │       │       │   ├──  KAIKA_MASTER.81428.txt
     │       │       │   ├──  KAIKA_MASTER.82182.txt
     │       │       │   ├──  KAIKA_MASTER.83216.txt
     │       │       │   ├──  KAIKA_MASTER.84496.txt
     │       │       │   ├──  KAIKA_MASTER.85142.txt
     │       │       │   ├──  KAIKA_MASTER.86141.txt
     │       │       │   ├──  KAIKA_MASTER.87376.txt
     │       │       │   ├──  KAIKA_MASTER.88317.txt
     │       │       │   ├──  KAIKA_MASTER.88836.txt
     │       │       │   ├──  KAIKA_MASTER.91197.txt
     │       │       │   ├──  KAIKA_MASTER.92011.txt
     │       │       │   ├──  KAIKA_MASTER.93041.txt
     │       │       │   └──  KAIKA_MASTER.94081.txt
     │       │       ├──  SAIKO_SAITE_KION.sh
     │       │       ├──  SAIKO_SAITE_KION_awk.sh
     │       │       ├──  SAKURA_KAIKA.sh
     │       │       └──  SAKURA_KAIKA_awk.sh
     │       └──  Unstructured_data/
     │           ├──  README.txt
     │           ├──  References/
     │           │   ├──  kemotw.pdf
     │           │   └──  kemotw2.pdf
     │           ├──  TUTORIAL.txt
     │           └──  TUTORIAL_JPonly.txt
     └──  workspace/
         └──  tmptools/
             ├──  do8.sh
             ├──  makeusb.sh
             ├──  mmm.sh
             ├──  uuu.sh
             └──  xxx.sh
     
     19 directories, 223 files (Tue Jun 18 01:37:02 JST 2024)


Note: URL = https://github.com/hohno-46466/dZone--PT4A--USBstorage

Note: URL = git@github.com:hohno-46466/dZone--PT4A--USBstorage.git

-EOF-


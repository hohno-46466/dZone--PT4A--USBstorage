# GitHub/dZone--PT4A--USBstorage

USB storage skelton for PT4A lectures

PT4A を用いた大規模データ処理演習で配布する USB メモリの骨格（ただしデータを除く）

このディレクトリ内の任意の USBメモリイメージをコピーし，そこに別途用意したデータを追記することで「大規模データ処理演習用のUSBメモリ」ができあがる

これをマスターとして必要数を確保する場合は，適宜 USBメモリ複製機などを使うとよい．

    ./dZone--PT4A--USBstorage
     ├──  README.md
     ├──  README.md.old
     ├──  USB128GB-20210601/
     │   ├──  PT4A/
     │   │   └──  README.md
     │   ├──  README.md
     │   ├──  Readme1_Rev.2.0.txt
     │   ├──  Readme2_tree.txt
     │   ├──  Readme3_USB_MOUNT_REV.2.0.txt
     │   ├──  Readme4_PT4A_REV.2.0.txt
     │   ├──  System Volume Information/
     │   │   ├──  IndexerVolumeGuid
     │   │   └──  WPSettings.dat
     │   └──  data/
     │       ├──  Structured_data/
     │       │   ├──  Readme_Rev.2.0.txt
     │       │   ├──  amedas/
     │       │   │   ├──  monthcsv/
     │       │   │   │   └──  README.md
     │       │   │   ├──  monthtext/
     │       │   │   │   └──  README.md
     │       │   │   └──  yeartext/
     │       │   │       └──  README.md
     │       │   ├──  format/
     │       │   │   ├──  amed_item_flag.csv
     │       │   │   ├──  amed_item_list.csv
     │       │   │   ├──  amed_list.csv
     │       │   │   └──  amed_list.txt
     │       │   └──  samples/
     │       │       ├──  HEIKIN_KION.sh
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
     │       │       └──  SAKURA_KAIKA.sh
     │       └──  Unstructured_data/
     │           ├──  README.txt
     │           ├──  References/
     │           │   ├──  kemotw.pdf
     │           │   └──  kemotw2.pdf
     │           ├──  TUTORIAL.txt
     │           └──  Tokyo2020/
     │               ├──  20190714/
     │               │   └──  README.md
     │               ├──  20190715/
     │               │   └──  README.md
     │               ├──  20190716/
     │               │   └──  README.md
     │               ├──  20190717/
     │               │   └──  README.md
     │               ├──  20190718/
     │               │   └──  README.md
     │               ├──  20190719/
     │               │   └──  README.md
     │               ├──  20190720/
     │               │   └──  README.md
     │               ├──  20190721/
     │               │   └──  README.md
     │               ├──  20190722/
     │               │   └──  README.md
     │               ├──  20190723/
     │               │   └──  README.md
     │               ├──  20190724/
     │               │   └──  README.md
     │               ├──  20190725/
     │               │   └──  README.md
     │               ├──  20190726/
     │               │   └──  README.md
     │               ├──  20190727/
     │               │   └──  README.md
     │               ├──  20190728/
     │               │   └──  README.md
     │               ├──  20190729/
     │               │   └──  README.md
     │               ├──  20190730/
     │               │   └──  README.md
     │               ├──  20190731/
     │               │   └──  README.md
     │               ├──  20190801/
     │               │   └──  README.md
     │               ├──  20190802/
     │               │   └──  README.md
     │               ├──  20190803/
     │               │   └──  README.md
     │               ├──  20190804/
     │               │   └──  README.md
     │               ├──  20190805/
     │               │   └──  README.md
     │               ├──  20190806/
     │               │   └──  README.md
     │               ├──  20190807/
     │               │   └──  README.md
     │               ├──  20190808/
     │               │   └──  README.md
     │               ├──  20190809/
     │               │   └──  README.md
     │               ├──  20190810/
     │               │   └──  README.md
     │               ├──  20190811/
     │               │   └──  README.md
     │               ├──  20190812/
     │               │   └──  README.md
     │               ├──  20190813/
     │               │   └──  README.md
     │               ├──  20190814/
     │               │   └──  README.md
     │               ├──  20190815/
     │               │   └──  README.md
     │               ├──  20190816/
     │               │   └──  README.md
     │               ├──  20190817/
     │               │   └──  README.md
     │               ├──  20190818/
     │               │   └──  README.md
     │               ├──  20190819/
     │               │   └──  README.md
     │               ├──  20190820/
     │               │   └──  README.md
     │               ├──  20190821/
     │               │   └──  README.md
     │               ├──  20190822/
     │               │   └──  README.md
     │               ├──  20190823/
     │               │   └──  README.md
     │               ├──  20190824/
     │               │   └──  README.md
     │               ├──  20190825/
     │               │   └──  README.md
     │               ├──  20190826/
     │               │   └──  README.md
     │               ├──  20190827/
     │               │   └──  README.md
     │               ├──  20190828/
     │               │   └──  README.md
     │               ├──  20190829/
     │               │   └──  README.md
     │               ├──  20190830/
     │               │   └──  README.md
     │               ├──  20190831/
     │               │   └──  README.md
     │               ├──  20190901/
     │               │   └──  README.md
     │               ├──  20190902/
     │               │   └──  README.md
     │               ├──  20190903/
     │               │   └──  README.md
     │               ├──  20190904/
     │               │   └──  README.md
     │               ├──  20190905/
     │               │   └──  README.md
     │               ├──  20190906/
     │               │   └──  README.md
     │               ├──  20190907/
     │               │   └──  README.md
     │               ├──  20190908/
     │               │   └──  README.md
     │               ├──  20190909/
     │               │   └──  README.md
     │               ├──  20190910/
     │               │   └──  README.md
     │               ├──  20190911/
     │               │   └──  README.md
     │               ├──  20190912/
     │               │   └──  README.md
     │               ├──  20190913/
     │               │   └──  README.md
     │               ├──  20190914/
     │               │   └──  README.md
     │               ├──  20190915/
     │               │   └──  README.md
     │               ├──  20190916/
     │               │   └──  README.md
     │               ├──  20190917/
     │               │   └──  README.md
     │               ├──  20190918/
     │               │   └──  README.md
     │               ├──  20190919/
     │               │   └──  README.md
     │               ├──  20190920/
     │               │   └──  README.md
     │               ├──  20190921/
     │               │   └──  README.md
     │               ├──  20190922/
     │               │   └──  README.md
     │               ├──  20190923/
     │               │   └──  README.md
     │               ├──  20190924/
     │               │   └──  README.md
     │               ├──  20190925/
     │               │   └──  README.md
     │               ├──  20190926/
     │               │   └──  README.md
     │               ├──  20190927/
     │               │   └──  README.md
     │               ├──  20190928/
     │               │   └──  README.md
     │               ├──  20190929/
     │               │   └──  README.md
     │               ├──  20190930/
     │               │   └──  README.md
     │               ├──  20191001/
     │               │   └──  README.md
     │               ├──  20191002/
     │               │   └──  README.md
     │               ├──  20191003/
     │               │   └──  README.md
     │               ├──  20191004/
     │               │   └──  README.md
     │               ├──  20191005/
     │               │   └──  README.md
     │               ├──  20191006/
     │               │   └──  README.md
     │               ├──  20191007/
     │               │   └──  README.md
     │               ├──  20191008/
     │               │   └──  README.md
     │               ├──  20191009/
     │               │   └──  README.md
     │               ├──  20191010/
     │               │   └──  README.md
     │               ├──  20191011/
     │               │   └──  README.md
     │               ├──  20191012/
     │               │   └──  README.md
     │               ├──  20191013/
     │               │   └──  README.md
     │               ├──  20191014/
     │               │   └──  README.md
     │               ├──  20191015/
     │               │   └──  README.md
     │               ├──  20191016/
     │               │   └──  README.md
     │               ├──  20191017/
     │               │   └──  README.md
     │               ├──  20191018/
     │               │   └──  README.md
     │               ├──  20191019/
     │               │   └──  README.md
     │               ├──  20191020/
     │               │   └──  README.md
     │               ├──  20191021/
     │               │   └──  README.md
     │               ├──  20191022/
     │               │   └──  README.md
     │               ├──  20191023/
     │               │   └──  README.md
     │               ├──  20191024/
     │               │   └──  README.md
     │               ├──  20191025/
     │               │   └──  README.md
     │               ├──  20191026/
     │               │   └──  README.md
     │               ├──  20191027/
     │               │   └──  README.md
     │               ├──  20191028/
     │               │   └──  README.md
     │               ├──  20191029/
     │               │   └──  README.md
     │               ├──  20191030/
     │               │   └──  README.md
     │               ├──  20191031/
     │               │   └──  README.md
     │               ├──  20191101/
     │               │   └──  README.md
     │               ├──  20191102/
     │               │   └──  README.md
     │               ├──  20191103/
     │               │   └──  README.md
     │               ├──  20191104/
     │               │   └──  README.md
     │               ├──  20191105/
     │               │   └──  README.md
     │               ├──  20191106/
     │               │   └──  README.md
     │               ├──  20191107/
     │               │   └──  README.md
     │               ├──  20191108/
     │               │   └──  README.md
     │               ├──  20191109/
     │               │   └──  README.md
     │               ├──  20191110/
     │               │   └──  README.md
     │               ├──  20191111/
     │               │   └──  README.md
     │               ├──  20191112/
     │               │   └──  README.md
     │               ├──  20191113/
     │               │   └──  README.md
     │               ├──  20191114/
     │               │   └──  README.md
     │               ├──  20191115/
     │               │   └──  README.md
     │               ├──  20191116/
     │               │   └──  README.md
     │               ├──  20191117/
     │               │   └──  README.md
     │               ├──  20191118/
     │               │   └──  README.md
     │               ├──  20191119/
     │               │   └──  README.md
     │               ├──  20191120/
     │               │   └──  README.md
     │               ├──  20191121/
     │               │   └──  README.md
     │               ├──  20191122/
     │               │   └──  README.md
     │               ├──  20191123/
     │               │   └──  README.md
     │               ├──  20191124/
     │               │   └──  README.md
     │               ├──  20191125/
     │               │   └──  README.md
     │               ├──  20191126/
     │               │   └──  README.md
     │               ├──  20191127/
     │               │   └──  README.md
     │               ├──  20191128/
     │               │   └──  README.md
     │               ├──  20191129/
     │               │   └──  README.md
     │               ├──  20191130/
     │               │   └──  README.md
     │               ├──  20191201/
     │               │   └──  README.md
     │               ├──  20191202/
     │               │   └──  README.md
     │               ├──  20191203/
     │               │   └──  README.md
     │               ├──  20191204/
     │               │   └──  README.md
     │               ├──  20191205/
     │               │   └──  README.md
     │               ├──  20191206/
     │               │   └──  README.md
     │               ├──  20191207/
     │               │   └──  README.md
     │               ├──  20191208/
     │               │   └──  README.md
     │               ├──  20191209/
     │               │   └──  README.md
     │               ├──  20191210/
     │               │   └──  README.md
     │               ├──  20191211/
     │               │   └──  README.md
     │               ├──  20191212/
     │               │   └──  README.md
     │               ├──  20191213/
     │               │   └──  README.md
     │               ├──  20191214/
     │               │   └──  README.md
     │               ├──  20191215/
     │               │   └──  README.md
     │               ├──  20191216/
     │               │   └──  README.md
     │               ├──  20191217/
     │               │   └──  README.md
     │               ├──  20191218/
     │               │   └──  README.md
     │               ├──  20191219/
     │               │   └──  README.md
     │               ├──  20191220/
     │               │   └──  README.md
     │               ├──  20191221/
     │               │   └──  README.md
     │               ├──  20191222/
     │               │   └──  README.md
     │               ├──  20191223/
     │               │   └──  README.md
     │               ├──  20191224/
     │               │   └──  README.md
     │               ├──  20191225/
     │               │   └──  README.md
     │               ├──  20191226/
     │               │   └──  README.md
     │               ├──  20191227/
     │               │   └──  README.md
     │               ├──  20191228/
     │               │   └──  README.md
     │               ├──  20191229/
     │               │   └──  README.md
     │               ├──  20191230/
     │               │   └──  README.md
     │               ├──  20191231/
     │               │   └──  README.md
     │               ├──  20200101/
     │               │   └──  README.md
     │               ├──  20200102/
     │               │   └──  README.md
     │               ├──  20200103/
     │               │   └──  README.md
     │               ├──  20200104/
     │               │   └──  README.md
     │               ├──  20200105/
     │               │   └──  README.md
     │               ├──  20200106/
     │               │   └──  README.md
     │               ├──  20200107/
     │               │   └──  README.md
     │               ├──  20200108/
     │               │   └──  README.md
     │               ├──  20200109/
     │               │   └──  README.md
     │               ├──  20200110/
     │               │   └──  README.md
     │               ├──  20200111/
     │               │   └──  README.md
     │               ├──  20200112/
     │               │   └──  README.md
     │               ├──  20200113/
     │               │   └──  README.md
     │               ├──  20200114/
     │               │   └──  README.md
     │               ├──  20200115/
     │               │   └──  README.md
     │               ├──  20200116/
     │               │   └──  README.md
     │               ├──  20200117/
     │               │   └──  README.md
     │               ├──  20200118/
     │               │   └──  README.md
     │               ├──  20200119/
     │               │   └──  README.md
     │               ├──  20200120/
     │               │   └──  README.md
     │               ├──  20200121/
     │               │   └──  README.md
     │               ├──  20200122/
     │               │   └──  README.md
     │               ├──  20200123/
     │               │   └──  README.md
     │               ├──  20200124/
     │               │   └──  README.md
     │               ├──  20200125/
     │               │   └──  README.md
     │               ├──  20200126/
     │               │   └──  README.md
     │               ├──  20200127/
     │               │   └──  README.md
     │               ├──  20200128/
     │               │   └──  README.md
     │               ├──  20200129/
     │               │   └──  README.md
     │               ├──  20200130/
     │               │   └──  README.md
     │               ├──  20200131/
     │               │   └──  README.md
     │               ├──  20200201/
     │               │   └──  README.md
     │               ├──  20200202/
     │               │   └──  README.md
     │               ├──  20200203/
     │               │   └──  README.md
     │               ├──  20200204/
     │               │   └──  README.md
     │               ├──  20200205/
     │               │   └──  README.md
     │               ├──  20200206/
     │               │   └──  README.md
     │               ├──  20200207/
     │               │   └──  README.md
     │               ├──  20200208/
     │               │   └──  README.md
     │               ├──  20200209/
     │               │   └──  README.md
     │               ├──  20200210/
     │               │   └──  README.md
     │               ├──  20200211/
     │               │   └──  README.md
     │               ├──  20200212/
     │               │   └──  README.md
     │               ├──  20200213/
     │               │   └──  README.md
     │               ├──  20200214/
     │               │   └──  README.md
     │               ├──  20200215/
     │               │   └──  README.md
     │               ├──  20200216/
     │               │   └──  README.md
     │               ├──  20200217/
     │               │   └──  README.md
     │               ├──  20200218/
     │               │   └──  README.md
     │               ├──  20200219/
     │               │   └──  README.md
     │               ├──  20200220/
     │               │   └──  README.md
     │               ├──  20200221/
     │               │   └──  README.md
     │               ├──  20200222/
     │               │   └──  README.md
     │               ├──  20200223/
     │               │   └──  README.md
     │               ├──  20200224/
     │               │   └──  README.md
     │               ├──  20200225/
     │               │   └──  README.md
     │               ├──  20200226/
     │               │   └──  README.md
     │               ├──  20200227/
     │               │   └──  README.md
     │               ├──  20200228/
     │               │   └──  README.md
     │               ├──  20200229/
     │               │   └──  README.md
     │               ├──  20200301/
     │               │   └──  README.md
     │               ├──  20200302/
     │               │   └──  README.md
     │               ├──  20200303/
     │               │   └──  README.md
     │               ├──  20200304/
     │               │   └──  README.md
     │               ├──  20200305/
     │               │   └──  README.md
     │               ├──  20200306/
     │               │   └──  README.md
     │               ├──  20200307/
     │               │   └──  README.md
     │               ├──  20200308/
     │               │   └──  README.md
     │               ├──  20200309/
     │               │   └──  README.md
     │               ├──  20200310/
     │               │   └──  README.md
     │               ├──  20200311/
     │               │   └──  README.md
     │               ├──  20200312/
     │               │   └──  README.md
     │               ├──  20200313/
     │               │   └──  README.md
     │               ├──  20200314/
     │               │   └──  README.md
     │               ├──  20200315/
     │               │   └──  README.md
     │               ├──  20200316/
     │               │   └──  README.md
     │               ├──  20200317/
     │               │   └──  README.md
     │               ├──  20200318/
     │               │   └──  README.md
     │               ├──  20200319/
     │               │   └──  README.md
     │               ├──  20200320/
     │               │   └──  README.md
     │               ├──  20200321/
     │               │   └──  README.md
     │               ├──  20200322/
     │               │   └──  README.md
     │               ├──  20200323/
     │               │   └──  README.md
     │               ├──  20200324/
     │               │   └──  README.md
     │               ├──  20200325/
     │               │   └──  README.md
     │               ├──  20200326/
     │               │   └──  README.md
     │               ├──  20200327/
     │               │   └──  README.md
     │               ├──  20200328/
     │               │   └──  README.md
     │               ├──  20200329/
     │               │   └──  README.md
     │               ├──  20200330/
     │               │   └──  README.md
     │               ├──  20200331/
     │               │   └──  README.md
     │               ├──  20200401/
     │               │   └──  README.md
     │               ├──  20200402/
     │               │   └──  README.md
     │               ├──  20200403/
     │               │   └──  README.md
     │               ├──  20200404/
     │               │   └──  README.md
     │               ├──  20200405/
     │               │   └──  README.md
     │               ├──  20200406/
     │               │   └──  README.md
     │               ├──  20200407/
     │               │   └──  README.md
     │               ├──  20200408/
     │               │   └──  README.md
     │               ├──  20200409/
     │               │   └──  README.md
     │               ├──  20200410/
     │               │   └──  README.md
     │               ├──  20200411/
     │               │   └──  README.md
     │               ├──  20200412/
     │               │   └──  README.md
     │               ├──  20200413/
     │               │   └──  README.md
     │               ├──  20200414/
     │               │   └──  README.md
     │               ├──  20200415/
     │               │   └──  README.md
     │               ├──  20200416/
     │               │   └──  README.md
     │               ├──  20200417/
     │               │   └──  README.md
     │               ├──  20200418/
     │               │   └──  README.md
     │               ├──  20200419/
     │               │   └──  README.md
     │               ├──  20200420/
     │               │   └──  README.md
     │               ├──  20200421/
     │               │   └──  README.md
     │               ├──  20200422/
     │               │   └──  README.md
     │               ├──  20200423/
     │               │   └──  README.md
     │               ├──  20200424/
     │               │   └──  README.md
     │               ├──  20200425/
     │               │   └──  README.md
     │               ├──  20200426/
     │               │   └──  README.md
     │               ├──  20200427/
     │               │   └──  README.md
     │               ├──  20200428/
     │               │   └──  README.md
     │               ├──  20200429/
     │               │   └──  README.md
     │               ├──  20200430/
     │               │   └──  README.md
     │               ├──  20200501/
     │               │   └──  README.md
     │               ├──  20200502/
     │               │   └──  README.md
     │               ├──  20200503/
     │               │   └──  README.md
     │               ├──  20200504/
     │               │   └──  README.md
     │               ├──  20200505/
     │               │   └──  README.md
     │               ├──  20200506/
     │               │   └──  README.md
     │               ├──  20200507/
     │               │   └──  README.md
     │               ├──  20200508/
     │               │   └──  README.md
     │               ├──  20200509/
     │               │   └──  README.md
     │               ├──  20200510/
     │               │   └──  README.md
     │               ├──  20200511/
     │               │   └──  README.md
     │               ├──  20200512/
     │               │   └──  README.md
     │               ├──  20200513/
     │               │   └──  README.md
     │               ├──  20200514/
     │               │   └──  README.md
     │               ├──  20200515/
     │               │   └──  README.md
     │               ├──  20200516/
     │               │   └──  README.md
     │               ├──  20200517/
     │               │   └──  README.md
     │               ├──  20200518/
     │               │   └──  README.md
     │               ├──  20200519/
     │               │   └──  README.md
     │               ├──  20200520/
     │               │   └──  README.md
     │               ├──  20200521/
     │               │   └──  README.md
     │               ├──  20200522/
     │               │   └──  README.md
     │               ├──  20200523/
     │               │   └──  README.md
     │               ├──  20200524/
     │               │   └──  README.md
     │               ├──  20200525/
     │               │   └──  README.md
     │               ├──  20200526/
     │               │   └──  README.md
     │               ├──  20200527/
     │               │   └──  README.md
     │               ├──  20200528/
     │               │   └──  README.md
     │               ├──  20200529/
     │               │   └──  README.md
     │               ├──  20200530/
     │               │   └──  README.md
     │               ├──  20200531/
     │               │   └──  README.md
     │               ├──  20200601/
     │               │   └──  README.md
     │               ├──  20200602/
     │               │   └──  README.md
     │               ├──  20200603/
     │               │   └──  README.md
     │               ├──  20200604/
     │               │   └──  README.md
     │               ├──  20200605/
     │               │   └──  README.md
     │               ├──  20200606/
     │               │   └──  README.md
     │               ├──  20200607/
     │               │   └──  README.md
     │               ├──  20200608/
     │               │   └──  README.md
     │               ├──  20200609/
     │               │   └──  README.md
     │               ├──  20200610/
     │               │   └──  README.md
     │               ├──  20200611/
     │               │   └──  README.md
     │               ├──  20200612/
     │               │   └──  README.md
     │               ├──  20200613/
     │               │   └──  README.md
     │               ├──  20200614/
     │               │   └──  README.md
     │               ├──  20200615/
     │               │   └──  README.md
     │               ├──  20200616/
     │               │   └──  README.md
     │               ├──  20200617/
     │               │   └──  README.md
     │               ├──  20200618/
     │               │   └──  README.md
     │               ├──  20200619/
     │               │   └──  README.md
     │               ├──  20200620/
     │               │   └──  README.md
     │               ├──  20200621/
     │               │   └──  README.md
     │               ├──  20200622/
     │               │   └──  README.md
     │               ├──  20200623/
     │               │   └──  README.md
     │               ├──  20200624/
     │               │   └──  README.md
     │               ├──  20200625/
     │               │   └──  README.md
     │               ├──  20200626/
     │               │   └──  README.md
     │               ├──  20200627/
     │               │   └──  README.md
     │               ├──  20200628/
     │               │   └──  README.md
     │               ├──  20200629/
     │               │   └──  README.md
     │               ├──  20200630/
     │               │   └──  README.md
     │               ├──  20200701/
     │               │   └──  README.md
     │               ├──  20200702/
     │               │   └──  README.md
     │               ├──  20200703/
     │               │   └──  README.md
     │               ├──  20200704/
     │               │   └──  README.md
     │               ├──  20200705/
     │               │   └──  README.md
     │               ├──  20200706/
     │               │   └──  README.md
     │               ├──  20200707/
     │               │   └──  README.md
     │               ├──  20200708/
     │               │   └──  README.md
     │               ├──  20200709/
     │               │   └──  README.md
     │               ├──  20200710/
     │               │   └──  README.md
     │               ├──  20200711/
     │               │   └──  README.md
     │               ├──  20200712/
     │               │   └──  README.md
     │               ├──  20200713/
     │               │   └──  README.md
     │               ├──  20200714/
     │               │   └──  README.md
     │               ├──  20200715/
     │               │   └──  README.md
     │               ├──  20200716/
     │               │   └──  README.md
     │               ├──  20200717/
     │               │   └──  README.md
     │               ├──  20200718/
     │               │   └──  README.md
     │               ├──  20200719/
     │               │   └──  README.md
     │               ├──  20200720/
     │               │   └──  README.md
     │               ├──  20200721/
     │               │   └──  README.md
     │               ├──  20200722/
     │               │   └──  README.md
     │               ├──  20200723/
     │               │   └──  README.md
     │               ├──  20200724/
     │               │   └──  README.md
     │               ├──  20200725/
     │               │   └──  README.md
     │               ├──  20200726/
     │               │   └──  README.md
     │               ├──  20200727/
     │               │   └──  README.md
     │               ├──  20200728/
     │               │   └──  README.md
     │               ├──  20200729/
     │               │   └──  README.md
     │               ├──  20200730/
     │               │   └──  README.md
     │               ├──  20200731/
     │               │   └──  README.md
     │               ├──  20200801/
     │               │   └──  README.md
     │               ├──  20200802/
     │               │   └──  README.md
     │               ├──  20200803/
     │               │   └──  README.md
     │               ├──  20200804/
     │               │   └──  README.md
     │               ├──  20200805/
     │               │   └──  README.md
     │               ├──  20200806/
     │               │   └──  README.md
     │               ├──  20200807/
     │               │   └──  README.md
     │               ├──  20200808/
     │               │   └──  README.md
     │               ├──  20200809/
     │               │   └──  README.md
     │               ├──  20200810/
     │               │   └──  README.md
     │               ├──  20200811/
     │               │   └──  README.md
     │               ├──  20200812/
     │               │   └──  README.md
     │               ├──  20200813/
     │               │   └──  README.md
     │               ├──  20200814/
     │               │   └──  README.md
     │               ├──  20200815/
     │               │   └──  README.md
     │               ├──  20200816/
     │               │   └──  README.md
     │               ├──  20200817/
     │               │   └──  README.md
     │               ├──  20200818/
     │               │   └──  README.md
     │               ├──  20200819/
     │               │   └──  README.md
     │               ├──  20200820/
     │               │   └──  README.md
     │               ├──  20200821/
     │               │   └──  README.md
     │               ├──  20200822/
     │               │   └──  README.md
     │               ├──  20200823/
     │               │   └──  README.md
     │               ├──  20200824/
     │               │   └──  README.md
     │               ├──  20200825/
     │               │   └──  README.md
     │               ├──  20200826/
     │               │   └──  README.md
     │               ├──  20200827/
     │               │   └──  README.md
     │               ├──  20200828/
     │               │   └──  README.md
     │               ├──  20200829/
     │               │   └──  README.md
     │               ├──  20200830/
     │               │   └──  README.md
     │               ├──  20200831/
     │               │   └──  README.md
     │               ├──  20200901/
     │               │   └──  README.md
     │               ├──  20200902/
     │               │   └──  README.md
     │               ├──  20200903/
     │               │   └──  README.md
     │               ├──  20200904/
     │               │   └──  README.md
     │               ├──  20200905/
     │               │   └──  README.md
     │               ├──  20200906/
     │               │   └──  README.md
     │               ├──  20200907/
     │               │   └──  README.md
     │               ├──  20200908/
     │               │   └──  README.md
     │               ├──  20200909/
     │               │   └──  README.md
     │               ├──  20200910/
     │               │   └──  README.md
     │               ├──  20200911/
     │               │   └──  README.md
     │               ├──  20200912/
     │               │   └──  README.md
     │               ├──  20200913/
     │               │   └──  README.md
     │               ├──  20200914/
     │               │   └──  README.md
     │               ├──  20200915/
     │               │   └──  README.md
     │               ├──  20200916/
     │               │   └──  README.md
     │               ├──  20200917/
     │               │   └──  README.md
     │               ├──  20200918/
     │               │   └──  README.md
     │               ├──  20200919/
     │               │   └──  README.md
     │               ├──  20200920/
     │               │   └──  README.md
     │               ├──  20200921/
     │               │   └──  README.md
     │               ├──  20200922/
     │               │   └──  README.md
     │               ├──  20200923/
     │               │   └──  README.md
     │               ├──  20200924/
     │               │   └──  README.md
     │               ├──  20200925/
     │               │   └──  README.md
     │               ├──  20200926/
     │               │   └──  README.md
     │               ├──  20200927/
     │               │   └──  README.md
     │               ├──  20200928/
     │               │   └──  README.md
     │               ├──  20200929/
     │               │   └──  README.md
     │               ├──  20200930/
     │               │   └──  README.md
     │               ├──  20201001/
     │               │   └──  README.md
     │               ├──  20201002/
     │               │   └──  README.md
     │               ├──  20201003/
     │               │   └──  README.md
     │               ├──  20201004/
     │               │   └──  README.md
     │               ├──  20201005/
     │               │   └──  README.md
     │               ├──  20201006/
     │               │   └──  README.md
     │               ├──  20201007/
     │               │   └──  README.md
     │               ├──  20201008/
     │               │   └──  README.md
     │               ├──  20201009/
     │               │   └──  README.md
     │               ├──  20201010/
     │               │   └──  README.md
     │               ├──  20201011/
     │               │   └──  README.md
     │               ├──  20201012/
     │               │   └──  README.md
     │               ├──  20201013/
     │               │   └──  README.md
     │               ├──  20201014/
     │               │   └──  README.md
     │               ├──  20201015/
     │               │   └──  README.md
     │               ├──  20201016/
     │               │   └──  README.md
     │               ├──  20201017/
     │               │   └──  README.md
     │               ├──  20201018/
     │               │   └──  README.md
     │               ├──  20201019/
     │               │   └──  README.md
     │               ├──  20201020/
     │               │   └──  README.md
     │               ├──  20201021/
     │               │   └──  README.md
     │               ├──  20201022/
     │               │   └──  README.md
     │               ├──  20201023/
     │               │   └──  README.md
     │               ├──  20201024/
     │               │   └──  README.md
     │               ├──  20201025/
     │               │   └──  README.md
     │               ├──  20201026/
     │               │   └──  README.md
     │               ├──  20201027/
     │               │   └──  README.md
     │               ├──  20201028/
     │               │   └──  README.md
     │               ├──  20201029/
     │               │   └──  README.md
     │               ├──  20201030/
     │               │   └──  README.md
     │               ├──  20201031/
     │               │   └──  README.md
     │               ├──  20201101/
     │               │   └──  README.md
     │               ├──  20201102/
     │               │   └──  README.md
     │               ├──  20201103/
     │               │   └──  README.md
     │               ├──  20201104/
     │               │   └──  README.md
     │               ├──  20201105/
     │               │   └──  README.md
     │               ├──  20201106/
     │               │   └──  README.md
     │               ├──  20201107/
     │               │   └──  README.md
     │               ├──  20201108/
     │               │   └──  README.md
     │               ├──  20201109/
     │               │   └──  README.md
     │               ├──  20201110/
     │               │   └──  README.md
     │               ├──  20201111/
     │               │   └──  README.md
     │               ├──  20201112/
     │               │   └──  README.md
     │               ├──  20201113/
     │               │   └──  README.md
     │               ├──  20201114/
     │               │   └──  README.md
     │               ├──  20201115/
     │               │   └──  README.md
     │               ├──  20201116/
     │               │   └──  README.md
     │               ├──  20201117/
     │               │   └──  README.md
     │               ├──  20201118/
     │               │   └──  README.md
     │               ├──  20201119/
     │               │   └──  README.md
     │               ├──  20201120/
     │               │   └──  README.md
     │               ├──  20201121/
     │               │   └──  README.md
     │               ├──  20201122/
     │               │   └──  README.md
     │               ├──  20201123/
     │               │   └──  README.md
     │               ├──  20201124/
     │               │   └──  README.md
     │               ├──  20201125/
     │               │   └──  README.md
     │               ├──  20201126/
     │               │   └──  README.md
     │               ├──  20201127/
     │               │   └──  README.md
     │               ├──  20201128/
     │               │   └──  README.md
     │               ├──  20201129/
     │               │   └──  README.md
     │               ├──  20201130/
     │               │   └──  README.md
     │               ├──  20201201/
     │               │   └──  README.md
     │               ├──  20201202/
     │               │   └──  README.md
     │               ├──  20201203/
     │               │   └──  README.md
     │               ├──  20201204/
     │               │   └──  README.md
     │               ├──  20201205/
     │               │   └──  README.md
     │               ├──  20201206/
     │               │   └──  README.md
     │               ├──  20201207/
     │               │   └──  README.md
     │               ├──  20201208/
     │               │   └──  README.md
     │               ├──  20201209/
     │               │   └──  README.md
     │               ├──  20201210/
     │               │   └──  README.md
     │               ├──  20201211/
     │               │   └──  README.md
     │               ├──  20201212/
     │               │   └──  README.md
     │               ├──  20201213/
     │               │   └──  README.md
     │               ├──  20201214/
     │               │   └──  README.md
     │               ├──  20201215/
     │               │   └──  README.md
     │               ├──  20201216/
     │               │   └──  README.md
     │               ├──  20201217/
     │               │   └──  README.md
     │               ├──  20201218/
     │               │   └──  README.md
     │               ├──  20201219/
     │               │   └──  README.md
     │               ├──  20201220/
     │               │   └──  README.md
     │               ├──  20201221/
     │               │   └──  README.md
     │               ├──  20201222/
     │               │   └──  README.md
     │               ├──  20201223/
     │               │   └──  README.md
     │               ├──  20201224/
     │               │   └──  README.md
     │               ├──  20201225/
     │               │   └──  README.md
     │               ├──  20201226/
     │               │   └──  README.md
     │               ├──  20201227/
     │               │   └──  README.md
     │               ├──  20201228/
     │               │   └──  README.md
     │               ├──  20201229/
     │               │   └──  README.md
     │               ├──  20201230/
     │               │   └──  README.md
     │               ├──  20201231/
     │               │   └──  README.md
     │               ├──  20210101/
     │               │   └──  README.md
     │               ├──  20210102/
     │               │   └──  README.md
     │               ├──  20210103/
     │               │   └──  README.md
     │               ├──  20210104/
     │               │   └──  README.md
     │               ├──  20210105/
     │               │   └──  README.md
     │               ├──  20210106/
     │               │   └──  README.md
     │               ├──  20210107/
     │               │   └──  README.md
     │               ├──  20210108/
     │               │   └──  README.md
     │               ├──  20210109/
     │               │   └──  README.md
     │               ├──  20210110/
     │               │   └──  README.md
     │               ├──  20210111/
     │               │   └──  README.md
     │               ├──  20210112/
     │               │   └──  README.md
     │               ├──  20210113/
     │               │   └──  README.md
     │               ├──  20210114/
     │               │   └──  README.md
     │               ├──  20210115/
     │               │   └──  README.md
     │               ├──  20210116/
     │               │   └──  README.md
     │               ├──  20210117/
     │               │   └──  README.md
     │               ├──  20210118/
     │               │   └──  README.md
     │               ├──  20210119/
     │               │   └──  README.md
     │               ├──  20210120/
     │               │   └──  README.md
     │               ├──  20210121/
     │               │   └──  README.md
     │               ├──  20210122/
     │               │   └──  README.md
     │               ├──  20210123/
     │               │   └──  README.md
     │               ├──  20210124/
     │               │   └──  README.md
     │               ├──  20210125/
     │               │   └──  README.md
     │               ├──  20210126/
     │               │   └──  README.md
     │               ├──  20210127/
     │               │   └──  README.md
     │               ├──  20210128/
     │               │   └──  README.md
     │               ├──  20210129/
     │               │   └──  README.md
     │               ├──  20210130/
     │               │   └──  README.md
     │               ├──  20210131/
     │               │   └──  README.md
     │               ├──  20210201/
     │               │   └──  README.md
     │               ├──  20210202/
     │               │   └──  README.md
     │               ├──  20210203/
     │               │   └──  README.md
     │               ├──  20210204/
     │               │   └──  README.md
     │               ├──  20210205/
     │               │   └──  README.md
     │               ├──  20210206/
     │               │   └──  README.md
     │               ├──  20210207/
     │               │   └──  README.md
     │               ├──  20210208/
     │               │   └──  README.md
     │               ├──  20210209/
     │               │   └──  README.md
     │               ├──  20210210/
     │               │   └──  README.md
     │               ├──  20210211/
     │               │   └──  README.md
     │               ├──  20210212/
     │               │   └──  README.md
     │               ├──  20210213/
     │               │   └──  README.md
     │               ├──  20210214/
     │               │   └──  README.md
     │               ├──  20210215/
     │               │   └──  README.md
     │               ├──  20210216/
     │               │   └──  README.md
     │               ├──  20210217/
     │               │   └──  README.md
     │               ├──  20210218/
     │               │   └──  README.md
     │               ├──  20210219/
     │               │   └──  README.md
     │               ├──  20210220/
     │               │   └──  README.md
     │               ├──  20210221/
     │               │   └──  README.md
     │               ├──  20210222/
     │               │   └──  README.md
     │               ├──  20210223/
     │               │   └──  README.md
     │               ├──  20210224/
     │               │   └──  README.md
     │               ├──  20210225/
     │               │   └──  README.md
     │               ├──  20210226/
     │               │   └──  README.md
     │               ├──  20210227/
     │               │   └──  README.md
     │               ├──  20210228/
     │               │   └──  README.md
     │               ├──  20210301/
     │               │   └──  README.md
     │               ├──  20210302/
     │               │   └──  README.md
     │               ├──  20210303/
     │               │   └──  README.md
     │               ├──  20210304/
     │               │   └──  README.md
     │               ├──  20210305/
     │               │   └──  README.md
     │               ├──  20210306/
     │               │   └──  README.md
     │               ├──  20210307/
     │               │   └──  README.md
     │               ├──  20210308/
     │               │   └──  README.md
     │               ├──  20210309/
     │               │   └──  README.md
     │               ├──  20210310/
     │               │   └──  README.md
     │               ├──  20210311/
     │               │   └──  README.md
     │               ├──  20210312/
     │               │   └──  README.md
     │               ├──  20210313/
     │               │   └──  README.md
     │               ├──  20210314/
     │               │   └──  README.md
     │               ├──  20210315/
     │               │   └──  README.md
     │               ├──  20210316/
     │               │   └──  README.md
     │               ├──  20210317/
     │               │   └──  README.md
     │               ├──  20210318/
     │               │   └──  README.md
     │               ├──  20210319/
     │               │   └──  README.md
     │               ├──  20210320/
     │               │   └──  README.md
     │               ├──  20210321/
     │               │   └──  README.md
     │               ├──  20210322/
     │               │   └──  README.md
     │               ├──  20210323/
     │               │   └──  README.md
     │               ├──  20210324/
     │               │   └──  README.md
     │               ├──  20210325/
     │               │   └──  README.md
     │               ├──  20210326/
     │               │   └──  README.md
     │               ├──  20210327/
     │               │   └──  README.md
     │               ├──  20210328/
     │               │   └──  README.md
     │               ├──  20210329/
     │               │   └──  README.md
     │               ├──  20210330/
     │               │   └──  README.md
     │               ├──  20210331/
     │               │   └──  README.md
     │               ├──  20210401/
     │               │   └──  README.md
     │               ├──  20210402/
     │               │   └──  README.md
     │               ├──  20210403/
     │               │   └──  README.md
     │               ├──  20210404/
     │               │   └──  README.md
     │               ├──  20210405/
     │               │   └──  README.md
     │               ├──  20210406/
     │               │   └──  README.md
     │               ├──  20210407/
     │               │   └──  README.md
     │               ├──  20210408/
     │               │   └──  README.md
     │               ├──  20210409/
     │               │   └──  README.md
     │               ├──  20210410/
     │               │   └──  README.md
     │               ├──  20210411/
     │               │   └──  README.md
     │               ├──  20210412/
     │               │   └──  README.md
     │               ├──  20210413/
     │               │   └──  README.md
     │               ├──  20210414/
     │               │   └──  README.md
     │               ├──  20210415/
     │               │   └──  README.md
     │               ├──  20210416/
     │               │   └──  README.md
     │               ├──  20210417/
     │               │   └──  README.md
     │               ├──  20210418/
     │               │   └──  README.md
     │               ├──  20210419/
     │               │   └──  README.md
     │               ├──  20210420/
     │               │   └──  README.md
     │               ├──  20210421/
     │               │   └──  README.md
     │               ├──  20210422/
     │               │   └──  README.md
     │               ├──  20210423/
     │               │   └──  README.md
     │               ├──  20210424/
     │               │   └──  README.md
     │               ├──  20210425/
     │               │   └──  README.md
     │               ├──  20210426/
     │               │   └──  README.md
     │               ├──  20210427/
     │               │   └──  README.md
     │               ├──  20210428/
     │               │   └──  README.md
     │               ├──  20210429/
     │               │   └──  README.md
     │               ├──  20210430/
     │               │   └──  README.md
     │               ├──  20210501/
     │               │   └──  README.md
     │               ├──  20210502/
     │               │   └──  README.md
     │               ├──  20210503/
     │               │   └──  README.md
     │               ├──  20210504/
     │               │   └──  README.md
     │               ├──  20210505/
     │               │   └──  README.md
     │               ├──  20210506/
     │               │   └──  README.md
     │               ├──  20210507/
     │               │   └──  README.md
     │               ├──  20210508/
     │               │   └──  README.md
     │               ├──  20210509/
     │               │   └──  README.md
     │               ├──  20210510/
     │               │   └──  README.md
     │               ├──  20210511/
     │               │   └──  README.md
     │               ├──  20210512/
     │               │   └──  README.md
     │               ├──  20210513/
     │               │   └──  README.md
     │               ├──  20210514/
     │               │   └──  README.md
     │               ├──  20210515/
     │               │   └──  README.md
     │               ├──  20210516/
     │               │   └──  README.md
     │               ├──  20210517/
     │               │   └──  README.md
     │               ├──  20210518/
     │               │   └──  README.md
     │               ├──  20210519/
     │               │   └──  README.md
     │               ├──  20210520/
     │               │   └──  README.md
     │               ├──  20210521/
     │               │   └──  README.md
     │               ├──  20210522/
     │               │   └──  README.md
     │               ├──  20210523/
     │               │   └──  README.md
     │               ├──  20210524/
     │               │   └──  README.md
     │               ├──  20210525/
     │               │   └──  README.md
     │               ├──  20210526/
     │               │   └──  README.md
     │               ├──  20210527/
     │               │   └──  README.md
     │               ├──  20210528/
     │               │   └──  README.md
     │               ├──  20210529/
     │               │   └──  README.md
     │               ├──  20210530/
     │               │   └──  README.md
     │               ├──  20210531/
     │               │   └──  README.md
     │               ├──  20210601/
     │               │   └──  README.md
     │               ├──  20210602/
     │               │   └──  README.md
     │               ├──  20210603/
     │               │   └──  README.md
     │               ├──  20210604/
     │               │   └──  README.md
     │               ├──  20210605/
     │               │   └──  README.md
     │               ├──  20210606/
     │               │   └──  README.md
     │               ├──  20210607/
     │               │   └──  README.md
     │               ├──  20210608/
     │               │   └──  README.md
     │               ├──  20210609/
     │               │   └──  README.md
     │               ├──  20210610/
     │               │   └──  README.md
     │               └──  gyodata
     ├──  USB256GB-20220612/
     │   ├──  PT4A/
     │   │   └──  README.md
     │   ├──  README.md
     │   ├──  Readme1_Rev.2.1.txt
     │   ├──  Readme2_tree_2022.txt
     │   ├──  Readme3_USB_MOUNT_REV.2.1.txt
     │   ├──  Readme4_PT4A_REV.2.1.txt
     │   └──  data/
     │       ├──  Structured_data/
     │       │   ├──  Readme_Rev.2.0.txt
     │       │   ├──  Readme_Rev.2.1.txt
     │       │   ├──  amedas/
     │       │   │   ├──  monthcsv/
     │       │   │   ├──  monthtext/
     │       │   │   └──  yeartext/
     │       │   ├──  format/
     │       │   │   ├──  amed_item_flag.csv
     │       │   │   ├──  amed_item_list.csv
     │       │   │   ├──  amed_list.csv
     │       │   │   └──  amed_list.txt
     │       │   └──  samples/
     │       │       ├──  HEIKIN_KION.sh
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
     │       │       └──  SAKURA_KAIKA.sh
     │       └──  Unstructured_data/
     │           ├──  README.txt
     │           ├──  References/
     │           │   ├──  kemotw.pdf
     │           │   └──  kemotw2.pdf
     │           ├──  TUTORIAL.txt
     │           └──  Tokyo2020/
     │               ├──  20190714/
     │               ├──  20190715/
     │               ├──  20190716/
     │               ├──  20190717/
     │               ├──  20190718/
     │               ├──  20190719/
     │               ├──  20190720/
     │               ├──  20190721/
     │               ├──  20190722/
     │               ├──  20190723/
     │               ├──  20190724/
     │               ├──  20190725/
     │               ├──  20190726/
     │               ├──  20190727/
     │               ├──  20190728/
     │               ├──  20190729/
     │               ├──  20190730/
     │               ├──  20190731/
     │               ├──  20190801/
     │               ├──  20190802/
     │               ├──  20190803/
     │               ├──  20190804/
     │               ├──  20190805/
     │               ├──  20190806/
     │               ├──  20190807/
     │               ├──  20190808/
     │               ├──  20190809/
     │               ├──  20190810/
     │               ├──  20190811/
     │               ├──  20190812/
     │               ├──  20190813/
     │               ├──  20190814/
     │               ├──  20190815/
     │               ├──  20190816/
     │               ├──  20190817/
     │               ├──  20190818/
     │               ├──  20190819/
     │               ├──  20190820/
     │               ├──  20190821/
     │               ├──  20190822/
     │               ├──  20190823/
     │               ├──  20190824/
     │               ├──  20190825/
     │               ├──  20190826/
     │               ├──  20190827/
     │               ├──  20190828/
     │               ├──  20190829/
     │               ├──  20190830/
     │               ├──  20190831/
     │               ├──  20190901/
     │               ├──  20190902/
     │               ├──  20190903/
     │               ├──  20190904/
     │               ├──  20190905/
     │               ├──  20190906/
     │               ├──  20190907/
     │               ├──  20190908/
     │               ├──  20190909/
     │               ├──  20190910/
     │               ├──  20190911/
     │               ├──  20190912/
     │               ├──  20190913/
     │               ├──  20190914/
     │               ├──  20190915/
     │               ├──  20190916/
     │               ├──  20190917/
     │               ├──  20190918/
     │               ├──  20190919/
     │               ├──  20190920/
     │               ├──  20190921/
     │               ├──  20190922/
     │               ├──  20190923/
     │               ├──  20190924/
     │               ├──  20190925/
     │               ├──  20190926/
     │               ├──  20190927/
     │               ├──  20190928/
     │               ├──  20190929/
     │               ├──  20190930/
     │               ├──  20191001/
     │               ├──  20191002/
     │               ├──  20191003/
     │               ├──  20191004/
     │               ├──  20191005/
     │               ├──  20191006/
     │               ├──  20191007/
     │               ├──  20191008/
     │               ├──  20191009/
     │               ├──  20191010/
     │               ├──  20191011/
     │               ├──  20191012/
     │               ├──  20191013/
     │               ├──  20191014/
     │               ├──  20191015/
     │               ├──  20191016/
     │               ├──  20191017/
     │               ├──  20191018/
     │               ├──  20191019/
     │               ├──  20191020/
     │               ├──  20191021/
     │               ├──  20191022/
     │               ├──  20191023/
     │               ├──  20191024/
     │               ├──  20191025/
     │               ├──  20191026/
     │               ├──  20191027/
     │               ├──  20191028/
     │               ├──  20191029/
     │               ├──  20191030/
     │               ├──  20191031/
     │               ├──  20191101/
     │               ├──  20191102/
     │               ├──  20191103/
     │               ├──  20191104/
     │               ├──  20191105/
     │               ├──  20191106/
     │               ├──  20191107/
     │               ├──  20191108/
     │               ├──  20191109/
     │               ├──  20191110/
     │               ├──  20191111/
     │               ├──  20191112/
     │               ├──  20191113/
     │               ├──  20191114/
     │               ├──  20191115/
     │               ├──  20191116/
     │               ├──  20191117/
     │               ├──  20191118/
     │               ├──  20191119/
     │               ├──  20191120/
     │               ├──  20191121/
     │               ├──  20191122/
     │               ├──  20191123/
     │               ├──  20191124/
     │               ├──  20191125/
     │               ├──  20191126/
     │               ├──  20191127/
     │               ├──  20191128/
     │               ├──  20191129/
     │               ├──  20191130/
     │               ├──  20191201/
     │               ├──  20191202/
     │               ├──  20191203/
     │               ├──  20191204/
     │               ├──  20191205/
     │               ├──  20191206/
     │               ├──  20191207/
     │               ├──  20191208/
     │               ├──  20191209/
     │               ├──  20191210/
     │               ├──  20191211/
     │               ├──  20191212/
     │               ├──  20191213/
     │               ├──  20191214/
     │               ├──  20191215/
     │               ├──  20191216/
     │               ├──  20191217/
     │               ├──  20191218/
     │               ├──  20191219/
     │               ├──  20191220/
     │               ├──  20191221/
     │               ├──  20191222/
     │               ├──  20191223/
     │               ├──  20191224/
     │               ├──  20191225/
     │               ├──  20191226/
     │               ├──  20191227/
     │               ├──  20191228/
     │               ├──  20191229/
     │               ├──  20191230/
     │               ├──  20191231/
     │               ├──  20200101/
     │               ├──  20200102/
     │               ├──  20200103/
     │               ├──  20200104/
     │               ├──  20200105/
     │               ├──  20200106/
     │               ├──  20200107/
     │               ├──  20200108/
     │               ├──  20200109/
     │               ├──  20200110/
     │               ├──  20200111/
     │               ├──  20200112/
     │               ├──  20200113/
     │               ├──  20200114/
     │               ├──  20200115/
     │               ├──  20200116/
     │               ├──  20200117/
     │               ├──  20200118/
     │               ├──  20200119/
     │               ├──  20200120/
     │               ├──  20200121/
     │               ├──  20200122/
     │               ├──  20200123/
     │               ├──  20200124/
     │               ├──  20200125/
     │               ├──  20200126/
     │               ├──  20200127/
     │               ├──  20200128/
     │               ├──  20200129/
     │               ├──  20200130/
     │               ├──  20200131/
     │               ├──  20200201/
     │               ├──  20200202/
     │               ├──  20200203/
     │               ├──  20200204/
     │               ├──  20200205/
     │               ├──  20200206/
     │               ├──  20200207/
     │               ├──  20200208/
     │               ├──  20200209/
     │               ├──  20200210/
     │               ├──  20200211/
     │               ├──  20200212/
     │               ├──  20200213/
     │               ├──  20200214/
     │               ├──  20200215/
     │               ├──  20200216/
     │               ├──  20200217/
     │               ├──  20200218/
     │               ├──  20200219/
     │               ├──  20200220/
     │               ├──  20200221/
     │               ├──  20200222/
     │               ├──  20200223/
     │               ├──  20200224/
     │               ├──  20200225/
     │               ├──  20200226/
     │               ├──  20200227/
     │               ├──  20200228/
     │               ├──  20200229/
     │               ├──  20200301/
     │               ├──  20200302/
     │               ├──  20200303/
     │               ├──  20200304/
     │               ├──  20200305/
     │               ├──  20200306/
     │               ├──  20200307/
     │               ├──  20200308/
     │               ├──  20200309/
     │               ├──  20200310/
     │               ├──  20200311/
     │               ├──  20200312/
     │               ├──  20200313/
     │               ├──  20200314/
     │               ├──  20200315/
     │               ├──  20200316/
     │               ├──  20200317/
     │               ├──  20200318/
     │               ├──  20200319/
     │               ├──  20200320/
     │               ├──  20200321/
     │               ├──  20200322/
     │               ├──  20200323/
     │               ├──  20200324/
     │               ├──  20200325/
     │               ├──  20200326/
     │               ├──  20200327/
     │               ├──  20200328/
     │               ├──  20200329/
     │               ├──  20200330/
     │               ├──  20200331/
     │               ├──  20200401/
     │               ├──  20200402/
     │               ├──  20200403/
     │               ├──  20200404/
     │               ├──  20200405/
     │               ├──  20200406/
     │               ├──  20200407/
     │               ├──  20200408/
     │               ├──  20200409/
     │               ├──  20200410/
     │               ├──  20200411/
     │               ├──  20200412/
     │               ├──  20200413/
     │               ├──  20200414/
     │               ├──  20200415/
     │               ├──  20200416/
     │               ├──  20200417/
     │               ├──  20200418/
     │               ├──  20200419/
     │               ├──  20200420/
     │               ├──  20200421/
     │               ├──  20200422/
     │               ├──  20200423/
     │               ├──  20200424/
     │               ├──  20200425/
     │               ├──  20200426/
     │               ├──  20200427/
     │               ├──  20200428/
     │               ├──  20200429/
     │               ├──  20200430/
     │               ├──  20200501/
     │               ├──  20200502/
     │               ├──  20200503/
     │               ├──  20200504/
     │               ├──  20200505/
     │               ├──  20200506/
     │               ├──  20200507/
     │               ├──  20200508/
     │               ├──  20200509/
     │               ├──  20200510/
     │               ├──  20200511/
     │               ├──  20200512/
     │               ├──  20200513/
     │               ├──  20200514/
     │               ├──  20200515/
     │               ├──  20200516/
     │               ├──  20200517/
     │               ├──  20200518/
     │               ├──  20200519/
     │               ├──  20200520/
     │               ├──  20200521/
     │               ├──  20200522/
     │               ├──  20200523/
     │               ├──  20200524/
     │               ├──  20200525/
     │               ├──  20200526/
     │               ├──  20200527/
     │               ├──  20200528/
     │               ├──  20200529/
     │               ├──  20200530/
     │               ├──  20200531/
     │               ├──  20200601/
     │               ├──  20200602/
     │               ├──  20200603/
     │               ├──  20200604/
     │               ├──  20200605/
     │               ├──  20200606/
     │               ├──  20200607/
     │               ├──  20200608/
     │               ├──  20200609/
     │               ├──  20200610/
     │               ├──  20200611/
     │               ├──  20200612/
     │               ├──  20200613/
     │               ├──  20200614/
     │               ├──  20200615/
     │               ├──  20200616/
     │               ├──  20200617/
     │               ├──  20200618/
     │               ├──  20200619/
     │               ├──  20200620/
     │               ├──  20200621/
     │               ├──  20200622/
     │               ├──  20200623/
     │               ├──  20200624/
     │               ├──  20200625/
     │               ├──  20200626/
     │               ├──  20200627/
     │               ├──  20200628/
     │               ├──  20200629/
     │               ├──  20200630/
     │               ├──  20200701/
     │               ├──  20200702/
     │               ├──  20200703/
     │               ├──  20200704/
     │               ├──  20200705/
     │               ├──  20200706/
     │               ├──  20200707/
     │               ├──  20200708/
     │               ├──  20200709/
     │               ├──  20200710/
     │               ├──  20200711/
     │               ├──  20200712/
     │               ├──  20200713/
     │               ├──  20200714/
     │               ├──  20200715/
     │               ├──  20200716/
     │               ├──  20200717/
     │               ├──  20200718/
     │               ├──  20200719/
     │               ├──  20200720/
     │               ├──  20200721/
     │               ├──  20200722/
     │               ├──  20200723/
     │               ├──  20200724/
     │               ├──  20200725/
     │               ├──  20200726/
     │               ├──  20200727/
     │               ├──  20200728/
     │               ├──  20200729/
     │               ├──  20200730/
     │               ├──  20200731/
     │               ├──  20200801/
     │               ├──  20200802/
     │               ├──  20200803/
     │               ├──  20200804/
     │               ├──  20200805/
     │               ├──  20200806/
     │               ├──  20200807/
     │               ├──  20200808/
     │               ├──  20200809/
     │               ├──  20200810/
     │               ├──  20200811/
     │               ├──  20200812/
     │               ├──  20200813/
     │               ├──  20200814/
     │               ├──  20200815/
     │               ├──  20200816/
     │               ├──  20200817/
     │               ├──  20200818/
     │               ├──  20200819/
     │               ├──  20200820/
     │               ├──  20200821/
     │               ├──  20200822/
     │               ├──  20200823/
     │               ├──  20200824/
     │               ├──  20200825/
     │               ├──  20200826/
     │               ├──  20200827/
     │               ├──  20200828/
     │               ├──  20200829/
     │               ├──  20200830/
     │               ├──  20200831/
     │               ├──  20200901/
     │               ├──  20200902/
     │               ├──  20200903/
     │               ├──  20200904/
     │               ├──  20200905/
     │               ├──  20200906/
     │               ├──  20200907/
     │               ├──  20200908/
     │               ├──  20200909/
     │               ├──  20200910/
     │               ├──  20200911/
     │               ├──  20200912/
     │               ├──  20200913/
     │               ├──  20200914/
     │               ├──  20200915/
     │               ├──  20200916/
     │               ├──  20200917/
     │               ├──  20200918/
     │               ├──  20200919/
     │               ├──  20200920/
     │               ├──  20200921/
     │               ├──  20200922/
     │               ├──  20200923/
     │               ├──  20200924/
     │               ├──  20200925/
     │               ├──  20200926/
     │               ├──  20200927/
     │               ├──  20200928/
     │               ├──  20200929/
     │               ├──  20200930/
     │               ├──  20201001/
     │               ├──  20201002/
     │               ├──  20201003/
     │               ├──  20201004/
     │               ├──  20201005/
     │               ├──  20201006/
     │               ├──  20201007/
     │               ├──  20201008/
     │               ├──  20201009/
     │               ├──  20201010/
     │               ├──  20201011/
     │               ├──  20201012/
     │               ├──  20201013/
     │               ├──  20201014/
     │               ├──  20201015/
     │               ├──  20201016/
     │               ├──  20201017/
     │               ├──  20201018/
     │               ├──  20201019/
     │               ├──  20201020/
     │               ├──  20201021/
     │               ├──  20201022/
     │               ├──  20201023/
     │               ├──  20201024/
     │               ├──  20201025/
     │               ├──  20201026/
     │               ├──  20201027/
     │               ├──  20201028/
     │               ├──  20201029/
     │               ├──  20201030/
     │               ├──  20201031/
     │               ├──  20201101/
     │               ├──  20201102/
     │               ├──  20201103/
     │               ├──  20201104/
     │               ├──  20201105/
     │               ├──  20201106/
     │               ├──  20201107/
     │               ├──  20201108/
     │               ├──  20201109/
     │               ├──  20201110/
     │               ├──  20201111/
     │               ├──  20201112/
     │               ├──  20201113/
     │               ├──  20201114/
     │               ├──  20201115/
     │               ├──  20201116/
     │               ├──  20201117/
     │               ├──  20201118/
     │               ├──  20201119/
     │               ├──  20201120/
     │               ├──  20201121/
     │               ├──  20201122/
     │               ├──  20201123/
     │               ├──  20201124/
     │               ├──  20201125/
     │               ├──  20201126/
     │               ├──  20201127/
     │               ├──  20201128/
     │               ├──  20201129/
     │               ├──  20201130/
     │               ├──  20201201/
     │               ├──  20201202/
     │               ├──  20201203/
     │               ├──  20201204/
     │               ├──  20201205/
     │               ├──  20201206/
     │               ├──  20201207/
     │               ├──  20201208/
     │               ├──  20201209/
     │               ├──  20201210/
     │               ├──  20201211/
     │               ├──  20201212/
     │               ├──  20201213/
     │               ├──  20201214/
     │               ├──  20201215/
     │               ├──  20201216/
     │               ├──  20201217/
     │               ├──  20201218/
     │               ├──  20201219/
     │               ├──  20201220/
     │               ├──  20201221/
     │               ├──  20201222/
     │               ├──  20201223/
     │               ├──  20201224/
     │               ├──  20201225/
     │               ├──  20201226/
     │               ├──  20201227/
     │               ├──  20201228/
     │               ├──  20201229/
     │               ├──  20201230/
     │               ├──  20201231/
     │               ├──  20210101/
     │               ├──  20210102/
     │               ├──  20210103/
     │               ├──  20210104/
     │               ├──  20210105/
     │               ├──  20210106/
     │               ├──  20210107/
     │               ├──  20210108/
     │               ├──  20210109/
     │               ├──  20210110/
     │               ├──  20210111/
     │               ├──  20210112/
     │               ├──  20210113/
     │               ├──  20210114/
     │               ├──  20210115/
     │               ├──  20210116/
     │               ├──  20210117/
     │               ├──  20210118/
     │               ├──  20210119/
     │               ├──  20210120/
     │               ├──  20210121/
     │               ├──  20210122/
     │               ├──  20210123/
     │               ├──  20210124/
     │               ├──  20210125/
     │               ├──  20210126/
     │               ├──  20210127/
     │               ├──  20210128/
     │               ├──  20210129/
     │               ├──  20210130/
     │               ├──  20210131/
     │               ├──  20210201/
     │               ├──  20210202/
     │               ├──  20210203/
     │               ├──  20210204/
     │               ├──  20210205/
     │               ├──  20210206/
     │               ├──  20210207/
     │               ├──  20210208/
     │               ├──  20210209/
     │               ├──  20210210/
     │               ├──  20210211/
     │               ├──  20210212/
     │               ├──  20210213/
     │               ├──  20210214/
     │               ├──  20210215/
     │               ├──  20210216/
     │               ├──  20210217/
     │               ├──  20210218/
     │               ├──  20210219/
     │               ├──  20210220/
     │               ├──  20210221/
     │               ├──  20210222/
     │               ├──  20210223/
     │               ├──  20210224/
     │               ├──  20210225/
     │               ├──  20210226/
     │               ├──  20210227/
     │               ├──  20210228/
     │               ├──  20210301/
     │               ├──  20210302/
     │               ├──  20210303/
     │               ├──  20210304/
     │               ├──  20210305/
     │               ├──  20210306/
     │               ├──  20210307/
     │               ├──  20210308/
     │               ├──  20210309/
     │               ├──  20210310/
     │               ├──  20210311/
     │               ├──  20210312/
     │               ├──  20210313/
     │               ├──  20210314/
     │               ├──  20210315/
     │               ├──  20210316/
     │               ├──  20210317/
     │               ├──  20210318/
     │               ├──  20210319/
     │               ├──  20210320/
     │               ├──  20210321/
     │               ├──  20210322/
     │               ├──  20210323/
     │               ├──  20210324/
     │               ├──  20210325/
     │               ├──  20210326/
     │               ├──  20210327/
     │               ├──  20210328/
     │               ├──  20210329/
     │               ├──  20210330/
     │               ├──  20210331/
     │               ├──  20210401/
     │               ├──  20210402/
     │               ├──  20210403/
     │               ├──  20210404/
     │               ├──  20210405/
     │               ├──  20210406/
     │               ├──  20210407/
     │               ├──  20210408/
     │               ├──  20210409/
     │               ├──  20210410/
     │               ├──  20210411/
     │               ├──  20210412/
     │               ├──  20210413/
     │               ├──  20210414/
     │               ├──  20210415/
     │               ├──  20210416/
     │               ├──  20210417/
     │               ├──  20210418/
     │               ├──  20210419/
     │               ├──  20210420/
     │               ├──  20210421/
     │               ├──  20210422/
     │               ├──  20210423/
     │               ├──  20210424/
     │               ├──  20210425/
     │               ├──  20210426/
     │               ├──  20210427/
     │               ├──  20210428/
     │               ├──  20210429/
     │               ├──  20210430/
     │               ├──  20210501/
     │               ├──  20210502/
     │               ├──  20210503/
     │               ├──  20210504/
     │               ├──  20210505/
     │               ├──  20210506/
     │               ├──  20210507/
     │               ├──  20210508/
     │               ├──  20210509/
     │               ├──  20210510/
     │               ├──  20210511/
     │               ├──  20210512/
     │               ├──  20210513/
     │               ├──  20210514/
     │               ├──  20210515/
     │               ├──  20210516/
     │               ├──  20210517/
     │               ├──  20210518/
     │               ├──  20210519/
     │               ├──  20210520/
     │               ├──  20210521/
     │               ├──  20210522/
     │               ├──  20210523/
     │               ├──  20210524/
     │               ├──  20210525/
     │               ├──  20210526/
     │               ├──  20210527/
     │               ├──  20210528/
     │               ├──  20210529/
     │               ├──  20210530/
     │               ├──  20210531/
     │               ├──  20210601/
     │               ├──  20210602/
     │               ├──  20210603/
     │               ├──  20210604/
     │               ├──  20210605/
     │               ├──  20210606/
     │               ├──  20210607/
     │               ├──  20210608/
     │               ├──  20210609/
     │               ├──  20210610/
     │               ├──  20210611/
     │               ├──  20210612/
     │               ├──  20210613/
     │               ├──  20210614/
     │               ├──  20210615/
     │               ├──  20210616/
     │               ├──  20210617/
     │               ├──  20210618/
     │               ├──  20210619/
     │               ├──  20210620/
     │               ├──  20210621/
     │               ├──  20210622/
     │               ├──  20210623/
     │               ├──  20210624/
     │               ├──  20210625/
     │               ├──  20210626/
     │               ├──  20210627/
     │               ├──  20210628/
     │               ├──  20210629/
     │               ├──  20210630/
     │               ├──  20210701/
     │               ├──  20210702/
     │               ├──  20210703/
     │               ├──  20210704/
     │               ├──  20210705/
     │               ├──  20210706/
     │               ├──  20210707/
     │               ├──  20210708/
     │               ├──  20210709/
     │               ├──  20210710/
     │               ├──  20210711/
     │               ├──  20210712/
     │               ├──  20210713/
     │               ├──  20210714/
     │               ├──  20210715/
     │               ├──  20210716/
     │               ├──  20210717/
     │               ├──  20210718/
     │               ├──  20210719/
     │               ├──  20210720/
     │               ├──  20210721/
     │               ├──  20210722/
     │               ├──  20210723/
     │               ├──  20210724/
     │               ├──  20210725/
     │               ├──  20210726/
     │               ├──  20210727/
     │               ├──  20210728/
     │               ├──  20210729/
     │               ├──  20210730/
     │               ├──  20210731/
     │               ├──  20210801/
     │               ├──  20210802/
     │               ├──  20210803/
     │               ├──  20210804/
     │               ├──  20210805/
     │               ├──  20210806/
     │               ├──  20210807/
     │               ├──  20210808/
     │               ├──  20210809/
     │               ├──  20210810/
     │               ├──  20210811/
     │               ├──  20210812/
     │               ├──  20210813/
     │               ├──  20210814/
     │               ├──  20210815/
     │               ├──  20210816/
     │               ├──  20210817/
     │               ├──  20210818/
     │               ├──  20210819/
     │               ├──  20210820/
     │               ├──  20210821/
     │               ├──  20210822/
     │               ├──  20210823/
     │               ├──  20210824/
     │               ├──  20210825/
     │               ├──  20210826/
     │               ├──  20210827/
     │               ├──  20210828/
     │               ├──  20210829/
     │               ├──  20210830/
     │               ├──  20210831/
     │               ├──  20210901/
     │               ├──  20210902/
     │               ├──  20210903/
     │               ├──  20210904/
     │               ├──  20210905/
     │               ├──  20210906/
     │               ├──  20210907/
     │               ├──  20210908/
     │               ├──  20210909/
     │               ├──  20210910/
     │               ├──  20210911/
     │               ├──  20210912/
     │               ├──  20210913/
     │               ├──  20210914/
     │               ├──  20210915/
     │               ├──  20210916/
     │               ├──  20210917/
     │               ├──  20210918/
     │               ├──  20210919/
     │               ├──  20210920/
     │               ├──  20210921/
     │               ├──  20210922/
     │               ├──  20210923/
     │               ├──  20210924/
     │               ├──  20210925/
     │               └──  20210926/
     ├──  USB256GB-20220806/
     │   ├──  PT4A/
     │   │   └──  README.md
     │   ├──  README.md
     │   ├──  Readme1_Rev.2.1.txt
     │   ├──  Readme2_tree_2022.txt
     │   ├──  Readme3_USB_MOUNT_REV.2.1.txt
     │   ├──  Readme4_PT4A_REV.2.2.txt
     │   └──  data/
     │       ├──  Structured_data/
     │       │   ├──  Readme_Rev.2.1.txt
     │       │   ├──  amedas/
     │       │   ├──  format/
     │       │   │   ├──  amed_item_flag.csv
     │       │   │   ├──  amed_item_list.csv
     │       │   │   ├──  amed_list.csv
     │       │   │   └──  amed_list.txt
     │       │   └──  samples/
     │       │       ├──  HEIKIN_KION.sh
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
     │       │       └──  SAKURA_KAIKA.sh
     │       └──  Unstructured_data/
     │           ├──  README.txt
     │           ├──  References/
     │           │   ├──  kemotw.pdf
     │           │   └──  kemotw2.pdf
     │           ├──  TUTORIAL.txt
     │           └──  Tokyo2020/
     ├──  USB256GB-20221001/
     │   ├──  PT4A/
     │   │   └──  README.md
     │   ├──  README.md
     │   ├──  Readme1_Rev.2.1.txt
     │   ├──  Readme2_tree_2022.txt
     │   ├──  Readme3_USB_MOUNT_REV.2.1.txt
     │   ├──  Readme4_PT4A_REV.2.2.txt
     │   └──  data/
     │       ├──  Structured_data/
     │       │   ├──  Readme_Rev.2.1.txt
     │       │   ├──  amedas/
     │       │   ├──  format/
     │       │   │   ├──  amed_item_flag.csv
     │       │   │   ├──  amed_item_list.csv
     │       │   │   ├──  amed_list.csv
     │       │   │   └──  amed_list.txt
     │       │   └──  samples/
     │       │       ├──  HEIKIN_KION.sh
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
     │       │       └──  SAKURA_KAIKA.sh
     │       └──  Unstructured_data/
     │           ├──  README.txt
     │           ├──  References/
     │           │   ├──  kemotw.pdf
     │           │   └──  kemotw2.pdf
     │           ├──  TUTORIAL.txt
     │           └──  Tokyo2020/
     └──  workspace/
         └──  tmptools/
             ├──  do8.sh
             ├──  makeusb.sh
             ├──  mmm.sh
             ├──  uuu.sh
             └──  xxx.sh
     
     1557 directories, 1020 files (Tue Oct  4 10:58:18 JST 2022)


Note: URL = https://github.com/hohno-46466/dZone--PT4A--USBstorage

Note: URL = git@github.com:hohno-46466/dZone--PT4A--USBstorage.git

-EOF-


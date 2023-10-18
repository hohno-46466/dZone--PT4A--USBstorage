################################################################################
#
# 金沢大学 学術メディア創成センター MONKチーム
#
# PT4A インストール方法
#
# 作成者・連絡先:
#     金沢大学学術メディア創成センター 大野、森
#     USP研究所 綿野 <s-watano@usp-lab.com>、山田<m-yamada@usp-lab.com>、松浦 <t-matsuura@usp-lab.com>
# 最終更新日   : 2023年10月17日
#
################################################################################

<<PT4A インストール方法(Windowds)>>

(0) 「Readme3_USB_MOUNT_REV.3.0.txt／Readme3_USB_MOUNT_REV.3.0_JPonly.txt」に書かれている、
    <<Windows10で、WSLを使用している場合のUSBメモリマウント方法>>の作業を終了させる。


------------------
※(1)からの操作は「WSL」のウインドウで実行すること。
  なお、ここからはWSLに入力するコマンドを書いた行の行頭には「$」を書きます。
  「$」は、「これ以降にコマンドを表示する」という目印です。
  実際に、WSLにコマンドを入力するときには、「$」は入力しないこと。
------------------


(1) WSLで以下のコマンドを実行し、作業用ディレクトリ（カレントディレクトリと呼びます）に移動する。

$ cd /mnt/usb/PT4A/（↲エンターキーを押す/Press the Enter key）

なお、WSLで以下のコマンドを実行し、WSLの画面に「/mnt/usb/PT4A/」と表示されない場合は、マウントからやり直すこと。

$ pwd （↲エンターキーを押す/Press the Enter key）


(2) WSLで以下のコマンドを実行し、PT4Aのファイルを確認する。

$ ls（↲エンターキーを押す/Press the Enter key）

以下の表示がされない場合は、(1)をやり直すこと。

PT4A_CentOS_20230223.tar.gz    PT4A_M1Mac_20230225.tar.gz
PT4A_IntelMac_20230226.tar.gz  PT4A_Ubuntu22_20230223.tar.gz


(3) WSLで以下のコマンドを実行し、ファイルを解凍する。

$ tar -zxvf PT4A_Ubuntu22_20230223.tar.gz（↲エンターキーを押す/Press the Enter key）

以下の表示がされれば良い。

PT4A/
PT4A/UNINSTALL.SH
PT4A/PT4A_License_2023.pdf
PT4A/uspTukubai-20230223.tar.gz
PT4A/INSTALL_JP.TXT
PT4A/INSTALL_EN.TXT
PT4A/INSTALL.SH


(4) WSLで以下のコマンドを実行し、「PT4A」というディレクトリが作成されていることを確認する。

$ ls（↲エンターキーを押す/Press the Enter key）

以下の表示がされれば良い。

PT4A/                        PT4A_IntelMac_20230226.tar.gz  PT4A_Ubuntu22_20230223.tar.gz
PT4A_CentOS_20230223.tar.gz  PT4A_M1Mac_20230225.tar.gz


(5) WSLで以下のコマンドを実行し、「PT4A」のディレクトリに移動する。

$ cd PT4A（↲エンターキーを押す/Press the Enter key）


(6) WSLで以下のコマンドを実行し、ディレクトリ内のファイルを確認する。

$ ls（↲エンターキーを押す/Press the Enter key）

以下の表示がされれば良い。

INSTALL.SH*  INSTALL_EN.TXT*  INSTALL_JP.TXT*  PT4A_License_2023.pdf*  UNINSTALL.SH*  uspTukubai-20230223.tar.gz*

(7) WSLで以下のコマンドを実行し、PT4Aをインストールする。

$ sudo ./INSTALL.SH（↲エンターキーを押す/Press the Enter key）

※「sudo」を最初に書いたコマンドを実行すると、WSLインストール時の初期設定で入力したパスワードの入力を要求されるので、間違えずに入力すること。

※なお、ここでパスワードを入力しても、画面上は●や＊が表示されることはありません。
  しかし、システム上は入力されているので、そのままパスワードを入力し、入力し終わったら、エンターキーを押してください。


(8) 一度、WSLのウインドウを閉じて、改めて、WSLを起動する。


(9) WSLのウインドウを再起動後、WSLで以下のコマンドを実行し、インストールしたPT4Aが使用できるか確認する。

$ which gyo（↲エンターキーを押す/Press the Enter key）

以下の表示がされれば、PT4Aのインストール作業は終了である。

/opt/usp/TOOL/gyo


(10) (9)の操作で、WSLの画面に「/opt/usp/TOOL/gyo」が表示されない場合は、
WSLで以下のコマンドを実行し、「PT4A」のコマンドにパスを設定する。

$ echo "export PATH=/opt/usp/TOOL:/opt/usp/UTL:$PATH" >> ~/.bashrc

作業が上手くいくと、何も表示されないので、(8)の作業からやり直すこと。


以上

################################################################################

≪履歴≫

 2021年8月5日 Ver.2.0
 2022年8月4日 Ver.2.2
 2022年10月1日 Ver.2.2a （ファイル名は変更せず）
 2023年8月3日 Ver.2.3
 2023年9月29日 Ver.3.0


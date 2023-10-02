################################################################################
#
# 金沢大学 学術メディア創成センター MONKチーム
# MONK Team, Emerging Media Initiative, Kanazawa University
#
# PT4A インストール方法
# PT4A installation instructions
#
# 作成者・連絡先:
# Author/Contact:
#     金沢大学学術メディア創成センター 大野、森
#     Emerging Media Initiative, Kanazawa University: Ohno, Mori
#     USP研究所 綿野 <s-watano@usp-lab.com>、山田<m-yamada@usp-lab.com>、松浦 <t-matsuura@usp-lab.com>
#     UniversalShellProgrammingLaboratory: Watano, Yamada, Matsuura
# 最終更新日   : 2023年9月29日
# Last updated : September 29, 2023
#
################################################################################

<<PT4A インストール方法(Windowds)/PT4A Installation Instructions (Windowds)>>

(0) 「Readme3_USB_MOUNT_REV.3.0.txt／Readme3_USB_MOUNT_REV.3.0_JPonly.txt」に書かれている、
    <<Windows10で、WSLを使用している場合のUSBメモリマウント方法>>の作業を終了させる。
(0) In "Readme3_USB_MOUNT_REV.3.0.txt/Readme3_USB_MOUNT_REV.3.0_JPonly.txt",
    <<How to mount a USB flash drive when using WSL on Windows 10/11>>.


------------------
※(1)からの操作は「WSL」のウインドウで実行すること。
  なお、ここからはWSLに入力するコマンドを書いた行の行頭には「$」を書きます。
  「$」は、「これ以降にコマンドを表示する」という目印です。
  実際に、WSLにコマンドを入力するときには、「$」は入力しないこと。

* All operations from (1) on must be performed in the "WSL" window.
  From here on, a "$" should be written at the beginning of each line containing a command to be entered into WSL.
  The "$" is a marker to indicate that the command will be displayed after this.
  When actually entering commands into the WSL, do not enter "$".
------------------


(1) WSLで以下のコマンドを実行し、作業用ディレクトリ（カレントディレクトリと呼びます）に移動する。
(1) Execute the following command in WSL and move to the working directory (called the current directory).

$ cd /mnt/usb/PT4A/（↲エンターキーを押す/Press the Enter key）

なお、WSLで以下のコマンドを実行し、WSLの画面に「/mnt/usb/PT4A/」と表示されない場合は、マウントからやり直すこと。
If the following command is executed in WSL and "/mnt/usb/PT4A/" does not appear on the WSL screen, start over from the mount.

$ pwd （↲エンターキーを押す/Press the Enter key）


(2) WSLで以下のコマンドを実行し、PT4Aのファイルを確認する。
(2) Execute the following command in WSL to check the PT4A file.

$ ls（↲エンターキーを押す/Press the Enter key）

以下の表示がされない場合は、(1)をやり直すこと。
If the following is not displayed, redo (1).

PT4A_CentOS_20230223.tar.gz    PT4A_M1Mac_20230225.tar.gz
PT4A_IntelMac_20230226.tar.gz  PT4A_Ubuntu22_20230223.tar.gz


(3) WSLで以下のコマンドを実行し、ファイルを解凍する。
(3) Execute the following command in WSL to extract the file.

$ tar -zxvf PT4A_WSL2_Ubuntu.tar.gz（↲エンターキーを押す/Press the Enter key）

以下の表示がされれば良い。
The following should be displayed.

PT4A/
PT4A/UNINSTALL.SH
PT4A/PT4A_License_2023.pdf
PT4A/uspTukubai-20230223.tar.gz
PT4A/INSTALL_JP.TXT
PT4A/INSTALL_EN.TXT
PT4A/INSTALL.SH


(4) WSLで以下のコマンドを実行し、「PT4A」というディレクトリが作成されていることを確認する。
(4) Execute the following command in WSL and confirm that the directory "PT4A" is created.

$ cd PT4A（↲エンターキーを押す/Press the Enter key）

以下の表示がされれば良い。
The following should be displayed.

PT4A/                        PT4A_IntelMac_20230226.tar.gz  PT4A_Ubuntu22_20230223.tar.gz
PT4A_CentOS_20230223.tar.gz  PT4A_M1Mac_20230225.tar.gz


(5) WSLで以下のコマンドを実行し、「PT4A」のディレクトリに移動する。
(5) Execute the following command in WSL and move to the directory "PT4A".

$ cd PT4A（↲エンターキーを押す/Press the Enter key）


(6) WSLで以下のコマンドを実行し、ディレクトリ内のファイルを確認する。
(6) Execute the following command in WSL to check the files in the directory.

$ ls（↲エンターキーを押す/Press the Enter key）

以下の表示がされれば良い。
The following should be displayed.

INSTALL.SH*  INSTALL_EN.TXT*  INSTALL_JP.TXT*  PT4A_License_2023.pdf*  UNINSTALL.SH*  uspTukubai-20230223.tar.gz*

(7) WSLで以下のコマンドを実行し、PT4Aをインストールする。
(7) Execute the following command in WSL to install PT4A.

$ sudo ./INSTALL.SH（↲エンターキーを押す/Press the Enter key）

※「sudo」を最初に書いたコマンドを実行すると、WSLインストール時の初期設定で入力したパスワードの入力を要求されるので、間違えずに入力すること。
* When you execute the command with "sudo" written first, 
  you will be asked to enter the password you entered in the initial setup when installing WSL, 
  so be sure to enter it correctly.

※なお、ここでパスワードを入力しても、画面上は●や＊が表示されることはありません。
  しかし、システム上は入力されているので、そのままパスワードを入力し、入力し終わったら、エンターキーを押してください。
* When you enter the password here, no ● or * will appear on the screen.
  However, since it is entered in the system, enter the password as it is, and press the Enter key when you are finished.


(8) 一度、WSLのウインドウを閉じて、改めて、WSLを起動する。
(8) Close the WSL window once and start WSL again.


(9) WSLのウインドウを再起動後、WSLで以下のコマンドを実行し、インストールしたPT4Aが使用できるか確認する。
(9) After restarting the WSL window, execute the following commands in WSL to check if the installed PT4A is available.

$ which gyo（↲エンターキーを押す/Press the Enter key）

以下の表示がされれば、PT4Aのインストール作業は終了である。
The PT4A installation process is complete when the following is displayed

/opt/usp/TOOL/gyo


(10) (9)の操作で、WSLの画面に「/opt/usp/TOOL/gyo」が表示されない場合は、
WSLで以下のコマンドを実行し、「PT4A」のコマンドにパスを設定する。
(10) If "/opt/usp/TOOL/gyo" does not appear on the WSL screen after the operation in (9),
Execute the following command in WSL and set the path to the "PT4A" command.

$ echo "export PATH=/opt/usp/TOOL:/opt/usp/UTL:$PATH" >> ~/.bashrc

作業が上手くいくと、何も表示されないので、(8)の作業からやり直すこと。
If the work is successful, nothing will be displayed, and you should start over from (8).


以上
That is all.
################################################################################

≪履歴/Update History≫

 2021年8月5日 Ver.2.0
 2022年8月4日 Ver.2.2
 2022年10月1日 Ver.2.2a
 2022年10月11日 Ver.2.4
 2023年9月29日 Ver.3.0
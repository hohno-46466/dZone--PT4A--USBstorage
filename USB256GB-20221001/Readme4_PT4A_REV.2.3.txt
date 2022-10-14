################################################################################
#
# 金沢大学 大学院科目
# Kanazawa University Graduate School Subjects
# 「2022年度 スマート創成科学（第1回から第3回）」向け
# For "2022 Smart Science and Technology for Innovation(1st-3rd)"
#
# PT4A インストール方法
# PT4A installation instructions
#
# 作成者・連絡先:
# Author/Contact:
#     金沢大学学術メディア創成センター 大野、森
#     Emerging Media Initiative, Kanazawa University: Ohno, Mori
# 　　USP研究所 綿野 <s-watano@usp-lab.com>、山田<m-yamada@usp-lab.com>、松浦 <t-matsuura@usp-lab.com>
#     UniversalShellProgrammingLaboratory: Watano, Yamada, Matsuura
# 最終更新日   : 2022年10月12日
# Last updated : October 12, 2022
#
################################################################################

<<PT4A インストール方法(Windowds)/PT4A Installation Instructions (Windowds)>>

（１）「Readme3_USB_MOUNT_REV.2.2.txt」で書かれている、
　　　<<Windows10/11で、WSLを使用している場合のUSBメモリマウント方法>>の作業を終了させてください。
      Finish the work written in "Readme3_USB_MOUNT_REV.2.2.txt",
      <<How to mount USB memory stick when using WSL on Windows10/11>>.

ここからの操作は「WSL」のウインドウで実行してください。
From this point on, please execute the operation with "WSL".


（２）作業用のディレクトリ（カレントディレクトリと呼びます）に移動します。
      Move to the working directory (called the current directory).
移動するために、以下のコマンドを入力してください。
To move, enter the following command.

$ cd /mnt/usb/PT4A/（↲エンターキーを押す/Press the Enter key）


（３）PT4Aのファイルを確認します。
      Check the PT4A file.
以下のコマンドを入力してファイルを確認してください。
Enter the following command to check the file.

$ ls（↲エンターキーを押す/Press the Enter key）

以下のように表示されるか確認します。
Check if the following is displayed.

PT4A_MacIntel.tar.gz  PT4A_MacM1.tar.gz  PT4A_WSL2_Ubuntu.tar.gz  PT4A_ubuntu20.tar.gz  README.md


（４）ファイルの解凍作業をします。
      Unzip the file.
以下のコマンドを入力してファイルを解凍してください。
Enter the following command to unzip the file.

$ tar -zxvf PT4A_WSL2_Ubuntu.tar.gz（↲エンターキーを押す/Press the Enter key）

以下のような表示がされれば、（４）の作業成功です。
If the following is displayed, (4) has been successfully completed.

PT4A/
PT4A/INSTALL.SH
PT4A/UNINSTALL.SH
PT4A/INSTALL.TXT
PT4A/ライセンス契約書.pdf
PT4A/uspTukubai-yyyymmdd.tar.gz
  ※yyyymmdd の部分は実施には年月日を示す８桁の数字。たとえば 20220208
    The yyyymmdd part is an 8-digit number indicating the date and time for implementation. For example, 20220208


（５）「PT4A」のディレクトリに移動します。
      Go to the "PT4A" directory.
PT4Aディレクトリができているので、以下のコマンドを入力して、「PT4A」のディレクトリに移動してください。
Since the PT4A directory has been created, enter the following command

$ cd PT4A（↲エンターキーを押す/Press the Enter key）


（６）ディレクトリ内のファイルを確認します。
      Check the files in the directory.
以下のコマンドを入力して、「PT4A」のディレクトリ内のファイルを確認してください。
Enter the following command to check the files in the "PT4A" directory.

$ ls（↲エンターキーを押す/Press the Enter key）

ここまでの作業が正しく進んでいたら以下のようなメッセージが表示されます。
If the work up to this point has proceeded correctly, the following message will be displayed.

INSTALL.SH  INSTALL_EN.TXT  INSTALL_JP.TXT  UNINSTALL.SH  uspTukubai-20220208.tar.gz  ライセンス契約書.pdf


（７）PT4Aをインストールするためのプログラム(INSTALL.SH)を実行します。
      Run the program (INSTALL.SH) to install PT4A.
以下のコマンドを入力して、PT4Aをインストールするためのプログラムを実行してください。
Enter the following command to run the program to install PT4A.

$ sudo ./INSTALL.SH（↲エンターキーを押す/Press the Enter key）

すると、WSLの初期設定で入力したパスワードの入力を要求されるので、入力してください。
You will then be asked to enter the password you entered in the initial WSL setup.
なお、ここでパスワードを入力しても、画面上は●や＊が表示されることはありません。
Note that even if you enter the password here, ● or * will not be displayed on the screen.
しかし、システム上は入力されているので、そのままパスワードを入力し、入力し終わったら、エンターキーを押してください。
However, since it is entered in the system, enter the password as it is, and press the Enter key when you have finished typing.


（８）一度、WSLのウインドウを閉じて、改めて、WSLを起動してください。
      Close the WSL window and start WSL again.

（９）WSLのウインドウを再起動後、インストールしたPT4Aが使用できるか確認します。
      After restarting the WSL window, check if the installed PT4A is available.
以下のコマンドを入力して、PT4Aのコマンドが使用できるか確認してください。
Enter the following commands to check if PT4A commands can be used.

$ which gyo（↲エンターキーを押す/Press the Enter key）

以下のように表示されるか確認します。
Check if the following is displayed.

/opt/usp/TOOL/gyo


何も表示されない場合は、次の（１０）の作業をしてください。
If nothing is displayed, do the next step (10).
表示された場合は、ここで作業は終了です。
If anything is displayed, the work is completed here.



################################################################################

≪履歴/Update History≫

 2021年8月5日 Ver.2.0
 2022年8月4日 Ver.2.2
 2022年10月1日 Ver.2.2a
 2022年10月11日 Ver.2.3

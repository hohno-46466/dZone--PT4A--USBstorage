################################################################################
#
# 金沢大学 大学院科目
# Kanazawa University Graduate School Subjects
# 「2022年度 スマート創成科学（第1回から第3回）」向け
# For "2022 Smart Science and Technology for Innovation(1st-3rd)"
#
# Windows10/11のWSLでUSBメモリを使用するためのマウント方法
# How to mount USB memory stick for use with WSL on Windows 10/11
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

<<注意/Attention>>

以下の内容は、Windows10/11のパソコン（ノート型、デスクトップ型を問わない）を使用している方のみに向けたものです。
The following content is intended only for users of Windows 10/11 computers (whether laptop or desktop).
macOSの場合は、以下の内容の作業を行わなくてもターミナルからアクセスすることができます。
For macOS, the following operations are not performed.

なお、分からない単語がある場合は、Google検索等で検索して、調べてください。　
If you do not understand a word, please search for it on Google or other search engines.　
作業内容が分からない、上手く行かない場合は、アカンサスポータルから、担当教員（大野、森）にメッセージで質問してください。
If you do not understand the work or if it does not go well,
please send a message to the faculty members in charge (Ohno or Mori) via the Acanthus Portal.



################################################################################

<<Windows10/11で、WSLを使用している場合のUSBメモリマウント方法/How to mount a USB memory stick when using WSL on Windows 10/11>>

（１）USBメモリをパソコンに挿し込み、エクスプローラーなどでUSBメモリにアクセスできることを確認する。
      Insert the USB memory stick into the PC.

（２）以下のコマンドを実行し、マウントポイントとなるディレクトリ（フォルダ）を作成する。
      Execute the following command to create a directory (folder) that will be the mount point.

$ sudo mkdir /mnt/usb（↲エンターキーを押す/Press the Enter key）

注意：（２）から（５）の作業は、最初の１回だけ行います。
Note: Perform operations (2) through (5) only the first time.
      ２回目以降のマウントでは、（２）から（５）の作業は行いません。
      For the second and subsequent "mounts," do not perform operations (2) through (5).


    ※ここからの操作は「WSL」のウインドウで実行してください。
      All future operations should be performed in the "WSL" window.
      なお、これからは入力するコマンドを書いた行の行頭には「$」を書きます。
      Note that from now on, a "$" is written at the beginning of the line on which the command to be entered is written.
      これは、この「$」以降にコマンドを表示するという目印です。
      This "$" is a marker that the command is to be displayed.
      コマンドを入力するときには、「$」は入力してはいけません。
       When entering a command, do not type "$".


（３）（２）を実行すると、WSLの初期設定で入力したパスワードの入力を要求されるので、入力してください。
      After executing (2), you will be asked to enter the password you entered in the initial WSL setup.
      Please enter the password.
   ※なお、ここでパスワードを入力しても、画面上は●や＊が表示されることはありません。
     Note that even if you enter the password, ● or * will not appear on the screen.
     しかし、システム上は入力されているので、そのままパスワードを入力し、入力し終わったら、エンターキーを押してください。
     However, the password is entered in the system, so press the Enter key after entering the password.


（４）ディレクトリが作成されているか確認
      Check if the directory has been created.
画面上で、行が１つだけ下に移動したのなら（２）の作業は成功しています。
If only one line has moved down on the screen, then (2) has succeeded.
成功し、ディレクトリが作成されているか確認してみましょう。
Confirm that the directory has been created.
確認のためには、以下のコマンドを入力します。
To confirm, enter the following command

$ ls /mnt（↲エンターキーを押す/Press the Enter key）

画面に、usbの表示が出れば、（２）の作業が成功しています。
If "usb" appears on the screen, the operation (2) has been successful.


c  usb



（５）以下のコマンドを入力して、USBメモリを（２）で作ったディレクトリにマウントします。
      Enter the following command to mount the USB flash drive in the directory created in (2).
注意：以下のコマンドで入力している「z:」というアルファベット部分は、使っているパソコンによって異なります。
Note: The "z:" in the following command is a different alphabet on different computers.
Windows10/11のエクスプローラーなどを起動させて、自分のパソコン上で、USBメモリに割り振られたアルファベットを特定してください。
Please start Windows 10/11 Explorer to identify the alphabet assigned to the USB flash drive and then type it in.

$ sudo mount -t drvfs z: /mnt/usb（↲エンターキーを押す/Press the Enter key）


（６）「マウント」の成功を、USBメモリの内容を表示して確認します。
      Confirm the success of "Mount" by displaying the contents of the USB flash drive.
注意：画面上で、行が１つだけ下に移動したのならマウントは成功しています。
Note: If only one row is moved down on the screen, the "mount" has succeeded.
確認のために、以下のコマンドを入力します。
To confirm, enter the following command

$ ls /mnt/usb（↲エンターキーを押す/Press the Enter key）

以下のような表示がされればOKです。
If you see the following, it is OK.


PT4A				Readme2_tree.txt		         Readme4_PT4A_REV.2.0.txt          data
Readme1_Rev.2.0.txt		Readme3_USB_MOUNT_REV.2.0.txt	'System Volume Information'


何も表示されない場合は、マウントが失敗していると考えられます。
If nothing is displayed, the mount has failed.
コマンドの打ち間違いがないか、USBメモリーに割り当てられているドライブのアルファベットが正しいかを確認し、
改めて（５）のコマンドを入力してください。
Check that you have not typed the command incorrectly and that the alphabet of the drive assigned to the USB flash drive is correct,
and then type the command (5) again.


（７）USBメモリのディレクトリに移動する
      Go to the directory of the USB memory stick

以下のコマンドを入力して、ディレクトリを移動します。
Enter the following command to move the directory

$ cd /mnt/usb（↲エンターキーを押す/Press the Enter key）


注意：ディレクトリの移動について、

https://eng-entrance.com/linux-command-cd

のページに詳細が書かれていましたので、アクセスしてみると良いでしょう。


################################################################################

<<Windows10/11で、WSLを使用している場合のUSBメモリアンマウント方法/How to mount USB memory card on Windows 10/11 when using WSL>>

Linuxでは、使用していたUSBメモリをパソコンから抜き取る前には、必ず「アンマウント」という作業をします。
In Linux (WSL), before removing a USB memory stick that has been in use from a computer, you must "unmount".

（１）USBメモリ内のディレクトリで作業をしている場合、アンマウントできないので、
      最初に以下のコマンドを入力して、ディレクトリを移動します。
      If you are working in a directory on a USB flash drive, you cannot unmount it,
      so first move the directory by entering the following command

$ cd（↲エンターキーを押す/Press the Enter key）


（２）次に以下のコマンドを入力して、アンマウントします。
      Next, enter the following command to unmount.

$ sudo umount /mnt/usb（↲エンターキーを押す/Press the Enter key）


（３）パソコン（Windows）で、USBメモリの取り出し作業をします。
      On your PC (Windows), eject the USB memory stick.


（４）（３）の作業後、USBメモリをパソコンから取り外します。
      After the operation in (3), remove the USB memory from the computer.

################################################################################

≪履歴/Update History≫

 2021年8月5日  Ver.2.0
 2022年6月14日 Ver.2.1
 2022年10月1日 Ver.2.1a
 2022年10月11日 Ver.2.2

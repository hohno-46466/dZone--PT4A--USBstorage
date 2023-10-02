################################################################################
#
# 金沢大学 学術メディア創成センター MONKチーム
# MONK Team, Emerging Media Initiative, Kanazawa University
#
# Windows10/11のWSLでUSBメモリを使用するためのマウント方法
# How to mount USB flash drive for use with WSL on Windows 10/11
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

<<注意/Attention>>

以下の内容は、Windows10/11のパソコン（ノート型、デスクトップ型を問わない）を使用している方のみに向けたものです。
macOSの場合は、以下の内容の作業を行わなくてもターミナルからアクセスすることができます。

The following content is intended only for users of Windows 10/11 computers (whether laptop or desktop).
For macOS, the following operations are not performed.

なお、分からない単語がある場合は、Google検索等で検索して、調べてください。
If you do not understand a word, please search for it on Google or other search engines.

作業内容が分からない、上手く行かない場合は、アカンサスポータルから、担当教員（大野、森）にメッセージで質問してください。
If you do not understand the work or if it does not go well,
please send a message to the faculty members in charge (Ohno or Mori) via the Acanthus Portal.


################################################################################

<<Windows10/11で、WSLを使用している場合のUSBメモリマウント方法
       /How to mount a USB flash drive when using WSL on Windows 10/11>>

(0) USBメモリをパソコンに差し込み、Windows10/11のエクスプローラーでUSBメモリにアクセスできることを確認する。
(0) Insert the USB flash drive into your computer 
    and confirm that the USB flash drive can be accessed in Explorer of Windows10/11.


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


(1) WSLで以下のコマンドを実行し、マウントポイントとなるディレクトリ（フォルダ）を作成する。
    なお、この作業は、最初の１回だけ行う。
(1) Execute the following commands in WSL to create a directory (folder) to be used as a mount point.
    Note that this operation should be performed only once for the first time.

$ sudo mkdir /mnt/usb（↲エンターキーを押す/Press the Enter key）

※「sudo」を最初に書いたコマンドを実行すると、WSLインストール時の初期設定で入力したパスワードの入力を要求されるので、間違えずに入力すること。
* When you execute the command with "sudo" written first, 
  you will be asked to enter the password you entered in the initial setup when installing WSL, 
  so be sure to enter it correctly.

※なお、ここでパスワードを入力しても、画面上は●や＊が表示されることはありません。
  しかし、システム上は入力されているので、そのままパスワードを入力し、入力し終わったら、エンターキーを押してください。
* When you enter the password here, no ● or * will appear on the screen.
  However, since it is entered in the system, enter the password as it is, and press the Enter key when you are finished.


(2) WSLで以下のコマンドを実行し、ディレクトリが作成されているか確認する。
    Execute the following command in WSL to check if the directory has been created.

$ ls /mnt（↲エンターキーを押す/Press the Enter key）

WSLの画面に以下の表示が出れば、ディレクトリは作成できている。
If the following appears on the WSL screen, the directory has been created.

c  usb


注意：(1)と(2)の作業は、最初のマウント時に１回だけ行う。
     ２回目以降のマウントでは、(1)と(2)の作業は行わない。
Note: Perform steps (1) and (2) only once for the first mount.
      For the second and subsequent mountings, do not perform steps (1) and (2).



(3) WSLで以下のコマンドを実行し、USBメモリを(1)で作ったディレクトリにマウントする。
(3) Execute the following command in WSL to mount the USB flash drive in the directory created in (1).

$ sudo mount -t drvfs z: /mnt/usb（↲エンターキーを押す/Press the Enter key）

注意：このコマンドで入力している「z:」のアルファベット部分は、
     USBメモリを差し込んだパソコンによって自動的に設定されるドライブを表わしている。
     そのため、パソコンによって、異なるアルファベットが設定されている。
     USBメモリを差し込んだ後に、Windows10/11のエクスプローラーで、
     USBメモリに割り振られたアルファベットを確認すること。

Note: The alphabetical part of "z:" entered in this command represents the drive 
     that is automatically set by the computer into which the USB flash drive is inserted.
     Therefore, different alphabets are set for different computers.
     After inserting the USB flash drive, 
     check the alphabet assigned to the USB flash drive in Windows 10/11 Explorer.



(4) WSLで以下のコマンドを実行し、USBメモリをマウントできたことを確認する。
(4) Execute the following command in WSL and confirm that the USB flash drive has been mounted.

$ ls /mnt/usb（↲エンターキーを押す/Press the Enter key）

以下のような表示がされればマウント成功です。
If the following message is displayed, the mount is successful.

PT4A				Readme2_tree.txt		         Readme4_PT4A_REV.2.0.txt          data
Readme1_Rev.2.0.txt		Readme3_USB_MOUNT_REV.2.0.txt	'System Volume Information'


何も表示されない場合は、マウント失敗です。
If nothing is displayed, the mount has failed.

マウントに失敗する原因は２つです。
a) USBメモリーに割り当てられているドライブのアルファベットが間違っている。
b) a)以外で(3)のコマンドを間違っている。
There are two reasons why the mount may fail
a) The drive alphabet assigned to the USB memory is wrong.
b) You have made a mistake in the command (3) other than a).

a)、b)を確認し、もう一度、(3)を実行すること。
Check a) and b) and perform (3) again.


(5) WSLで以下のコマンドを実行し、USBメモリのディレクトリに移動する
(5) Execute the following command in WSL and move to the USB flash drive directory

$ cd /mnt/usb（↲エンターキーを押す/Press the Enter key）


注意：ディレクトリの移動については、
      https://eng-entrance.com/linux-command-cd
      に詳細が書かれているので、アクセスすること。
Note: For information on moving directories, 
      https://eng-entrance.com/linux-command-cd 
      for more information.


以上
That is all.
################################################################################

<<Windows10/11で、WSLを使用している場合のUSBメモリアンマウント方法
       /How to mount USB flash drive on Windows 10/11 when using WSL>>

Linux(WSL)では、マウントしたUSBメモリをパソコンから抜き取る前に、
必ず「アンマウント」をしなくてはならない。
In Linux (WSL), a mounted USB flash drive 
must be "unmounted" before it can be removed from the computer.

パソコンからUSBメモリを抜く前に、以下の手順に従って、必ずアンマウントすること。
Before unplugging the USB flash drive from the computer, 
be sure to unmount it according to the following procedure.

(1) WSLでUSBメモリ内のディレクトリで作業をしている場合、アンマウントできないので、
    WSLで以下のコマンドを実行し、ディレクトリを移動する。
(1) If you are working in a directory in a USB flash drive in WSL, 
    you cannot unmount it, Execute the following command in WSL to move the directory.

$ cd（↲エンターキーを押す/Press the Enter key）


(2) WSLで以下のコマンドを実行し、アンマウントする。
(2) Execute the following commands in WSL to unmount.

$ sudo umount /mnt/usb（↲エンターキーを押す/Press the Enter key）


(3) パソコン（Windows）で、USBメモリを取り出す操作をする。
(3) On your PC (Windows), perform the operation to eject the USB flash drive.

(4) (3)の作業後、USBメモリをパソコンから抜く。
(4) After the operation described in (3), unplug the USB flash drive from the computer.


以上
That is all.
################################################################################

≪履歴/Update History≫

 2021年8月5日  Ver.2.0
 2022年6月14日 Ver.2.1
 2022年10月1日 Ver.2.1a
 2022年10月11日 Ver.2.2
 2023年9月29日 Ver.3.0

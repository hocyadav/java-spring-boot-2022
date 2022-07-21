FasdUAS 1.101.10   ��   ��    k             i         I      �� 	���� "0 writetexttofile writeTextToFile 	  
  
 o      ���� 0 thetext theText      o      ���� 0 thefile theFile   ��  o      ���� 40 overwriteexistingcontent overwriteExistingContent��  ��    Q     e     k    >       l   ��  ��    #  Convert the file to a string     �   :   C o n v e r t   t h e   f i l e   t o   a   s t r i n g      r        c        o    ���� 0 thefile theFile  m    ��
�� 
TEXT  o      ���� 0 thefile theFile      l  	 	��������  ��  ��       !   l  	 	�� " #��   "    Open the file for writing    # � $ $ 4   O p e n   t h e   f i l e   f o r   w r i t i n g !  % & % r   	  ' ( ' I  	 �� ) *
�� .rdwropenshor       file ) 4   	 �� +
�� 
file + o    ���� 0 thefile theFile * �� ,��
�� 
perm , m    ��
�� boovtrue��   ( o      ���� 0 theopenedfile theOpenedFile &  - . - l   ��������  ��  ��   .  / 0 / l   �� 1 2��   1 6 0 Clear the file if content should be overwritten    2 � 3 3 `   C l e a r   t h e   f i l e   i f   c o n t e n t   s h o u l d   b e   o v e r w r i t t e n 0  4 5 4 Z   ' 6 7���� 6 =    8 9 8 o    ���� 40 overwriteexistingcontent overwriteExistingContent 9 m    ��
�� boovtrue 7 I   #�� : ;
�� .rdwrseofnull���     **** : o    ���� 0 theopenedfile theOpenedFile ; �� <��
�� 
set2 < m    ����  ��  ��  ��   5  = > = l  ( (��������  ��  ��   >  ? @ ? l  ( (�� A B��   A ( " Write the new content to the file    B � C C D   W r i t e   t h e   n e w   c o n t e n t   t o   t h e   f i l e @  D E D I  ( 3�� F G
�� .rdwrwritnull���     **** F o   ( )���� 0 thetext theText G �� H I
�� 
refn H o   * +���� 0 theopenedfile theOpenedFile I �� J K
�� 
as   J m   , -��
�� 
utf8 K �� L��
�� 
wrat L m   . /��
�� rdwreof ��   E  M N M l  4 4��������  ��  ��   N  O P O l  4 4�� Q R��   Q   Close the file    R � S S    C l o s e   t h e   f i l e P  T U T I  4 9�� V��
�� .rdwrclosnull���     **** V o   4 5���� 0 theopenedfile theOpenedFile��   U  W X W l  : :��������  ��  ��   X  Y Z Y l  : :�� [ \��   [ > 8 Return a boolean indicating that writing was successful    \ � ] ] p   R e t u r n   a   b o o l e a n   i n d i c a t i n g   t h a t   w r i t i n g   w a s   s u c c e s s f u l Z  ^ _ ^ L   : < ` ` m   : ;��
�� boovtrue _  a b a l  = =��������  ��  ��   b  c�� c l  = =�� d e��   d   Handle a write error    e � f f *   H a n d l e   a   w r i t e   e r r o r��    R      ������
�� .ascrerr ****      � ****��  ��    k   F e g g  h i h I  F M�� j��
�� .sysodlogaskr        TEXT j m   F I k k � l l 
 E r r o r��   i  m n m l  N N�� o p��   o   Close the file    p � q q    C l o s e   t h e   f i l e n  r s r Q   N b t u�� t I  Q Y�� v��
�� .rdwrclosnull���     **** v 4   Q U�� w
�� 
file w o   S T���� 0 thefile theFile��   u R      ������
�� .ascrerr ****      � ****��  ��  ��   s  x y x l  c c��������  ��  ��   y  z { z l  c c�� | }��   | 6 0 Return a boolean indicating that writing failed    } � ~ ~ `   R e t u r n   a   b o o l e a n   i n d i c a t i n g   t h a t   w r i t i n g   f a i l e d {  ��  L   c e � � m   c d��
�� boovfals��     � � � l     ��������  ��  ��   �  � � � i     � � � I      �� ����� 0 prependtext prependText �  � � � o      ���� (0 targetfilepathname targetFilePathname �  ��� � o      ����  0 thetexttowrite theTextToWrite��  ��   � k     � � �  � � � r      � � � m      � � � � �   � o      ���� "0 theoriginaltext theOriginalText �  � � � Q     � ��� � r     � � � l    ����� � I   �� � �
�� .rdwrread****        **** � o    ���� (0 targetfilepathname targetFilePathname � �� ���
�� 
as   � m   	 
��
�� 
utf8��  ��  ��   � o      ���� "0 theoriginaltext theOriginalText � R      ������
�� .ascrerr ****      � ****��  ��  ��   �  � � � l   �� � ���   � I C    # set theTextToWrite to theTextToWrite & "\n" & theOriginalText    � � � � �         #   s e t   t h e T e x t T o W r i t e   t o   t h e T e x t T o W r i t e   &   " \ n "   &   t h e O r i g i n a l T e x t �  � � � r    ! � � � b     � � � b     � � � o    ����  0 thetexttowrite theTextToWrite � m     � � � � �  
 � o    ���� "0 theoriginaltext theOriginalText � o      ����  0 thetexttowrite theTextToWrite �  ��� � Q   " � � � � � k   % @ � �  � � � r   % . � � � I  % ,�� � �
�� .rdwropenshor       file � o   % &���� (0 targetfilepathname targetFilePathname � �� ���
�� 
perm � m   ' (��
�� boovtrue��   � o      ���� "0 referencenumber referenceNumber �  � � � I  / :�� � �
�� .rdwrwritnull���     **** � o   / 0����  0 thetexttowrite theTextToWrite � �� � �
�� 
refn � o   1 2���� "0 referencenumber referenceNumber � �� � �
�� 
as   � m   3 4��
�� 
utf8 � �� ���
�� 
wrat � m   5 6����  ��   �  ��� � I  ; @�� ��
�� .rdwrclosnull���     **** � o   ; <�~�~ "0 referencenumber referenceNumber�  ��   � R      �} � �
�} .ascrerr ****      � **** � o      �|�| 0 estr eStr � �{ ��z
�{ 
errn � o      �y�y 0 enum eNum�z   � k   H � � �  � � � I  H m�x � �
�x .sysodlogaskr        TEXT � b   H O � � � b   H M � � � o   H I�w�w 0 estr eStr � m   I L � � � � �    n u m b e r   � o   M N�v�v 0 enum eNum � �u � �
�u 
btns � J   R W � �  ��t � m   R U � � � � �  O K�t   � �s � �
�s 
dflt � m   Z [�r�r  � �q � �
�q 
appr � m   ^ a � � � � � " F i l e   I / O   E r r o r . . . � �p ��o
�p 
disp � m   d g�n
�n stic   �o   �  � � � Q   n  � ��m � I  q v�l ��k
�l .rdwrclosnull���     **** � o   q r�j�j "0 referencenumber referenceNumber�k   � R      �i�h�g
�i .ascrerr ****      � ****�h  �g  �m   �  ��f � L   � ��e�e  �f  ��   �  � � � l     �d�c�b�d  �c  �b   �  � � � i     � � � I      �a ��`�a 0 
fileexists 
FileExists �  ��_ � o      �^�^ 0 thefile theFile�_  �`   � l     � � � � O      � � � Z     � ��] � � I   �\ ��[
�\ .coredoexnull���     **** � 4    �Z �
�Z 
file � o    �Y�Y 0 thefile theFile�[   � L     � � m    �X
�X boovtrue�]   � L     � � m    �W
�W boovfals � m      � ��                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   �   (String) as Boolean    � � � � (   ( S t r i n g )   a s   B o o l e a n �  � � � l     �V�U�T�V  �U  �T   �  ��S � i     � � � I     �R ��Q
�R .aevtoappnull  �   � **** � o      �P�P 0 argv  �Q   � k    z � �    l     �O�N�M�O  �N  �M    l     �L�L      very long time (24 hours)    � 4   v e r y   l o n g   t i m e   ( 2 4   h o u r s )  t    8	
	 k   7  l   �K�J�I�K  �J  �I    r     I   �H�G
�H .sysoloadscpt        file b     n     1    �F
�F 
psxp l   �E�D b     l   	�C�B I   	�A
�A .earsffdralis        afdr  f     �@�?
�@ 
rtyp m    �>
�> 
ctxt�?  �C  �B   m   	 
 �  : :�E  �D   m       �!!  u t i l i t y . s c p t�G   o      �=�= 0 utility   "#" l   �<�;�:�<  �;  �:  # $%$ r    &'& c    ()( n   *+* I    �9�8�7�9  0 getcurrentpath getCurrentPath�8  �7  + o    �6�6 0 utility  ) m    �5
�5 
TEXT' o      �4�4 0 currentpath currentPath% ,-, l     �3�2�1�3  �2  �1  - ./. r     %010 b     #232 o     !�0�0 0 currentpath currentPath3 m   ! "44 �55   : s e a r c h _ c o n t e n t :1 o      �/�/ &0 searchcontentpath searchContentPath/ 676 l  & &�.�-�,�.  �-  �,  7 898 l  & &�+:;�+  : #  Cache json path	(posix path)   ; �<< :   C a c h e   j s o n   p a t h 	 ( p o s i x   p a t h )9 =>= r   & 1?@? b   & -ABA l  & +C�*�)C n  & +DED I   ' +�(�'�&�( *0 getcurrentposixpath getCurrentPosixPath�'  �&  E o   & '�%�% 0 utility  �*  �)  B m   + ,FF �GG @ s e a r c h _ c o n t e n t / h t m l C a c h e L o g . j s o n@ o      �$�$ &0 htmlcachefilepath htmlCacheFilePath> HIH l  2 2�#�"�!�#  �"  �!  I JKJ r   2 ?LML b   2 ;NON l  2 7P� �P n  2 7QRQ I   3 7���� *0 getcurrentposixpath getCurrentPosixPath�  �  R o   2 3�� 0 utility  �   �  O m   7 :SS �TT B s e a r c h _ c o n t e n t / t h u m b N a i l P a t h . j s o nM o      �� 60 thumbnailpathjsonfilepath thumbNailPathJsonFilePathK UVU l  @ @����  �  �  V WXW l  @ @�YZ�  Y ? 9 todo: json�� ��� �ְų� ������ Ʋ���� ���⼭ ������ ��.   Z �[[ L   t o d o :   j s o n�t  �DŴ  ǈ�p��  ����t  �����t  ��0�  �з�   �� .X \]\ l  @ @�^_�  ^   todo: 1763 error   _ �`` "   t o d o :   1 7 6 3   e r r o r] aba Q   @ �cdec k   C ~ff ghg l  C C�ij�  i  
 cache map   j �kk    c a c h e   m a ph lml r   C Rnon I  C N�pq� 0 jsontorecord JSONtoRecordp o   C D�� 0 utility  q �r�
� 
fromr o   G J�� &0 htmlcachefilepath htmlCacheFilePath�  o o      �� 0 htmlcachejson htmlCacheJsonm sts r   S buvu I  S ^�wx� 0 jsontorecord JSONtoRecordw o   S T�� 0 utility  x �y�

� 
fromy o   W Z�	�	 60 thumbnailpathjsonfilepath thumbNailPathJsonFilePath�
  v o      �� &0 thumbnailpathjson thumbNailPathJsont z{z l  c c����  �  �  { |}| r   c o~~ n  c k��� I   d k���� 0 onmutablecopy onMutableCopy� ��� o   d g�� 0 htmlcachejson htmlCacheJson�  �  � o   c d� �  0 utility   o      ���� 0 htmlcachejson htmlCacheJson} ��� r   p |��� n  p x��� I   q x������� 0 onmutablecopy onMutableCopy� ���� o   q t���� &0 thumbnailpathjson thumbNailPathJson��  ��  � o   p q���� 0 utility  � o      ���� &0 thumbnailpathjson thumbNailPathJson� ���� l  } }��������  ��  ��  ��  d R      ������
�� .ascrerr ****      � ****��  ��  e L   � ��� m   � ��� ���  1 7 6 3b ��� l  � ���������  ��  ��  � ��� r   � ���� m   � ��� ��� � f o n t - f a m i l y :   " T r e b u c h e t   M S " ,   " L u c i d a   S a n s   U n i c o d e " ,   " L u c i d a   G r a n d e " ,   " L u c i d a   S a n s " ,   A r i a l ,   s a n s - s e r i f ; '� o      ���� &0 metadatafontstyle metaDataFontStyle� ��� l  � ���������  ��  ��  � ��� O   � ���� I  � ������
�� .corecrel****      � null��  � ����
�� 
kocl� m   � ���
�� 
cfol� ����
�� 
insh� o   � ����� 0 currentpath currentPath� �����
�� 
prdt� K   � ��� �����
�� 
pnam� m   � ��� ���  C a c h i n g��  ��  � m   � ����                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ��� l  � ���������  ��  ��  � ��� I  � ������
�� .sysoexecTEXT���     TEXT� m   � ��� ��� > o p e n   / A p p l i c a t i o n s / E v e r n o t e . a p p��  � ��� l  � ���������  ��  ��  � ��� O   ���� k   ��� ��� r   � ���� l  � ������� I  � ������
�� .EVRNfindnull���     ctxt� m   � ��� ���  ��  ��  ��  � o      ���� 0 allnotes allNotes� ��� l  � ���������  ��  ��  � ��� Z   � �������� =  � ���� l  � ������� I  � ������
�� .corecnte****       ****� o   � ����� 0 allnotes allNotes��  ��  ��  � m   � �����  � L   � ��� m   � ��� ���   ��  ��  � ��� l  � ���������  ��  ��  � ��� I  �����
�� .EVRNenxpnull���     ****� o   � ����� 0 allnotes allNotes� ����
�� 
kfil� l  � ������� o   � ����� &0 searchcontentpath searchContentPath��  ��  � �����
�� 
Expf� m   � ���
�� Exffexht��  � ��� l ��������  ��  ��  � ��� r  ��� K  
�� ������� 0 elem  � m  �� ���  m i s s i n g   v a l u e��  � o      ���� (0 notetitleindexdict noteTitleIndexDict� ��� l ��������  ��  ��  � ��� r  ��� n ��� I  ������� 0 onmutablecopy onMutableCopy� ���� c  ��� o  ���� (0 notetitleindexdict noteTitleIndexDict� m  ��
�� 
reco��  ��  � o  ���� 0 utility  � o      ���� (0 notetitleindexdict noteTitleIndexDict� ��� l   ��������  ��  ��  � ��� r   %��� m   !���� � o      ���� 0 i  � ��� l &&��������  ��  ��  � ��� r  &,��� J  &(����  � o      ���� 0 exceptionlist exceptionList� ��� l --��������  ��  ��  � ��� O  -;��� I 3:�����
�� .alfrSearnull��� ��� ctxt� m  36�� �     _ _ e n   >   s a v e c a c h e��  � m  -0�                                                                                      @ alis    *  Macintosh HD                   BD ����Alfred 4.app                                                   ����            ����  
 cu             Applications  /:Applications:Alfred 4.app/    A l f r e d   4 . a p p    M a c i n t o s h   H D  Applications/Alfred 4.app   / ��  �  l <<��������  ��  ��    T  <� k  A� 	 l AA��������  ��  ��  	 

 r  AU c  AQ l AO���� n  AO 1  KO��
�� 
EVet l AK���� n  AK 4  DK��
�� 
cobj o  GJ���� 0 i   o  AD���� 0 allnotes allNotes��  ��  ��  ��   m  OP��
�� 
TEXT o      ���� 0 	notetitle 	noteTitle  l VV��������  ��  ��    r  Vm n Vi I  Wi������ 0 getnoteguid getNoteGuid  ��  n  We!"! 1  ae��
�� 
EV24" l Wa#����# n  Wa$%$ 4  Za��&
�� 
cobj& o  ]`���� 0 i  % o  WZ���� 0 allnotes allNotes��  ��  ��  ��   o  VW���� 0 utility   o      ���� 0 noteguid   '(' l nn��~�}�  �~  �}  ( )*) l nn�|+,�|  + > 8display dialog modification date of (item i of allNotes)   , �-- p d i s p l a y   d i a l o g   m o d i f i c a t i o n   d a t e   o f   ( i t e m   i   o f   a l l N o t e s )* ./. l nn�{�z�y�{  �z  �y  / 010 r  n�232 n n�454 I  o��x6�w�x 0 gettimestring getTimeString6 7�v7 n  o}898 1  y}�u
�u 
EVmm9 l oy:�t�s: n  oy;<; 4  ry�r=
�r 
cobj= o  ux�q�q 0 i  < o  or�p�p 0 allnotes allNotes�t  �s  �v  �w  5 o  no�o�o 0 utility  3 o      �n�n (0 lastestupdateddate lastestUpdatedDate1 >?> l ���m�l�k�m  �l  �k  ? @A@ r  ��BCB o  ���j�j 0 	notetitle 	noteTitleC o      �i�i  0 targetfilename targetFileNameA DED l ���h�g�f�h  �g  �f  E FGF l ���eHI�e  H ) # Some special symbols are replaced.   I �JJ F   S o m e   s p e c i a l   s y m b o l s   a r e   r e p l a c e d .G KLK r  ��MNM n ��OPO I  ���dQ�c�d ,0 findandreplaceintext findAndReplaceInTextQ RSR o  ���b�b  0 targetfilename targetFileNameS TUT m  ��VV �WW  ?U X�aX m  ��YY �ZZ  _�a  �c  P o  ���`�` 0 utility  N o      �_�_  0 targetfilename targetFileNameL [\[ r  ��]^] n ��_`_ I  ���^a�]�^ ,0 findandreplaceintext findAndReplaceInTexta bcb o  ���\�\  0 targetfilename targetFileNamec ded m  ��ff �gg  / /e h�[h m  ��ii �jj  _�[  �]  ` o  ���Z�Z 0 utility  ^ o      �Y�Y  0 targetfilename targetFileName\ klk r  ��mnm n ��opo I  ���Xq�W�X ,0 findandreplaceintext findAndReplaceInTextq rsr o  ���V�V  0 targetfilename targetFileNames tut m  ��vv �ww  /u x�Ux m  ��yy �zz  _�U  �W  p o  ���T�T 0 utility  n o      �S�S  0 targetfilename targetFileNamel {|{ l ���R�Q�P�R  �Q  �P  | }~} l ���O��O   ' ! Colon should be processed with /   � ��� B   C o l o n   s h o u l d   b e   p r o c e s s e d   w i t h   /~ ��� r  ����� n ����� I  ���N��M�N ,0 findandreplaceintext findAndReplaceInText� ��� o  ���L�L  0 targetfilename targetFileName� ��� m  ���� ���  :� ��K� m  ���� ���  /�K  �M  � o  ���J�J 0 utility  � o      �I�I  0 targetfilename targetFileName� ��� l ���H�G�F�H  �G  �F  � ��� r  ����� n ����� I  ���E��D�E 0 getvalue getValue� ��� o  ���C�C (0 notetitleindexdict noteTitleIndexDict� ��B� b  ����� m  ���� ���  #� o  ���A�A 0 	notetitle 	noteTitle�B  �D  � o  ���@�@ 0 utility  � o      �?�? 0 	fileindex 	fileIndex� ��� l ���>�=�<�>  �=  �<  � ��� l ���;���;  �   for debugging   � ���    f o r   d e b u g g i n g� ��� r  ����� o  ���:�:  0 targetfilename targetFileName� o      �9�9 0 filenameonly fileNameOnly� ��� l ���8�7�6�8  �7  �6  � ��� Z  �)���5�� = ����� c  ����� o  ���4�4 0 	fileindex 	fileIndex� m  ���3
�3 
TEXT� m  ���� ���  m i s s i n g   v a l u e� r  ��� b  ��� b  ��� o  �2�2 &0 searchcontentpath searchContentPath� o  �1�1  0 targetfilename targetFileName� m  
�� ��� 
 . h t m l� o      �0�0  0 targetfilename targetFileName�5  � k  )�� ��� r  '��� b  #��� b  ��� b  ��� b  ��� o  �/�/ &0 searchcontentpath searchContentPath� o  �.�.  0 targetfilename targetFileName� m  �� ���  _� o  �-�- 0 	fileindex 	fileIndex� m  "�� ��� 
 . h t m l� o      �,�,  0 targetfilename targetFileName� ��+� l ((�*�)�(�*  �)  �(  �+  � ��� l **�'�&�%�'  �&  �%  � ��� l **�$���$  �   get thumbNailFile Path   � ��� .   g e t   t h u m b N a i l F i l e   P a t h� ��� Z  *����#�� = *4��� n *2��� I  +2�"��!�" 0 
fileexists 
FileExists� �� � o  +.��  0 targetfilename targetFileName�   �!  �  f  *+� m  23�
� boovtrue� k  7��� ��� O 7R��� r  =Q��� b  =D��� o  =@�� 0 noteguid  � m  @C�� ��� 
 . h t m l� n      ��� 1  LP�
� 
pnam� 4  DL��
� 
file� o  HK��  0 targetfilename targetFileName� m  7:���                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ��� n Sa��� I  Ta���� 0 setvalue setValue� ��� o  TW�� 0 htmlcachejson htmlCacheJson� ��� o  WZ�� 0 noteguid  � ��� o  Z]�� (0 lastestupdateddate lastestUpdatedDate�  �  � o  ST�� 0 utility  � � � l bb����  �  �     r  bg m  bc��  o      �� 0 j    l hh����  �  �    r  hm	
	 m  hi�

�
 boovfals
 o      �	�	 &0 hasresourcefolder hasResourceFolder  l nn����  �  �    O  n k  t  l tt����  �  �    r  t b  t{ o  tw��  0 targetfilename targetFileName m  wz �  . r e s o u r c e s o      �� (0 resourcefoldername resourceFolderName  l ��� �����   ��  ��    l ���� !��    "  ���ҽ� ������ �����ϴ� ���   ! �""    ����¤  ���T�   �tǬ�X��  ��ư #$# l ����������  ��  ��  $ %&% r  ��'(' n  ��)*) 1  ����
�� 
psxp* o  ������ (0 resourcefoldername resourceFolderName( o      ���� 20 resourcefolderpoxispath resourceFolderPoxisPath& +,+ l ����������  ��  ��  , -.- Q  �
/01/ k  �22 343 r  ��565 I ����7��
�� .sysoexecTEXT���     TEXT7 b  ��898 b  ��:;: m  ��<< �==  f i n d   "; o  ������ 20 resourcefolderpoxispath resourceFolderPoxisPath9 m  ��>> �?? z "   - i n a m e   " * . j p g "   - o   - i n a m e   " * . p n g "   - o   - i n a m e   " * . j p e g "   |   w c   - l��  6 o      ���� 0 itemcnt itemCnt4 @A@ l ����������  ��  ��  A BCB Z  ��DE����D > ��FGF c  ��HIH o  ������ 0 itemcnt itemCntI m  ����
�� 
nmbrG m  ������  E k  ��JJ KLK r  ��MNM m  ����
�� boovtrueN o      ���� &0 hasresourcefolder hasResourceFolderL OPO l ����������  ��  ��  P QRQ r  ��STS I ����U��
�� .sysoexecTEXT���     TEXTU b  ��VWV b  ��XYX m  ��ZZ �[[  ( f i n d   "Y o  ������ 20 resourcefolderpoxispath resourceFolderPoxisPathW m  ��\\ �]] � "   - i n a m e   " * . j p g "   - o   - i n a m e   " * . p n g "   - o   - i n a m e   " * . j p e g " )   |   h e a d   - n   1��  T o      ���� &0 thumbnailfilepath thumbNailFilePathR ^_^ l ����������  ��  ��  _ `a` r  ��bcb n ��ded I  ����f���� ,0 findandreplaceintext findAndReplaceInTextf ghg o  ������ &0 thumbnailfilepath thumbNailFilePathh iji m  ��kk �ll  \j m��m m  ��nn �oo  \ \��  ��  e o  ������ 0 utility  c o      ���� &0 thumbnailfilepath thumbNailFilePatha pqp l ����������  ��  ��  q rsr r  ��tut n ��vwv I  ����x���� ,0 findandreplaceintext findAndReplaceInTextx yzy o  ������ &0 thumbnailfilepath thumbNailFilePathz {|{ m  ��}} �~~  "| �� m  ���� ���  \ "��  ��  w o  ������ 0 utility  u o      ���� &0 thumbnailfilepath thumbNailFilePaths ��� l ����������  ��  ��  � ���� n ����� I  ��������� 0 setvalue setValue� ��� o  ������ &0 thumbnailpathjson thumbNailPathJson� ��� o  ������ 0 noteguid  � ���� o  ������ &0 thumbnailfilepath thumbNailFilePath��  ��  � o  ������ 0 utility  ��  ��  ��  C ��� l   ��������  ��  ��  � ���� l   ��������  ��  ��  ��  0 R      ������
�� .ascrerr ****      � ****��  ��  1 k  		�� ��� l 		��������  ��  ��  � ��� l 		������  � , &display dialog resourceFolderPoxisPath   � ��� L d i s p l a y   d i a l o g   r e s o u r c e F o l d e r P o x i s P a t h� ���� l 		��������  ��  ��  ��  . ���� l ��������  ��  ��  ��   m  nq���                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   ��� l ��������  ��  ��  � ��� r  "��� c  ��� l ������ n  ��� 1  ��
�� 
EVet� l ������ n  ��� 4  ���
�� 
cobj� o  ���� 0 i  � o  ���� 0 allnotes allNotes��  ��  ��  ��  � m  ��
�� 
TEXT� o      ���� $0 notetitleunicode noteTitleUnicode� ��� r  #7��� c  #3��� l #1������ n  #1��� 1  -1��
�� 
EVmm� l #-������ n  #-��� 4  &-���
�� 
cobj� o  ),���� 0 i  � o  #&���� 0 allnotes allNotes��  ��  ��  ��  � m  12��
�� 
TEXT� o      ���� &0 lasteditedunicode lastEditedUnicode� ��� r  8L��� c  8H��� l 8F������ n  8F��� 1  BF��
�� 
EVdd� l 8B������ n  8B��� 4  ;B���
�� 
cobj� o  >A���� 0 i  � o  8;���� 0 allnotes allNotes��  ��  ��  ��  � m  FG��
�� 
TEXT� o      ����  0 createdunicode createdUnicode� ��� l MM��������  ��  ��  � ��� r  M���� b  M���� b  M���� b  M|��� b  Mx��� b  Mt��� b  Mp��� b  Ml��� b  Mh��� b  Md��� b  M`��� b  M\��� b  MX��� b  MT��� m  MP�� ��� � < s t y l e > 
 i m g   { 
     m a x - w i d t h :   1 0 0 % ; 
     h e i g h t :   a u t o ; 
 } 
 < / s t y l e > 
 < p   i d = ' t i t l e '   s t y l e = ' f o n t - s i z e :   2 0 ;� o  PS���� &0 metadatafontstyle metaDataFontStyle� m  TW�� ���  > T i t l e :  � o  X[���� 0 	notetitle 	noteTitle� m  \_�� ��� 
 < / p > 
� m  `c�� ��� P < p   i d = ' e d i t e d D a t e '   s t y l e = ' f o n t - s i z e :   2 0 ;� o  dg���� &0 metadatafontstyle metaDataFontStyle� m  hk�� ��� " > L a s t   E d i t e d   I n :  � o  lo���� &0 lasteditedunicode lastEditedUnicode� m  ps�� ��� ^ < / p > 
 < p   i d = ' c r e a t i o n D a t e '   s t y l e = ' f o n t - s i z e :   2 0 ;� o  tw���� &0 metadatafontstyle metaDataFontStyle� m  x{�� ���  > C r e a t e d   I n :  � o  |����  0 createdunicode createdUnicode� m  ���� ��� P < / p > 
 < h r   s t y l e = ' m a r g i n - b o t t o m :   1 5 ; '   / >   
� o      ���� "0 metadataofnotes metaDataOfNotes� ��� n ����� I  �������� 0 prependtext prependText� ��� b  ����� b  ����� b  ��� � n �� I  ���~�}�|�~ *0 getcurrentposixpath getCurrentPosixPath�}  �|   o  ���{�{ 0 utility    m  �� �  s e a r c h _ c o n t e n t /� o  ���z�z 0 noteguid  � m  �� � 
 . h t m l� �y o  ���x�x "0 metadataofnotes metaDataOfNotes�y  �  �  f  ��� �w l ���v�u�t�v  �u  �t  �w  �#  � k  ��		 

 l ���s�s   6 0 Not caching successfully! (Need to be improved)    � `   N o t   c a c h i n g   s u c c e s s f u l l y !   ( N e e d   t o   b e   i m p r o v e d ) �r r  �� b  �� b  �� o  ���q�q 0 exceptionlist exceptionList o  ���p�p 0 filenameonly fileNameOnly m  �� �  
 o      �o�o 0 exceptionlist exceptionList�r  �  l ���n�m�l�n  �m  �l    r  �� [  �� o  ���k�k 0 i   m  ���j�j  o      �i�i 0 i    !  l ���h�g�f�h  �g  �f  ! "�e" Z  ��#$�d�c# l ��%�b�a% ?  ��&'& o  ���`�` 0 i  ' l ��(�_�^( I ���])�\
�] .corecnte****       ****) o  ���[�[ 0 allnotes allNotes�\  �_  �^  �b  �a  $  S  ���d  �c  �e   *+* l ���Z�Y�X�Z  �Y  �X  + ,-, r  ��./. n ��010 I  ���W2�V�W 0 keysofrecord keysOfRecord2 3�U3 o  ���T�T 0 htmlcachejson htmlCacheJson�U  �V  1 o  ���S�S 0 utility  / o      �R�R 0 keystowrite keysToWrite- 454 r  ��676 n ��898 I  ���Q:�P�Q  0 valuesofrecord valuesOfRecord: ;�O; o  ���N�N 0 htmlcachejson htmlCacheJson�O  �P  9 o  ���M�M 0 utility  7 o      �L�L 0 valuestowrite valuesToWrite5 <=< l ���K�J�I�K  �J  �I  = >?> r  �@A@ n ��BCB I  ���HD�G�H *0 makejsonwithstrings makeJsonWithStringsD EFE o  ���F�F 0 keystowrite keysToWriteF G�EG o  ���D�D 0 valuestowrite valuesToWrite�E  �G  C o  ���C�C 0 utility  A o      �B�B 0 jsoncontent jsonContent? HIH l �A�@�?�A  �@  �?  I JKJ n LML I  �>N�=�> "0 writetexttofile writeTextToFileN OPO o  �<�< 0 jsoncontent jsonContentP QRQ b  STS l U�;�:U c  VWV o  	�9�9 0 currentpath currentPathW m  	
�8
�8 
TEXT�;  �:  T m  XX �YY B : s e a r c h _ c o n t e n t : h t m l C a c h e L o g . j s o nR Z�7Z m  �6
�6 boovtrue�7  �=  M  f  K [�5[ l �4�3�2�4  �3  �2  �5  � 5   � ��1\�0
�1 
capp\ m   � �]] �^^ * c o m . e v e r n o t e . E v e r n o t e
�0 kfrmID  � _`_ l �/�.�-�/  �.  �-  ` aba l �,cd�,  c - 'display dialog (count of exceptionList)   d �ee N d i s p l a y   d i a l o g   ( c o u n t   o f   e x c e p t i o n L i s t )b fgf l �+hi�+  h  exceptionList   i �jj  e x c e p t i o n L i s tg klk l �*�)�(�*  �)  �(  l mnm O 5opo I 4�'q�&
�' .coredelonull���     obj q l 0r�%�$r c  0sts l ,u�#�"u 4  ,�!v
�! 
psxfv l "+w� �w b  "+xyx n "'z{z I  #'���� *0 getcurrentposixpath getCurrentPosixPath�  �  { o  "#�� 0 utility  y m  '*|| �}}  C a c h i n g�   �  �#  �"  t m  ,/�
� 
alis�%  �$  �&  p m  ~~�                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  n � l 66����  �  �  �  
 m     ��  Q� ��� l 99����  �  �  � ��� l 99����  �   write thumbNailPath.json   � ��� 2   w r i t e   t h u m b N a i l P a t h . j s o n� ��� r  9E��� n 9A��� I  :A���� 0 keysofrecord keysOfRecord� ��� o  :=�� &0 thumbnailpathjson thumbNailPathJson�  �  � o  9:�� 0 utility  � o      �� 0 keystowrite keysToWrite� ��� r  FR��� n FN��� I  GN�
��	�
  0 valuesofrecord valuesOfRecord� ��� o  GJ�� &0 thumbnailpathjson thumbNailPathJson�  �	  � o  FG�� 0 utility  � o      �� 0 valuestowrite valuesToWrite� ��� l SS����  �  �  � ��� r  Sb��� n S^��� I  T^��� � *0 makejsonwithstrings makeJsonWithStrings� ��� o  TW���� 0 keystowrite keysToWrite� ���� o  WZ���� 0 valuestowrite valuesToWrite��  �   � o  ST���� 0 utility  � o      ���� 0 jsoncontent jsonContent� ��� l cc��������  ��  ��  � ��� n cs��� I  ds������� "0 writetexttofile writeTextToFile� ��� o  dg���� 0 jsoncontent jsonContent� ��� b  gn��� l gj������ c  gj��� o  gh���� 0 currentpath currentPath� m  hi��
�� 
TEXT��  ��  � m  jm�� ��� D : s e a r c h _ c o n t e n t : t h u m b N a i l P a t h . j s o n� ���� m  no��
�� boovtrue��  ��  �  f  cd� ��� l tt��������  ��  ��  � ��� L  tx�� m  tw�� ���   � ���� l yy��������  ��  ��  ��  �S       ���������  � ���������� "0 writetexttofile writeTextToFile�� 0 prependtext prependText�� 0 
fileexists 
FileExists
�� .aevtoappnull  �   � ****� �� ���������� "0 writetexttofile writeTextToFile�� ����� �  �������� 0 thetext theText�� 0 thefile theFile�� 40 overwriteexistingcontent overwriteExistingContent��  � ���������� 0 thetext theText�� 0 thefile theFile�� 40 overwriteexistingcontent overwriteExistingContent�� 0 theopenedfile theOpenedFile� �������������������������������� k��
�� 
TEXT
�� 
file
�� 
perm
�� .rdwropenshor       file
�� 
set2
�� .rdwrseofnull���     ****
�� 
refn
�� 
as  
�� 
utf8
�� 
wrat
�� rdwreof �� 
�� .rdwrwritnull���     ****
�� .rdwrclosnull���     ****��  ��  
�� .sysodlogaskr        TEXT�� f @��&E�O*�/�el E�O�e  ��jl Y hO������� O�j OeOPW &X  a j O *�/j W X  hOf� �� ����������� 0 prependtext prependText�� ����� �  ������ (0 targetfilepathname targetFilePathname��  0 thetexttowrite theTextToWrite��  � �������������� (0 targetfilepathname targetFilePathname��  0 thetexttowrite theTextToWrite�� "0 theoriginaltext theOriginalText�� "0 referencenumber referenceNumber�� 0 estr eStr�� 0 enum eNum�  ����������� ������������������ ��� ����� ���������
�� 
as  
�� 
utf8
�� .rdwrread****        ****��  ��  
�� 
perm
�� .rdwropenshor       file
�� 
refn
�� 
wrat�� 
�� .rdwrwritnull���     ****
�� .rdwrclosnull���     ****�� 0 estr eStr� ������
�� 
errn�� 0 enum eNum��  
�� 
btns
�� 
dflt
�� 
appr
�� 
disp
�� stic   �� 
�� .sysodlogaskr        TEXT�� ��E�O ���l E�W X  hO��%�%E�O  ��el E�O�����j� O�j W AX  �a %�%a a kva ka a a a a  O 
�j W X  hOh� �� ����������� 0 
fileexists 
FileExists�� ����� �  ���� 0 thefile theFile��  � ���� 0 thefile theFile�  �����
�� 
file
�� .coredoexnull���     ****�� � *�/j  eY fU� �� ���������
�� .aevtoappnull  �   � ****�� 0 argv  ��  � ���� 0 argv  � ����������� ����������4����F��S������������������~��}�|�{�z�y��x�w��v�u]�t��s�r�q��p�o�n�m�l�k��j�i�h�g��f�e�d�c�b�a�`�_�^�]�\VY�[fivy����Z�Y�X�����W���V�U�T�S�R�Q<>�P�OZ\�Nkn}��M�L�K�J���������I�H�G�F�E�D�C�BX�A�@|�?�>����  Q�
�� 
rtyp
�� 
ctxt
�� .earsffdralis        afdr
�� 
psxp
�� .sysoloadscpt        file�� 0 utility  ��  0 getcurrentpath getCurrentPath
�� 
TEXT�� 0 currentpath currentPath�� &0 searchcontentpath searchContentPath�� *0 getcurrentposixpath getCurrentPosixPath�� &0 htmlcachefilepath htmlCacheFilePath�� 60 thumbnailpathjsonfilepath thumbNailPathJsonFilePath
�� 
from�� 0 jsontorecord JSONtoRecord�� 0 htmlcachejson htmlCacheJson�� &0 thumbnailpathjson thumbNailPathJson�� 0 onmutablecopy onMutableCopy��  �  �~ &0 metadatafontstyle metaDataFontStyle
�} 
kocl
�| 
cfol
�{ 
insh
�z 
prdt
�y 
pnam�x 
�w .corecrel****      � null
�v .sysoexecTEXT���     TEXT
�u 
capp
�t kfrmID  
�s .EVRNfindnull���     ctxt�r 0 allnotes allNotes
�q .corecnte****       ****
�p 
kfil
�o 
Expf
�n Exffexht�m 
�l .EVRNenxpnull���     ****�k 0 elem  �j (0 notetitleindexdict noteTitleIndexDict
�i 
reco�h 0 i  �g 0 exceptionlist exceptionList
�f .alfrSearnull��� ��� ctxt
�e 
cobj
�d 
EVet�c 0 	notetitle 	noteTitle
�b 
EV24�a 0 getnoteguid getNoteGuid�` 0 noteguid  
�_ 
EVmm�^ 0 gettimestring getTimeString�] (0 lastestupdateddate lastestUpdatedDate�\  0 targetfilename targetFileName�[ ,0 findandreplaceintext findAndReplaceInText�Z 0 getvalue getValue�Y 0 	fileindex 	fileIndex�X 0 filenameonly fileNameOnly�W 0 
fileexists 
FileExists
�V 
file�U 0 setvalue setValue�T 0 j  �S &0 hasresourcefolder hasResourceFolder�R (0 resourcefoldername resourceFolderName�Q 20 resourcefolderpoxispath resourceFolderPoxisPath�P 0 itemcnt itemCnt
�O 
nmbr�N &0 thumbnailfilepath thumbNailFilePath�M $0 notetitleunicode noteTitleUnicode�L &0 lasteditedunicode lastEditedUnicode
�K 
EVdd�J  0 createdunicode createdUnicode�I "0 metadataofnotes metaDataOfNotes�H 0 prependtext prependText�G 0 keysofrecord keysOfRecord�F 0 keystowrite keysToWrite�E  0 valuesofrecord valuesOfRecord�D 0 valuestowrite valuesToWrite�C *0 makejsonwithstrings makeJsonWithStrings�B 0 jsoncontent jsonContent�A "0 writetexttofile writeTextToFile
�@ 
psxf
�? 
alis
�> .coredelonull���     obj ��{�n)��l �%�,�%j E�O�j+ 	�&E�O��%E�O�j+ �%E` O�j+ a %E` O @�a _ l E` O�a _ l E` O�_ k+ E` O�_ k+ E` OPW X  a Oa E` Oa  *a a a  �a !a "a #la $ %UOa &j 'O)a (a )a *0Ka +j ,E` -O_ -j .j  	a /Y hO_ -a 0�a 1a 2a 3 4Oa 5a 6lE` 7O�_ 7a 8&k+ E` 7OkE` 9OjvE` :Oa ; 	a <j =UO�hZ_ -a >_ 9/a ?,�&E` @O�_ -a >_ 9/a A,k+ BE` CO�_ -a >_ 9/a D,k+ EE` FO_ @E` GO�_ Ga Ha Im+ JE` GO�_ Ga Ka Lm+ JE` GO�_ Ga Ma Nm+ JE` GO�_ Ga Oa Pm+ JE` GO�_ 7a Q_ @%l+ RE` SO_ GE` TO_ S�&a U  �_ G%a V%E` GY �_ G%a W%_ S%a X%E` GOPO)_ Gk+ Ye ra Z _ Ca [%*a \_ G/a ",FUO�_ _ C_ Fm+ ]OkE` ^OfE` _Oa  �_ Ga `%E` aO_ a�,E` bO ya c_ b%a d%j 'E` eO_ ea f&j SeE` _Oa g_ b%a h%j 'E` iO�_ ia ja km+ JE` iO�_ ia la mm+ JE` iO�_ _ C_ im+ ]Y hOPW X  hOPUO_ -a >_ 9/a ?,�&E` nO_ -a >_ 9/a D,�&E` oO_ -a >_ 9/a p,�&E` qOa r_ %a s%_ @%a t%a u%_ %a v%_ o%a w%_ %a x%_ q%a y%E` zO)�j+ a {%_ C%a |%_ zl+ }OPY _ :_ T%a ~%E` :O_ 9kE` 9O_ 9_ -j . Y h[OY�iO�_ k+ E` �O�_ k+ �E` �O�_ �_ �l+ �E` �O)_ ���&a �%em+ �OPUOa  *a ��j+ a �%/a �&j �UOPoO�_ k+ E` �O�_ k+ �E` �O�_ �_ �l+ �E` �O)_ ���&a �%em+ �Oa �OPascr  ��ޭ
FasdUAS 1.101.10   ��   ��    k             l     ��  ��    !  CleanDesktopAndLogOut.scpt     � 	 	 6   C l e a n D e s k t o p A n d L o g O u t . s c p t   
  
 l     ��  ��           �           l     ��  ��    &   This script does the following:     �   @   T h i s   s c r i p t   d o e s   t h e   f o l l o w i n g :      l     ��������  ��  ��        l     ��  ��    9 3 1) Deletes all files on the current user's Desktop     �   f   1 )   D e l e t e s   a l l   f i l e s   o n   t h e   c u r r e n t   u s e r ' s   D e s k t o p      l     ��  ��    5 /    except those specified in filesToKeep below     �   ^         e x c e p t   t h o s e   s p e c i f i e d   i n   f i l e s T o K e e p   b e l o w     !   l     ��������  ��  ��   !  " # " l     �� $ %��   $   2) Empties the trash    % � & & *   2 )   E m p t i e s   t h e   t r a s h #  ' ( ' l     ��������  ��  ��   (  ) * ) l     �� + ,��   + 8 2 3) Forcibly logs out the current user, losing any    , � - - d   3 )   F o r c i b l y   l o g s   o u t   t h e   c u r r e n t   u s e r ,   l o s i n g   a n y *  . / . l     �� 0 1��   0       unsaved work.    1 � 2 2 $           u n s a v e d   w o r k . /  3 4 3 l     ��������  ��  ��   4  5 6 5 l     �� 7 8��   7 M G ----------------------------------------------------------------------    8 � 9 9 �   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 6  : ; : l     ��������  ��  ��   ;  < = < l     ��������  ��  ��   =  > ? > l     ��������  ��  ��   ?  @ A @ l     �� B C��   B N H Add file and folder names to this list to keep them from being deleted.    C � D D �   A d d   f i l e   a n d   f o l d e r   n a m e s   t o   t h i s   l i s t   t o   k e e p   t h e m   f r o m   b e i n g   d e l e t e d . A  E F E l     �� G H��   G O I Format is like {"Folder one", "File.txt", "another.pdf"} or {} to delete    H � I I �   F o r m a t   i s   l i k e   { " F o l d e r   o n e " ,   " F i l e . t x t " ,   " a n o t h e r . p d f " }   o r   { }   t o   d e l e t e F  J K J l     �� L M��   L < 6 all files and folders.  The list is case-insensitive.    M � N N l   a l l   f i l e s   a n d   f o l d e r s .     T h e   l i s t   i s   c a s e - i n s e n s i t i v e . K  O P O l    	 Q���� Q r     	 R S R J      T T  U V U m      W W � X X  r a i d   a r r a y V  Y Z Y m     [ [ � \ \  d e c e m b e r . p d f Z  ] ^ ] m     _ _ � ` `  c h r i s t m a s ^  a b a m     c c � d d  g u s   g u s b  e�� e m     f f � g g " h r   s p e c i a l i s t . d o c��   S o      ���� 0 filestokeep filesToKeep��  ��   P  h i h l     ��������  ��  ��   i  j k j l     ��������  ��  ��   k  l m l l     ��������  ��  ��   m  n o n l  
 � p���� p O   
 � q r q k    � s s  t u t l   ��������  ��  ��   u  v w v r     x y x m     z z � { {   y o      ���� $0 filestokeepregex filesToKeepRegex w  | } | l   ��������  ��  ��   }  ~  ~ l   �� � ���   � 2 , Loop over all items in the filesToKeep list    � � � � X   L o o p   o v e r   a l l   i t e m s   i n   t h e   f i l e s T o K e e p   l i s t   � � � Y    B ��� � ��� � k   ! = � �  � � � l  ! !��������  ��  ��   �  � � � l  ! !�� � ���   �   Get the item    � � � �    G e t   t h e   i t e m �  � � � r   ! ' � � � n   ! % � � � 4   " %�� �
�� 
cobj � o   # $���� 0 i   � o   ! "���� 0 filestokeep filesToKeep � o      ���� 0 	this_item   �  � � � l  ( (��������  ��  ��   �  � � � l  ( (�� � ���   � > 8 Build up a regex by separating each item by a pipe char    � � � � p   B u i l d   u p   a   r e g e x   b y   s e p a r a t i n g   e a c h   i t e m   b y   a   p i p e   c h a r �  � � � Z   ( ; � ��� � � l  ( + ����� � =  ( + � � � o   ( )���� 0 i   � m   ) *���� ��  ��   � r   . 1 � � � o   . /���� 0 	this_item   � o      ���� $0 filestokeepregex filesToKeepRegex��   � r   4 ; � � � b   4 9 � � � b   4 7 � � � o   4 5���� $0 filestokeepregex filesToKeepRegex � m   5 6 � � � � �  | � o   7 8���� 0 	this_item   � o      ���� $0 filestokeepregex filesToKeepRegex �  ��� � l  < <��������  ��  ��  ��  �� 0 i   � m    ����  � n     � � � m    ��
�� 
nmbr � n    � � � 2   ��
�� 
cobj � o    ���� 0 filestokeep filesToKeep��   �  � � � l  C C��������  ��  ��   �  � � � l  C C�� � ���   � F @ Escape spaces in the list of filenames to keep with a backslash    � � � � �   E s c a p e   s p a c e s   i n   t h e   l i s t   o f   f i l e n a m e s   t o   k e e p   w i t h   a   b a c k s l a s h �  � � � r   C T � � � I  C P�� ���
�� .sysoexecTEXT���     TEXT � b   C L � � � b   C H � � � m   C D � � � � � 
 e c h o   � n   D G � � � 1   E G��
�� 
strq � o   D E���� $0 filestokeepregex filesToKeepRegex � m   H K � � � � � "   |   s e d   ' s /   / \   / g '��   � o      ���� (0 escapedregexscript escapedRegexScript �  � � � l  U U��������  ��  ��   �  � � � l  U U�� � ���   � C = Find all desktop files not contained in the filesToKeep list    � � � � z   F i n d   a l l   d e s k t o p   f i l e s   n o t   c o n t a i n e d   i n   t h e   f i l e s T o K e e p   l i s t �  � � � r   U f � � � b   U b � � � b   U ^ � � � m   U X � � � � � H l s   - A 1 d   ~ / D e s k t o p / *   |   g r e p   - v   - i   - E   � n   X ] � � � 1   [ ]��
�� 
strq � o   X [���� (0 escapedregexscript escapedRegexScript � m   ^ a � � � � �  ;   e x i t   0 � o      ���� $0 listfilescommand listFilesCommand �  � � � l  g g��������  ��  ��   �  � � � Z   g � � ��� � � l  g n ����� � ?  g n � � � n   g l � � � m   j l��
�� 
nmbr � n  g j � � � 2  h j��
�� 
cobj � o   g h���� 0 filestokeep filesToKeep � m   l m����  ��  ��   � r   q | � � � I  q x�� ���
�� .sysoexecTEXT���     TEXT � o   q t���� $0 listfilescommand listFilesCommand��   � o      ���� 0 filestodelete filesToDelete��   � r    � � � � I   ��� ���
�� .sysoexecTEXT���     TEXT � m    � � � � � � & l s   - A 1 d   ~ / D e s k t o p / *��   � o      ���� 0 filestodelete filesToDelete �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � 9 3 Convert newlines to commas so we can split on them    � � � � f   C o n v e r t   n e w l i n e s   t o   c o m m a s   s o   w e   c a n   s p l i t   o n   t h e m �  � � � r   � � �  � I  � �����
�� .sysoexecTEXT���     TEXT b   � � b   � � m   � � � 
 e c h o   n   � �	 1   � ��
� 
strq	 o   � ��~�~ 0 filestodelete filesToDelete m   � �

 �    |   t r   ' \ r '   ' , '��    o      �}�} 0 filestodelete filesToDelete �  l  � ��|�{�z�|  �{  �z    l  � ��y�y     Split on commas    �     S p l i t   o n   c o m m a s  r   � � m   � � �  , n      1   � ��x
�x 
txdl 1   � ��w
�w 
ascr  r   � � l  � ��v�u n   � � !  2   � ��t
�t 
citm! o   � ��s�s 0 filestodelete filesToDelete�v  �u   o      �r�r 0 filelist fileList "#" l  � ��q�p�o�q  �p  �o  # $%$ l  � ��n&'�n  & < 6 Iterate through the list of files and delete each one   ' �(( l   I t e r a t e   t h r o u g h   t h e   l i s t   o f   f i l e s   a n d   d e l e t e   e a c h   o n e% )*) Y   � �+�m,-�l+ k   � �.. /0/ l  � ��k�j�i�k  �j  �i  0 121 r   � �343 n   � �565 4   � ��h7
�h 
cobj7 o   � ��g�g 0 i  6 o   � ��f�f 0 filelist fileList4 o      �e�e 0 	this_item  2 898 I  � ��d:�c
�d .sysoexecTEXT���     TEXT: b   � �;<; m   � �== �>>  r m   - r f  < n   � �?@? 1   � ��b
�b 
strq@ o   � ��a�a 0 	this_item  �c  9 A�`A l  � ��_�^�]�_  �^  �]  �`  �m 0 i  , m   � ��\�\ - n   � �BCB m   � ��[
�[ 
nmbrC n  � �DED 2  � ��Z
�Z 
cobjE o   � ��Y�Y 0 filelist fileList�l  * FGF l  � ��X�W�V�X  �W  �V  G HIH l  � ��UJK�U  J   Empty the trash   K �LL     E m p t y   t h e   t r a s hI MNM I  � ��TO�S
�T .sysoexecTEXT���     TEXTO m   � �PP �QQ " r m   - r f   ~ / . T r a s h / *�S  N RSR l  � ��R�Q�P�R  �Q  �P  S TUT l  � ��OVW�O  V    Forcibly log out the user   W �XX 4   F o r c i b l y   l o g   o u t   t h e   u s e rU YZY I  � ��N[�M
�N .sysoexecTEXT���     TEXT[ m   � �\\ �]] � k i l l   - 1 5   ` p s   a x   |   g r e p   - i   l o g i n w i n d o w   |   g r e p   - v   g r e p   |   c u t   - c   1 - 6 `�M  Z ^�L^ l  � ��K�J�I�K  �J  �I  �L   r m   
 __�                                                                                  sevs   alis    �  Mac OS X                   �Y��H+   �System Events.app                                               ��%���        ����  	                CoreServices    �Z-C      ��C     � �� ��  6Mac OS X:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a c   O S   X  -System/Library/CoreServices/System Events.app   / ��  ��  ��   o `a` l     �H�G�F�H  �G  �F  a b�Eb l     �D�C�B�D  �C  �B  �E       �Acd�A  c �@
�@ .aevtoappnull  �   � ****d �?e�>�=fg�<
�? .aevtoappnull  �   � ****e k     �hh  Oii  n�;�;  �>  �=  f �:�: 0 i  g " W [ _ c f�9�8_ z�7�6�5�4 � ��3 ��2�1 � ��0�/ �
�.�-�,�+=P\�9 �8 0 filestokeep filesToKeep�7 $0 filestokeepregex filesToKeepRegex
�6 
cobj
�5 
nmbr�4 0 	this_item  
�3 
strq
�2 .sysoexecTEXT���     TEXT�1 (0 escapedregexscript escapedRegexScript�0 $0 listfilescommand listFilesCommand�/ 0 filestodelete filesToDelete
�. 
ascr
�- 
txdl
�, 
citm�+ 0 filelist fileList�< �������vE�O� ��E�O /k��-�,Ekh  ��/E�O�k  �E�Y 	��%�%E�OP[OY��O���,%a %j E` Oa _ �,%a %E` O��-�,j _ j E` Y a j E` Oa _ �,%a %j E` Oa _ a ,FO_ a -E` O +k_ �-�,Ekh  _ �/E�Oa ��,%j OP[OY��Oa  j Oa !j OPUascr  ��ޭ
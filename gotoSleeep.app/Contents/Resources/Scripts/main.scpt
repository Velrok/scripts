FasdUAS 1.101.10   ��   ��    k             l     ��  ��    ) # MIT lizence � 2012 Waldemar Schwan     � 	 	 F   M I T   l i z e n c e   �   2 0 1 2   W a l d e m a r   S c h w a n   
  
 l     ��������  ��  ��        l     ����  r         m     ����   o      ���� 0 dialog_timeout  ��  ��        l   F ����  T    F   Q   	 A     k    +       I   ��  
�� .sysodlogaskr        TEXT  m       �    G o   t o   s l e e p   i n    ��   
�� 
appr  m     ! ! � " "  G o   t o   s l e e p   �� # $
�� 
dtxt # m     % % � & &  0 $ �� '��
�� 
dflt ' m    ���� ��     ( ) ( r     * + * c     , - , n     . / . 1    ��
�� 
ttxt / 1    ��
�� 
rslt - m    ��
�� 
long + o      ���� 0 wait   )  0�� 0 Z    + 1 2���� 1 @     # 3 4 3 o     !���� 0 wait   4 m   ! "����   2  S   & '��  ��  ��    R      ���� 5
�� .ascrerr ****      � ****��   5 �� 6��
�� 
errn 6 o      ���� 
0 err_no  ��    Z  3 A 7 8���� 7 =  3 6 9 : 9 o   3 4���� 
0 err_no   : m   4 5������ 8 L   9 = ; ; m   9 < < < � = =  c a n c e l t   b y   u s e r��  ��  ��  ��     > ? > l     ��������  ��  ��   ?  @ A @ l  G T B���� B r   G T C D C b   G P E F E b   G L G H G m   G J I I � J J : Y o u r   m a c   w i l l   g o   t o   s l e e p   i n   H o   J K���� 0 wait   F m   L O K K � L L �   m i n u t e s .   
 
 Y o u   c a n   a b o u r t   t h i s   b y   p r e s s i n g  #%##� ,   t h e n   c h o o s e   g o t o S l e e p   f r o m   t h e   l i s t   a n d   t e r m i n a t e   i t . D o      ���� 0 message  ��  ��   A  M N M l  U f O���� O I  U f�� P Q
�� .sysodlogaskr        TEXT P o   U X���� 0 message   Q �� R S
�� 
dflt R m   Y Z����  S �� T��
�� 
givu T m   ] `���� ��  ��  ��   N  U V U l     ��������  ��  ��   V  W X W l     �� Y Z��   Y ) # lets wait the given amount of time    Z � [ [ F   l e t s   w a i t   t h e   g i v e n   a m o u n t   o f   t i m e X  \ ] \ l  g p ^���� ^ r   g p _ ` _ ]   g l a b a o   g h���� 0 wait   b m   h k���� < ` o      ���� 0 	countdown  ��  ��   ]  c d c l  q x e���� e I  q x�� f��
�� .sysodelanull��� ��� nmbr f o   q t���� 0 	countdown  ��  ��  ��   d  g h g l     ��������  ��  ��   h  i j i l  y � k���� k r   y � l m l m   y | n n � o o � Y o u r   m a c   i s   g o i n g   t o   s l e e p   i n   3 0   s e c o n d s , 
 a l s o   a l l   y o u r   d i s k s   w i l l   b e   e j e c t e d . m o      ���� 0 message  ��  ��   j  p q p l     ��������  ��  ��   q  r s r l  � � t���� t I  � ��� u��
�� .sysottosnull���     TEXT u o   � ����� 0 message  ��  ��  ��   s  v w v l  � � x���� x I  � ��� y z
�� .sysodlogaskr        TEXT y o   � ����� 0 message   z �� { |
�� 
dflt { m   � �����  | �� }��
�� 
givu } m   � ����� ��  ��  ��   w  ~  ~ l     ��������  ��  ��     � � � l  � � ����� � O   � � � � � k   � � � �  � � � l  � ��� � ���   �   ejecting stuff    � � � �    e j e c t i n g   s t u f f �  � � � r   � � � � � n   � � � � � m   � ���
�� 
nmbr � 2  � ���
�� 
cdis � o      ���� 0 nmd   �  � � � Z   � � � ����� � ?   � � � � � o   � ����� 0 nmd   � m   � �����  � Y   � � ��� � ��� � I  � ��� ���
�� .fndrejctnull��� ��� obj  � 4   � ��� �
�� 
cdis � l  � � ����� � [   � � � � � \   � � � � � o   � ����� 0 nmd   � o   � ����� 0 i   � m   � ����� ��  ��  ��  �� 0 i   � m   � �����  � o   � ����� 0 nmd  ��  ��  ��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   �   going to slepp    � � � �    g o i n g   t o   s l e p p �  ��� � I  � �������
�� .fndrslepnull��� ��� null��  ��  ��   � m   � � � ��                                                                                  MACS  alis    Z  Mac                        ���~H+   ��(
Finder.app                                                      �[�(��        ����  	                CoreServices    ���^      �(��     ��( �� ��  -Mac:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p    M a c  &System/Library/CoreServices/Finder.app  / ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � G A This script is based on the code from other people. Thanks guys.    � � � � �   T h i s   s c r i p t   i s   b a s e d   o n   t h e   c o d e   f r o m   o t h e r   p e o p l e .   T h a n k s   g u y s . �  � � � l     ��������  ��  ��   �  � � � l     � � ��   � 2 , https://www.youtube.com/watch?v=96dkd9AcDwE    � � � � X   h t t p s : / / w w w . y o u t u b e . c o m / w a t c h ? v = 9 6 d k d 9 A c D w E �  � � � l     �~ � ��~   � D > https://discussions.apple.com/thread/1468434?start=0&tstart=0    � � � � |   h t t p s : / / d i s c u s s i o n s . a p p l e . c o m / t h r e a d / 1 4 6 8 4 3 4 ? s t a r t = 0 & t s t a r t = 0 �  ��} � l     �|�{�z�|  �{  �z  �}       
�y � ��x�w n�v�u�t�s�y   � �r�q�p�o�n�m�l�k
�r .aevtoappnull  �   � ****�q 0 dialog_timeout  �p 0 wait  �o 0 message  �n 0 	countdown  �m  �l  �k   � �j ��i�h � ��g
�j .aevtoappnull  �   � **** � k     � � �   � �   � �  @ � �  M � �  \ � �  c � �  i � �  r � �  v � �  ��f�f  �i  �h   � �e�d�e 
0 err_no  �d 0 i   � #�c �b !�a %�`�_�^�]�\�[�Z�Y ��X < I K�W�V�U�T�S�R�Q n�P�O ��N�M�L�K�J�c 0 dialog_timeout  
�b 
appr
�a 
dtxt
�` 
dflt�_ 
�^ .sysodlogaskr        TEXT
�] 
rslt
�\ 
ttxt
�[ 
long�Z 0 wait  �Y   � �I�H�G
�I 
errn�H 
0 err_no  �G  �X���W 0 message  
�V 
givu�U �T �S <�R 0 	countdown  
�Q .sysodelanull��� ��� nmbr
�P .sysottosnull���     TEXT�O 
�N 
cdis
�M 
nmbr�L 0 nmd  
�K .fndrejctnull��� ��� obj 
�J .fndrslepnull��� ��� null�g �mE�O AhZ $������l� O��,�&E�O�j Y hW X  ��  	a Y h[OY��Oa �%a %E` O_ �la a a  O�a  E` O_ j Oa E` O_ j O_ �ka a a  Oa  C*a -a ,E`  O_  k &  l_  kh *a _  �l/j ![OY��Y hO*j "U�x �w <�v�u  �t  �s   ascr  ��ޭ
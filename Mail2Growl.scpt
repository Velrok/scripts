FasdUAS 1.101.10   ��   ��    k             l     ��  ��      Mail2Growl     � 	 	    M a i l 2 G r o w l   
  
 l     ��  ��      Growl Alerts in Mail     �   *   G r o w l   A l e r t s   i n   M a i l      l     ��  ��    %  Wassim Jabi [http://wjabi.net]     �   >   W a s s i m   J a b i   [ h t t p : / / w j a b i . n e t ]      l     ��  ��    ^ X Modified from the excellent script by Hunter Ford [http://www.cupcakewithsprinkles.com]     �   �   M o d i f i e d   f r o m   t h e   e x c e l l e n t   s c r i p t   b y   H u n t e r   F o r d   [ h t t p : / / w w w . c u p c a k e w i t h s p r i n k l e s . c o m ]      l     ��  ��    � � If it exists, this script sends the photo of the sender to Growl from the address book. Otherwise, it sends the sender place holder image from Mail.app.     �  2   I f   i t   e x i s t s ,   t h i s   s c r i p t   s e n d s   t h e   p h o t o   o f   t h e   s e n d e r   t o   G r o w l   f r o m   t h e   a d d r e s s   b o o k .   O t h e r w i s e ,   i t   s e n d s   t h e   s e n d e r   p l a c e   h o l d e r   i m a g e   f r o m   M a i l . a p p .      l     ��   !��     f ` Original script found at [http://hunterford.me/growl-notifications-for-apple-mail-on-mac-os-x/]    ! � " " �   O r i g i n a l   s c r i p t   f o u n d   a t   [ h t t p : / / h u n t e r f o r d . m e / g r o w l - n o t i f i c a t i o n s - f o r - a p p l e - m a i l - o n - m a c - o s - x / ]   # $ # l     �� % &��   % � � This script uses a tip to summarise many messages by "Ryan" in the comments section at [http://hunterford.me/growl-notifications-for-apple-mail-on-mac-os-x/]    & � ' '<   T h i s   s c r i p t   u s e s   a   t i p   t o   s u m m a r i s e   m a n y   m e s s a g e s   b y   " R y a n "   i n   t h e   c o m m e n t s   s e c t i o n   a t   [ h t t p : / / h u n t e r f o r d . m e / g r o w l - n o t i f i c a t i o n s - f o r - a p p l e - m a i l - o n - m a c - o s - x / ] $  ( ) ( l     �� * +��   * k e This script also used tips from [http://www.macosxtips.co.uk] for finding photos in the Address Book    + � , , �   T h i s   s c r i p t   a l s o   u s e d   t i p s   f r o m   [ h t t p : / / w w w . m a c o s x t i p s . c o . u k ]   f o r   f i n d i n g   p h o t o s   i n   t h e   A d d r e s s   B o o k )  - . - l     �� / 0��   / k e This script arises from the lack of any Growl Support in Mac OS X Snow Leopard (10.6) or Lion (10.7)    0 � 1 1 �   T h i s   s c r i p t   a r i s e s   f r o m   t h e   l a c k   o f   a n y   G r o w l   S u p p o r t   i n   M a c   O S   X   S n o w   L e o p a r d   ( 1 0 . 6 )   o r   L i o n   ( 1 0 . 7 ) .  2 3 2 l     �� 4 5��   4 � � Code inspired by and adapted from James Higgs [http://blog.jameshiggs.com/2009/08/28/growlmail-on-snow-leopard-a-temporary-fix/] as well as those mentioned.    5 � 6 6:   C o d e   i n s p i r e d   b y   a n d   a d a p t e d   f r o m   J a m e s   H i g g s   [ h t t p : / / b l o g . j a m e s h i g g s . c o m / 2 0 0 9 / 0 8 / 2 8 / g r o w l m a i l - o n - s n o w - l e o p a r d - a - t e m p o r a r y - f i x / ]   a s   w e l l   a s   t h o s e   m e n t i o n e d . 3  7 8 7 l     ��������  ��  ��   8  9 : 9 l     ;���� ; O      < = < k     > >  ? @ ? l   �� A B��   A 0 * Make a list of all the notification types    B � C C T   M a k e   a   l i s t   o f   a l l   t h e   n o t i f i c a t i o n   t y p e s @  D E D l   �� F G��   F ' ! that this script will ever send:    G � H H B   t h a t   t h i s   s c r i p t   w i l l   e v e r   s e n d : E  I J I r    	 K L K J     M M  N�� N m     O O � P P  N e w   E m a i l��   L l      Q���� Q o      ���� ,0 allnotificationslist allNotificationsList��  ��   J  R S R l  
 
��������  ��  ��   S  T U T l  
 
�� V W��   V ' ! Make a list of the notifications    W � X X B   M a k e   a   l i s t   o f   t h e   n o t i f i c a t i o n s U  Y Z Y l  
 
�� [ \��   [ ' ! that will be enabled by default.    \ � ] ] B   t h a t   w i l l   b e   e n a b l e d   b y   d e f a u l t . Z  ^ _ ^ l  
 
�� ` a��   ` 8 2 Those not enabled by default can be enabled later    a � b b d   T h o s e   n o t   e n a b l e d   b y   d e f a u l t   c a n   b e   e n a b l e d   l a t e r _  c d c l  
 
�� e f��   e 7 1 in the 'Applications' tab of the growl prefpane.    f � g g b   i n   t h e   ' A p p l i c a t i o n s '   t a b   o f   t h e   g r o w l   p r e f p a n e . d  h i h r   
  j k j J   
  l l  m�� m m   
  n n � o o  N e w   E m a i l��   k l      p���� p o      ���� 40 enablednotificationslist enabledNotificationsList��  ��   i  q r q l   ��������  ��  ��   r  s t s l   �� u v��   u &   Register our script with growl.    v � w w @   R e g i s t e r   o u r   s c r i p t   w i t h   g r o w l . t  x y x l   �� z {��   z 6 0 You can optionally (as here) set a default icon    { � | | `   Y o u   c a n   o p t i o n a l l y   ( a s   h e r e )   s e t   a   d e f a u l t   i c o n y  } ~ } l   ��  ���    ' ! for this script's notifications.    � � � � B   f o r   t h i s   s c r i p t ' s   n o t i f i c a t i o n s . ~  ��� � I   ���� �
�� .registernull��� ��� null��   � �� � �
�� 
appl � m     � � � � �  M a i l � �� � �
�� 
anot � o    ���� ,0 allnotificationslist allNotificationsList � �� � �
�� 
dnot � o    ���� 40 enablednotificationslist enabledNotificationsList � �� ���
�� 
iapp � m     � � � � �  M a i l��  ��   = m      � �                                                                                  GRRR  alis    �  Lion                       �<�*H+   J�GrowlHelperApp.app                                              J����         ����  	                	Resources     �<�      ��6p     J� J� J� E�   �  VLion:Library: PreferencePanes: Growl.prefPane: Contents: Resources: GrowlHelperApp.app  &  G r o w l H e l p e r A p p . a p p  
  L i o n  LLibrary/PreferencePanes/Growl.prefPane/Contents/Resources/GrowlHelperApp.app  / ��  ��  ��   :  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Mail Rule Trigger    � � � � $   M a i l   R u l e   T r i g g e r �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � q k Source: Benjamin S. Waldie [http://www.mactech.com/articles/mactech/Vol.21/21.09/ScriptingMail/index.html]    � � � � �   S o u r c e :   B e n j a m i n   S .   W a l d i e   [ h t t p : / / w w w . m a c t e c h . c o m / a r t i c l e s / m a c t e c h / V o l . 2 1 / 2 1 . 0 9 / S c r i p t i n g M a i l / i n d e x . h t m l ] �  � � � w       � � � i      � � � I     �� � �
�� .emalcpmanull���     **** � o      ���� *0 theselectedmessages theSelectedMessages � �� ���
�� 
pmar � o      ���� 0 therule theRule��   � k    ! � �  � � � r     	 � � � I    �� ���
�� .corecnte****       **** � n      � � � 2   ��
�� 
cobj � o     ���� *0 theselectedmessages theSelectedMessages��   � o      ���� 0 n N �  ��� � Z   
! � ��� � � l  
  ����� � ?   
  � � � o   
 ���� 0 n N � m    ���� ��  ��   � k    . � �  � � � r     � � � b     � � � b     � � � m     � � � � �   � o    ���� 0 n N � m     � � � � �    n e w   m e s s a g e s � o      ���� *0 multipledescription multipleDescription �  ��� � O    . � � � I   -���� �
�� .notifygrnull��� ��� null��   � �� � �
�� 
name � m     � � � � �  N e w   E m a i l � �� � �
�� 
titl � b     % � � � b     # � � � m     ! � � � � �  Y o u   h a v e   � o   ! "���� 0 n N � m   # $ � � � � �    n e w   m e s s a g e s . � �� � �
�� 
desc � m   & ' � � � � �    � �� ���
�� 
appl � m   ( ) � � � � �  M a i l��   � m     � �                                                                                  GRRR  alis    �  Lion                       �<�*H+   J�GrowlHelperApp.app                                              J����         ����  	                	Resources     �<�      ��6p     J� J� J� E�   �  VLion:Library: PreferencePanes: Growl.prefPane: Contents: Resources: GrowlHelperApp.app  &  G r o w l H e l p e r A p p . a p p  
  L i o n  LLibrary/PreferencePanes/Growl.prefPane/Contents/Resources/GrowlHelperApp.app  / ��  ��  ��   � X   1! ��� � � k   C � �  � � � l  C C�� � ���   � "  Process the current message    � � � � 8   P r o c e s s   t h e   c u r r e n t   m e s s a g e �  � � � l  C C��������  ��  ��   �  � � � l  C C�� � ���   � 1 + Grab the subject and sender of the message    � � � � V   G r a b   t h e   s u b j e c t   a n d   s e n d e r   o f   t h e   m e s s a g e �  � � � r   C O � � � n  C M � � � I   D M�� ����� 0 extractname ExtractName �  ��� � n   D I � � � 1   E I��
�� 
sndr � o   D E���� 0 thismessage thisMessage��  ��   �  f   C D � o      ���� 0 growlsender growlSender �  � � � Q   P � � � � � r   S d � � � n  S b � � � I   T b�� ����� 20 getphotofromaddressbook getPhotoFromAddressBook �  ��  n  T ^ I   U ^������ *0 extractemailaddress ExtractEmailAddress �� n   U Z 1   V Z��
�� 
sndr o   U V���� 0 thismessage thisMessage��  ��    f   T U��  ��   �  f   S T � o      ���� 0 
growlphoto 
growlPhoto � R      ������
�� .ascrerr ****      � ****��  ��   � r   l � I  l ~��	

�� .rdwrread****        ****	 4   l t��
�� 
psxf m   p s � � / A p p l i c a t i o n s / M a i l . a p p / C o n t e n t s / R e s o u r c e s / S e n d e r I m a g e P l a c e h o l d e r . p n g
 ����
�� 
as   m   w z �  T I F F��   o      ���� 0 
growlphoto 
growlPhoto �  r   � � n   � � 1   � ���
�� 
subj o   � ����� 0 thismessage thisMessage o      ���� 0 growlsubject growlSubject  r   � � b   � � b   � � o   � ����� 0 growlsender growlSender o   � ���
�� 
ret  o   � ����� 0 growlsubject growlSubject o      ���� 0 
growltitle 
growlTitle   l  � ���!"��  ! 0 * Use the first 100 characters of a message   " �## T   U s e   t h e   f i r s t   1 0 0   c h a r a c t e r s   o f   a   m e s s a g e  $%$ r   � �&'& l  � �(����( n   � �)*) 1   � ���
�� 
ctnt* o   � ����� 0 thismessage thisMessage��  ��  ' o      ���� $0 growldescription growlDescription% +,+ r   � �-.- l  � �/����/ n   � �010 1   � ��
� 
leng1 o   � ��~�~ $0 growldescription growlDescription��  ��  . o      �}�} 0 growllength growlLength, 232 l  � ��|�{�z�|  �{  �z  3 454 Z   � �67�y�x6 ?   � �898 o   � ��w�w 0 growllength growlLength9 m   � ��v�v d7 r   � �:;: b   � �<=< b   � �>?> m   � �@@ �AA  ? l  � �B�u�tB n   � �CDC 7 � ��sEF
�s 
cha E m   � ��r�r F m   � ��q�q dD o   � ��p�p $0 growldescription growlDescription�u  �t  = m   � �GG �HH    &; o      �o�o $0 growldescription growlDescription�y  �x  5 IJI l  � ��n�m�l�n  �m  �l  J KLK l  � ��kMN�k  M   Send a Notification   N �OO (   S e n d   a   N o t i f i c a t i o nL P�jP O   �QRQ Q   �STUS I  � ��i�hV
�i .notifygrnull��� ��� null�h  V �gWX
�g 
nameW m   � �YY �ZZ  N e w   E m a i lX �f[\
�f 
titl[ o   � ��e�e 0 
growltitle 
growlTitle\ �d]^
�d 
desc] o   � ��c�c $0 growldescription growlDescription^ �b_`
�b 
appl_ m   � �aa �bb  M a i l` �ac�`
�a 
imagc o   � ��_�_ 0 
growlphoto 
growlPhoto�`  T R      �^�]�\
�^ .ascrerr ****      � ****�]  �\  U k   �dd efe r   �ghg l  �i�[�Zi I  ��Yjk
�Y .rdwrread****        ****j 4   � ��Xl
�X 
psxfl m   � �mm �nn � / A p p l i c a t i o n s / M a i l . a p p / C o n t e n t s / R e s o u r c e s / S e n d e r I m a g e P l a c e h o l d e r . p n gk �Wo�V
�W 
as  o m   � �pp �qq  T I F F�V  �[  �Z  h o      �U�U 0 
growlphoto 
growlPhotof r�Tr I �S�Rs
�S .notifygrnull��� ��� null�R  s �Qtu
�Q 
namet m  	vv �ww  N e w   E m a i lu �Pxy
�P 
titlx o  
�O�O 0 
growltitle 
growlTitley �Nz{
�N 
descz o  �M�M $0 growldescription growlDescription{ �L|}
�L 
appl| m  ~~ �  M a i l} �K��J
�K 
imag� o  �I�I 0 
growlphoto 
growlPhoto�J  �T  R m   � ���                                                                                  GRRR  alis    �  Lion                       �<�*H+   J�GrowlHelperApp.app                                              J����         ����  	                	Resources     �<�      ��6p     J� J� J� E�   �  VLion:Library: PreferencePanes: Growl.prefPane: Contents: Resources: GrowlHelperApp.app  &  G r o w l H e l p e r A p p . a p p  
  L i o n  LLibrary/PreferencePanes/Growl.prefPane/Contents/Resources/GrowlHelperApp.app  / ��  �j  �� 0 thismessage thisMessage � o   4 5�H�H *0 theselectedmessages theSelectedMessages��   ��                                                                                  emal  alis    .  Lion                       �<�*H+     �Mail.app                                                        *mʜ        ����  	                Applications    �<�      ʜGV       �  Lion:Applications: Mail.app     M a i l . a p p  
  L i o n  Applications/Mail.app   / ��   � ��� l     �G�F�E�G  �F  �E  � ��� l     �D���D  �   *ExtractName*   � ���    * E x t r a c t N a m e *� ��� l     �C�B�A�C  �B  �A  � ��� l     �@���@  � 6 0 gathers the name portion from the "From: " line   � ��� `   g a t h e r s   t h e   n a m e   p o r t i o n   f r o m   t h e   " F r o m :   "   l i n e� ��� l     �?�>�=�?  �>  �=  � ��� l     �<���<  � R L Source: robJ [http://forums.macosxhints.com/archive/index.php/t-19954.html]   � ��� �   S o u r c e :   r o b J   [ h t t p : / / f o r u m s . m a c o s x h i n t s . c o m / a r c h i v e / i n d e x . p h p / t - 1 9 9 5 4 . h t m l ]� ��� i   ��� I      �;��:�; 0 extractname ExtractName� ��9� o      �8�8 0 sender_  �9  �:  � Z     C���7�� C    ��� o     �6�6 0 sender_  � m    �� ���  <� L    �� n    ��� 7   �5��
�5 
ctxt� m    �4�4 � m    �3�3��� o    �2�2 0 sender_  �7  � k    C�� ��� r    ��� 1    �1
�1 
txdl� o      �0�0 0 oldtids oldTIDs� ��� Q    >���� k    1�� ��� r    $��� m     �� ���  <� 1     #�/
�/ 
txdl� ��� r   % +��� n   % )��� 4  & )�.�
�. 
citm� m   ' (�-�- � o   % &�,�, 0 sender_  � o      �+�+ 	0 name_  � ��*� r   , 1��� o   , -�)�) 0 oldtids oldTIDs� 1   - 0�(
�( 
txdl�*  � R      �'�&�%
�' .ascrerr ****      � ****�&  �%  � r   9 >��� o   9 :�$�$ 0 oldtids oldTIDs� 1   : =�#
�# 
txdl� ��"� L   ? C�� c   ? B��� o   ? @�!�! 	0 name_  � m   @ A� 
�  
TEXT�"  � ��� l     ����  �  �  � ��� l     ����  �   *ExtractEmailAddress*   � ��� ,   * E x t r a c t E m a i l A d d r e s s *� ��� l     ����  �  �  � ��� l     ����  � ? 9 gathers the email address portion from the "From: " line   � ��� r   g a t h e r s   t h e   e m a i l   a d d r e s s   p o r t i o n   f r o m   t h e   " F r o m :   "   l i n e� ��� l     ����  �  �  � ��� l     ����  � R L Source: robJ [http://forums.macosxhints.com/archive/index.php/t-19954.html]   � ��� �   S o u r c e :   r o b J   [ h t t p : / / f o r u m s . m a c o s x h i n t s . c o m / a r c h i v e / i n d e x . p h p / t - 1 9 9 5 4 . h t m l ]� ��� i   ��� I      ���� *0 extractemailaddress ExtractEmailAddress� ��� o      �� 0 sender_  �  �  � Z     F����� C    ��� o     �� 0 sender_  � m    �� ���  <� L    �� n    ��� 7   ���
� 
ctxt� m    �� � m    ����� o    �
�
 0 sender_  �  � k    F�� ��� r    ��� 1    �	
�	 
txdl� o      �� 0 oldtids oldTIDs� ��� Q    A���� k    4�� ��� r    '��� J    #    m      �  < � m     ! �  >�  � 1   # &�
� 
txdl� 	 r   ( .

 n   ( , 4  ) ,�
� 
citm m   * +��  o   ( )�� 0 sender_   o      �� 
0 email_  	 � r   / 4 o   / 0� �  0 oldtids oldTIDs 1   0 3��
�� 
txdl�  � R      ������
�� .ascrerr ****      � ****��  ��  � r   < A o   < =���� 0 oldtids oldTIDs 1   = @��
�� 
txdl� �� L   B F c   B E o   B C���� 
0 email_   m   C D��
�� 
TEXT��  �  l     ��������  ��  ��    l     ��������  ��  ��   �� i    I      ������ 20 getphotofromaddressbook getPhotoFromAddressBook  ��  o      ���� 0 sender_  ��  ��   k     >!! "#" r     $%$ I    
��&'
�� .rdwrread****        ****& 4     ��(
�� 
psxf( m    )) �** � / A p p l i c a t i o n s / M a i l . a p p / C o n t e n t s / R e s o u r c e s / S e n d e r I m a g e P l a c e h o l d e r . p n g' ��+��
�� 
as  + m    ,, �--  T I F F��  % o      ���� 
0 photo_  # ./. Q    ;0120 O    '343 r    &565 6   $787 n    9:9 1    ��
�� 
az50: 2   ��
�� 
azf48 E    #;<; n    =>= 1    ��
�� 
az17> 2   ��
�� 
az21< o     "���� 0 sender_  6 o      ���� 
0 photo_  4 m    ??�                                                                                  adrb  alis    N  Lion                       �<�*H+     �Address Book.app                                                8�ʡZi        ����  	                Applications    �<�      ʡ��       �  #Lion:Applications: Address Book.app   "  A d d r e s s   B o o k . a p p  
  L i o n  Applications/Address Book.app   / ��  1 R      ������
�� .ascrerr ****      � ****��  ��  2 r   / ;@A@ I  / 9��BC
�� .rdwrread****        ****B 4   / 3��D
�� 
psxfD m   1 2EE �FF � / A p p l i c a t i o n s / M a i l . a p p / C o n t e n t s / R e s o u r c e s / S e n d e r I m a g e P l a c e h o l d e r . p n gC ��G��
�� 
as  G m   4 5HH �II  T I F F��  A o      ���� 
0 photo_  / J��J L   < >KK o   < =���� 
0 photo_  ��  ��       ��LMNOPQ��  L ����������
�� .emalcpmanull���     ****�� 0 extractname ExtractName�� *0 extractemailaddress ExtractEmailAddress�� 20 getphotofromaddressbook getPhotoFromAddressBook
�� .aevtoappnull  �   � ****M �� �����RS��
�� .emalcpmanull���     ****�� *0 theselectedmessages theSelectedMessages�� ������
�� 
pmar�� 0 therule theRule��  R ������������������������ *0 theselectedmessages theSelectedMessages�� 0 therule theRule�� 0 n N�� *0 multipledescription multipleDescription�� 0 thismessage thisMessage�� 0 growlsender growlSender�� 0 
growlphoto 
growlPhoto�� 0 growlsubject growlSubject�� 0 
growltitle 
growlTitle�� $0 growldescription growlDescription�� 0 growllength growlLengthS -������ � � ��� ��� � ��� ��� �����������������������������������@��GYa����mpv~
�� 
cobj
�� .corecnte****       ****�� 
�� 
name
�� 
titl
�� 
desc
�� 
appl�� 
�� .notifygrnull��� ��� null
�� 
kocl
�� 
sndr�� 0 extractname ExtractName�� *0 extractemailaddress ExtractEmailAddress�� 20 getphotofromaddressbook getPhotoFromAddressBook��  ��  
�� 
psxf
�� 
as  
�� .rdwrread****        ****
�� 
subj
�� 
ret 
�� 
ctnt
�� 
leng�� d
�� 
cha 
�� 
imag�� 
��"��-j E�O�� #�%�%E�O� *����%�%����� UY � �[a �l kh )�a ,k+ E�O ))�a ,k+ k+ E�W X  )a a /a a l E�O�a ,E�O�_ %�%E�O�a ,E�O�a  ,E�O�a ! a "�[a #\[Zk\Za !2%a $%E�Y hO� P *�a %���a &a '�a ( W 3X  )a a )/a a *l E�O*�a +���a ,a '�a ( U[OY�!N �������TU���� 0 extractname ExtractName�� ��V�� V  ���� 0 sender_  ��  T �������� 0 sender_  �� 0 oldtids oldTIDs�� 	0 name_  U 	����������������
�� 
ctxt����
�� 
txdl
�� 
citm��  ��  
�� 
TEXT�� D�� �[�\[Zl\Z�2EY /*�,E�O �*�,FO��k/E�O�*�,FW X  �*�,FO��&O �������WX���� *0 extractemailaddress ExtractEmailAddress�� ��Y�� Y  ���� 0 sender_  ��  W �������� 0 sender_  �� 0 oldtids oldTIDs�� 
0 email_  X 
���������������
�� 
ctxt����
�� 
txdl
�� 
citm��  ��  
�� 
TEXT�� G�� �[�\[Zl\Z�2EY 2*�,E�O ��lv*�,FO��l/E�O�*�,FW X  �*�,FO��&P ������Z[���� 20 getphotofromaddressbook getPhotoFromAddressBook�� �\� \  �~�~ 0 sender_  ��  Z �}�|�} 0 sender_  �| 
0 photo_  [ �{)�z,�y?�x�w]�v�u�t�sEH
�{ 
psxf
�z 
as  
�y .rdwrread****        ****
�x 
azf4
�w 
az50]  
�v 
az21
�u 
az17�t  �s  �� ?)��/��l E�O � *�-�,�[�-�,\Z�@1E�UW X  )��/��l E�O�Q �r^�q�p_`�o
�r .aevtoappnull  �   � ****^ k     aa  9�n�n  �q  �p  _  `  � O�m n�l�k ��j�i�h ��g�f�m ,0 allnotificationslist allNotificationsList�l 40 enablednotificationslist enabledNotificationsList
�k 
appl
�j 
anot
�i 
dnot
�h 
iapp�g 
�f .registernull��� ��� null�o � �kvE�O�kvE�O*��������� Uascr  ��ޭ
   M S B A M L   `   `   `  ����D  @Nomina1.0, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Nomina1._0
Nomina1._0  5   	        Nomina1._0.WinConfigNomina   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:Nomina1._0     5   	     � Title$  WinConfigNomina��5   	   $��204.448��6!   $��397.791��62   .��5	      � $��0,0,2,-2q�6   .+�5
   
   �� -   5         ��Name$ label_Copy26��5
      $��
Conceptos:��6&   $��16,0,305,122q�6;   $��Right=�6Q    J� RenderTransformOrigin$ 
0.517,0.56&�6t   $��28��6�   $��Bottom=�6�   �� 5   
   -   5        $ label_Copy27��5      $��Campos:��6&   $��207,0,117,122q�68   $��Right=�6O   $ 
0.517,0.56&�6r   $��25��6�   $��Bottom=�6�   �� 5   
   -   5         ��Name$ listBox_Copy��5      $��207,0,49,17q�6(   
����� �$��1q�6P   &   System.Windows.Media.TextOptions   TextHintingMode$ Animated=�6�    �� SelectionMode$ Single=�6�   $	��105��6�   $��Bottom=�6   �� DisplayMemberPath$ nombrecampo��6   ��6d   �� *ListaCampos+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�6   �� 5   
   -   5        	 ��Name$	 	BtnFolder��5      $��Right=�6$   $��35��6@      MetroCircleButtonStyle#���   6K   
 � ToolTip$
 Modificar Campo��6|   $��	0,0,13,86q�6�   $��35��6�   $��Bottom=�6�   ��6�   �� *#!CamposViewList.ChangeValueCommand+��6  �� *SelectedValue+ �� ElementName$ listBox_Copy��.��5      �� $��15��6   $��15��5      
����� � J� OpacityMask 5      !� 5       j� Stretch$
 Fill=�6"     appbar_folder_open !� Visual# �  5      5      5      �� 5   
   -   5        $ listBox��5      $��16,0,230,17q�6#   
����� �$��1q�6K    �� SelectedValuePath$ codigo��6�   $ nombre��6�   $ Animated=�6�   $��Disabled=�6  $	��105��6I  $��Bottom=�6V  ��6_   �� *FullConcepts+$ TwoWay=�$ PropertyChanged=� �� SelectedIndex 6q  �� *ConceptosViewList.ItemActual+� 5   
   -   5         �Name$ BtnGroup��5      $
��Left=�6!   $	��116��6<   $��
165,52,0,0q�6I   $	��Top=�6]   $��35��6u   .+�5      �� -   5        $	 btnUp��5      $
��Left=�6$   $��35��6?   #���   6J   $
 Mover Arriba��6{   $��0,0,0,85q�6�   $��35��6�   $��Bottom=�6�   ��6�   �� *MoveUpCommand+��6�   �� *SelectedValue+$ listBox��.��5      �� $��15��6   $��15��5      
����� � 5      !� 5      $
 Fill=�6&     appbar_arrow_up# �  5      5!      5"      �� 5#      -   5        $	 btnDown��5#      $
��Left=�6&   $��35��6A   #���   6L   $
 Mover Abajo��6}   $��0,0,0,57q�6�   $��35��6�   $��Bottom=�6�   ��6�   �� *MoveDownCommand+��6�   �� *SelectedValue+$ listBox��.��5$      �� $��15��6   $��15��5%      
����� � 5'      !� 5(      $
 Fill=�6&     appbar_arrow_down# �  5)      5+      5,      �� 5-      -	   5        $	 BtnPlus��5-      $
��Left=�6&   $��35��6A   #���   6L   $
 Agregar Concepto��6}   $��0,0,0,29q�6�   $��35��6�   $��Bottom=�6�   ��6�   �� *AddConceptCommand+.��5.      �� $��15��6   $��15��5/      
����� � 51      !� 52      $
 Fill=�6&     
appbar_add# �  53      55      56      �� 57      -
   5        $	 btnEx��57      $
��Left=�6�   $��35��6�   #���   6�   $
 Eliminar Concepto��6�   $��0,0,0,1q�6  $��35��6  $��Bottom=�6  ��6%   �� *RemoveConceptCommand+��6N   �� *SelectedValue+$ listBox��.��58      �� $��15��6   $��15��59      
���  ��$ 0.5,0.5&�5:       z�5;      V� 5<      .~�5=      �� �� 5>      �� 5?       �� Angle$ -44.838Q�6.   T� 5@      5A       5C      !� 5D      $
 Fill=�6&   # �  5E      5G      5H      5I      5J      5K      
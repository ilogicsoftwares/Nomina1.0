   M S B A M L   `   `   `  ����D  @Nomina1.0, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Nomina1._0
Nomina1._0  5   	   ;"clr-namespace:Nomina1._0.ViewModelNomina1._0.ViewModel  5          Nomina1._0.WinAsigNomina   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:Nomina1._0     5   	   1vm"clr-namespace:Nomina1._0.ViewModel     5        � Title$  WinAsigNomina��5	   	   $��395.83��6   $��527.234��6/    � DataContext 5
      .  (Nomina1._0.ViewModel.AsigNominaViewModel  5   
   .��5      � .+�5   
   � $��0,7,0,0q�6   .+�5      �� -   5         ��Name$ comboBox��5       �� DisplayMemberPath$ descripcion��6I    �� SelectedIndex$ 0��6j   $
��Left=�6|   $��	10,33,0,0q�6�   $	��Top=�6�   $	��225��6�   ��6)   �� *	Nominas+ �� SelectedValue 6�   �� *Nomina+�� 5      -   5         ��Name$ listBox��5      $ Nombre��6O   
����� �$��1q�6}   $��Disabled=�6�   $	��228��6�   $	��Top=�6�    �� SelectedValuePath$ ID��6�   $��9,91,0,0q�6  $
��Left=�6  $	��226��61   �� SelectionMode$ Multiple=�6=  ��6)   �� *Trabajadoresx+6=  �� 5      -   5        	 ��Name$	 textBox2��5      $
��Left=�6(   $��23��6C   $��	10,60,0,0q�6O   
 �� TextWrapping$

 Wrap=�6b   $�� ��6v   $	��Top=�6~   $	��225��6�   6�   �� 5      -   5         ��Name$ CommandNuevo_Copy��5      $
��Left=�61   $��40��6L      MetroCircleButtonStyle#���   6W    � ToolTip$ Ver Prenomina��6�   $��235,127,0,0q�6�   $��40��6�   $	��Top=�6�   ��6�   �� *MoveTrabCommand+��6�   ��  �� ElementName$ listBox��.��5      �� $��10��6   $��10��5      
����� � J� OpacityMask 5      !� 5       j� Stretch$
 Fill=�6&     appbar_control_play !� Visual# �  5      5      5      �� 5      -   5        $ CommandNuevo_Copy2��5      $
��Left=�62   $��40��6M   #���   6X   $ Ver Prenomina��6�   $��235,163,0,0q�6�    J� RenderTransformOrigin$ 0.5,0.5&�6�   $��40��6�   $	��Top=�6�   ��6�   �� *MoveBackCommand+��6  �� $ listBox_Copy��z�5      V� 5      .~�5      �� �� 5       �� 5!       �� Angle$ -180.487Q�6*   T� 5"      5#      .��5%      �� $��10��6   $��10��5&      
����� � 5(      !� 5)      $
 Fill=�6&   # �  5*      5,      5-      �� 5.      -   5        $ listBox_Copy��5.      $ Nombre��6�   
����� �$��1q�6�   $��Disabled=�6�   $	��228��6�   $	��Top=�6
  $ ID��6"  $��
275,91,0,0q�6:  $
��Left=�6N   J� 	AllowDrop . $	��226��5/      $ Multiple=�6   ��5.   ,   �� *TrabajadoresS+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�5/      �� 50      -   5        $ comboBox_Copy��50      $
��Left=�6.   $��
276,60,0,0q�6I   $	��Top=�6]   $	��225��6u   $ descripcion��6�   ��6�   �� *	NominasTo+ 6�   �� *NominaSelected+�� 51      -   5         ��Name$ label��51      $��Seleccione Nomina��6#   $
��Left=�6?   $��10,2,0,0q�6Z   $	��Top=�6l   $	��225��6�   �� 52      -	   5        $ 
label_Copy��52      $��Nomina a Asignar��6(   $
��Left=�6C   $��
276,29,0,0q�6^   $	��Top=�6r   $	��225��6�   �� 53      -
   5        $ button��53      $��Asignar��6%   $
��Left=�67   $��426,324,0,0q�6R   $	��Top=�6g   $��75��6   ��6�   �� *AsignarAllCommad+�� 54      -   5         ��Name$ checkBox��54      $��Todos��6)   $
��Left=�69   $��
10,324,0,0q�6T   $	��Top=�6h   6�   �� 55      -   5        $ checkBox_Copy��55      $��Todos��6.   $
��Left=�6>   $��275,324,0,0q�6Y   $	��Top=�6n   6�   57      59      5:      
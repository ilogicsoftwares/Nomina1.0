   M S B A M L   `   `   `  ����D  @Nomina1.0, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:Nomina1._0.ViewModelNomina1._0.ViewModel  5   	   'clr-namespace:Nomina1._0
Nomina1._0  5   	       Nomina1._0.WinAsigCon   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1vm"clr-namespace:Nomina1._0.ViewModel     5   	   *localclr-namespace:Nomina1._0     5   	     � Title$  
WinAsigCon��5	   	   $��390.398��6   $��516.217��6-    � DataContext 5
      0  *Nomina1._0.ViewModel.AsigConceptoViewModel  5   
   .��5      � .+�5   
   �� -   5         ��Name$ comboBox��5       �� DisplayMemberPath$ descripcion��6E    �� SelectedIndex$ 0��6f   $
��Left=�6x   $��	10,33,0,0q�6�   $	��Top=�6�   $	��225��6�   ��6%   �� *	Nominas+ �� SelectedValue 6�   �� *Nomina+�� 5   
   -   5         ��Name$ listBox��5      $ Nombre��6K   
����� �$��1q�6y   $��Disabled=�6�   $	��228��6�   $	��Top=�6�    �� SelectedValuePath$ ID��6�   $��9,91,0,0q�6   $
��Left=�6  $	��226��6-   �� SelectionMode$ Multiple=�69  ��6%   �� *Trabajadoresx+69  �� 5   
   -   5        	 ��Name$	 textBox2��5      $
��Left=�6$   $��23��6?   $��	10,60,0,0q�6K   
 �� TextWrapping$

 Wrap=�6^   $�� ��6r   $	��Top=�6z   $	��225��6�   6�   �� 5   
   -   5         ��Name$ CommandNuevo_Copy��5      $
��Left=�6-   $��40��6H      MetroCircleButtonStyle#���   6S    � ToolTip$ Ver Prenomina��6�   $��235,127,0,0q�6�   $��40��6�   $	��Top=�6�   ��6�   �� *MoveTrabCommand+��6�   ��  �� ElementName$ listBox��.��5      �� $��10��6   $��10��5      
����� � J� OpacityMask 5      !� 5       j� Stretch$
 Fill=�6"     appbar_control_play !� Visual# �  5      5      5      �� 5   
   -   5        $ CommandNuevo_Copy2��5      $
��Left=�6.   $��40��6I   #���   6T   $ Ver Prenomina��6�   $��235,163,0,0q�6�    J� RenderTransformOrigin$ 0.5,0.5&�6�   $��40��6�   $	��Top=�6�   ��6�   �� *MoveBackCommand+��6  �� $ listBox_Copy��z�5      V� 5      .~�5      �� �� 5      �� 5        �� Angle$ -180.487Q�6&   T� 5!      5"      .��5$      �� $��10��6   $��10��5%      
����� � 5'      !� 5(      $
 Fill=�6"   # �  5)      5+      5,      �� 5-   
   -   5        $ listBox_Copy��5-      $ Nombre��6~   
����� �$��1q�6�   $��Disabled=�6�   $	��228��6�   $	��Top=�6  $ ID��6  $��
275,91,0,0q�64  $
��Left=�6H   J� 	AllowDrop . $	��226��5.      $ Multiple=�6   ��5-   (   �� *TrabajadoresS+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�5.      �� 5/   
   -   5        $ comboBox_Copy��5/      $
��Left=�6*   $��
276,60,0,0q�6E   $	��Top=�6Y   $	��225��6q   $ nombre��6�   ��6}   �� *	conceptos+ 6�   �� *conceptosSelected+�� 50   
   -   5         ��Name$ label��50      $��Seleccione Nomina��6   $
��Left=�6;   $��10,2,0,0q�6V   $	��Top=�6h   $	��225��6�   �� 51   
   -	   5        $ 
label_Copy��51      $��Concepto a Asignar��6$   $
��Left=�6A   $��
276,29,0,0q�6\   $	��Top=�6p   $	��225��6�   �� 52   
   -
   5        $ button��52      $��Asignar��6!   $
��Left=�63   $��426,324,0,0q�6N   $	��Top=�6c   $��75��6{   ��6�   �� *AsignarAllCommad+�� 53   
   -   5         ��Name$ checkBox��53      $��Todos��6%   $
��Left=�65   $��
10,324,0,0q�6P   $	��Top=�6d   6|   �� 54   
   -   5        $ checkBox_Copy��54      $��Todos��6*   $
��Left=�6:   $��275,324,0,0q�6U   $	��Top=�6j   6�   56      57      
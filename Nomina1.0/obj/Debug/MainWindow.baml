   M S B A M L   `   `   `  ����D  @Nomina1.0, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Nomina1._0
Nomina1._0  5   	   T PMahApps.Metro, Version=1.2.4.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fD2clr-namespace:MahApps.Metro;assembly=MahApps.MetroMahApps.Metro 5	   	       Nomina1._0.MainWindow   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:Nomina1._0     5   	   ;Controls,http://metro.mahapps.com/winfx/xaml/controls  5   	   ;
Converters*http://metro.mahapps.com/winfx/xaml/shared  5   	   >metro2clr-namespace:MahApps.Metro;assembly=MahApps.Metro  5	   	     � Title$  Ilogic Nomina 1.0��5   	   (  "MahApps.Metro.Controls.MetroWindow    IsMaxRestoreButtonEnabled .  $��523.643��6E   $��361.225��6V    � WindowStartupLocation$ CenterScreen=�6f    � WindowStyle$ ThreeDBorderWindow=�6�      AccentColorBrush   	GlowBrush# �   5       �� ClearTypeHint$ Enabled=�5       � 
ResizeMode$ CanResizeWithGrip=�5      &   System.Windows.Media.TextOptions   TextFormattingMode$ Display=�5      .��5      � -   5        $��grid1��5       � ColumnDefinitions 5   
   �� 5      $	��99* �6   �� 5      $
��160* �6   �� 5      $	��94* �6   	 � RowDefinitions	 5   
   �� 5      $	��92* �6   �� 5      $	��96* �6   �� 5      $	��10* �6   �� 5      $	��52* �6   �� 5      $	��53* �6   �� 5       $
��131* �6   �� 5!      $	��60* �6   .+�5#   
   �� -   5        
 ��Name$
 comboBox��5#      $��1��6%    �� DisplayMemberPath$ descripcion��62   $��1��6�   $��26��6�   $��Bottom=�6�   ��6R   �� *
usuarios+ �� SelectedItem 6s   �� *UsuarioActual+ �� SelectedValuePath 6�   �� *UsuarioActual.keyCi+6�   �� 5$   
   -   5         ��Name$ label��5$      $��Seleccione Usuario��6   $��0,0,0,26q�6<   $��1��6N   $��Center=�6[   $��1��6   $��25��6�   $��Bottom=�6�   G� 5%   
   -   5         G�Name$ passwordBox��5%      $��3��6+   $��1��68   $��27��6H   $��Bottom=�6T   �� 5&   
   -   5        $ 
label_Copy��5&      $��Ingrese Clave��6$   $��0,0,0,27q�6<   $��3��6N   $��Center=�6[   $��1��6   �� 5'   
   -   5         ��Name$ button��5'      $��Ingresar��6!   $��85,0,0,0q�64   $��4��6F   $��1��6S    �� 	IsDefault . $��31��6�   $	��Top=�6�   �� 5(   
   -   5        $ label1��5(      $��Nomina ��6    $	��Top=�62   $��32��6J   $��Microsoft Sans Serif)�6V   $��22(�6x   $
��Bold"�6�   $ Display=�6�   
�������$��1��6�   $��Center=�6�   $��Italic$�6  $��1��6  $��0,12,0,0q�6'  �� 5)   
   -   5         ��Name$ 	textBlock��5)      $��6��6'   $
��Wrap=�64   $��10(�6H   $��ExtraCondensed&�6V    �� TextAlignment$ Center=�6s   
����������	#FF424242$��3��6�   �� 6�   $>�8Este Sistema esta protegido por las Leyes Venezolanas e ��6�   �� 6  $�I��6  �� 6  $�nternacionesles��6"  �� 6;  $�.��6?  �� 6J  �� 6V  $�Ilogic Softwares��6Z  �� 6t  $��Arial)�6x  $�©��6�  �� 6�  $��Arial)�6�  $� 2016��6�  �� 6�  �� 6�  �� 6�  �� 6�  6�  �� 5*   
   -	   5         ��Name$ image��5*      $��68��6   $��
43,21,44,0q�6+   $	��Top=�6?   $��Resources/ILOGICICON.png��6W   $��1��6y   �� 5+   
   -
   5        $ Mensaje��5+      $�� ��6!   $��1��6,   $��0,31,0,0q�6<   $��4��6N    J� RenderTransformOrigin$ 0.895,0.038&�6[   $��Right=�6   
���  ��6�   �� 5,   
   -   5        $ label1_Copy��5,      $��Ilogic Softwares��6%   $��
64,79,57,0q�6@   $	��Top=�6T   $��42��6l   $��Microsoft Sans Serif)�6x   $��29.333(�6�   $
��Bold"�6�   $ Display=�6�   
�������$��3��6�   $��2��6  $��Center=�6  5.      5/      
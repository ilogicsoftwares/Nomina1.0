   M S B A M L   `   `   `  ����D  @Nomina1.0, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Nomina1._0
Nomina1._0  5   	   T PMahApps.Metro, Version=1.2.4.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fD2clr-namespace:MahApps.Metro;assembly=MahApps.MetroMahApps.Metro 5	   	       Nomina1._0.WinBusqueda   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:Nomina1._0     5   	   ;Controls,http://metro.mahapps.com/winfx/xaml/controls  5   	   ;
Converters*http://metro.mahapps.com/winfx/xaml/shared  5   	   >metro2clr-namespace:MahApps.Metro;assembly=MahApps.Metro  5	   	   -   5          �� ClearTypeHint$  Enabled=�5       � 
ResizeMode$ CanResizeWithGrip=�5      &   System.Windows.Media.TextOptions   TextFormattingMode$ Display=�5       � WindowStartupLocation$ CenterScreen=�5       � Title$ Cargos��5   	   $��478.195��6   $��648.497��6)   .��5      �  � ColumnDefinitions 5   
   �� 5      $
��153* �6   �� 5      $
��487* �6    � RowDefinitions 5   
   �� 5      $	��27* �6   �� 5      $	��26* �6   �� 5      $
��366* �6   �� 5      $��29 �6   .+�5   
   �� -   5         ��Name$ label��5      $��Buscar Por:��6   $��10,0,0,0q�65   �� 5   
   -   5        $ 
label_Copy��5      $��Escriba Su Consulta:��6$   $��1��6C   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ dataGrid��5      $��2��6%   $��2��62   $
��10,0q�6F   $��2q�6T   	   
IsReadOnly	 . ��6�   �� 6  �� 5   
   -   5        
 ��Name$
 button��5      $��Ok��6!   $��1��6.   $
��Left=�6>   $��	402,0,0,0q�6Y   $��3��6l   $	��Top=�6y   $��75��6�   $��25��6�   �� 5   
   -   5         ��Name$ comboBox��5      $��1��6%   $��10,0,0,0q�62   ��6D   �� �� 5    
   -   5         ��Name$ textBox��5       $��1��6#   $��1��63    �� TextWrapping$
 Wrap=�6@   $�� ��6T   $��0,0,84,0q�6\   �� 5!   
   -   5        $
 button1��5!      $��Filtrar��6"   $��1��64   $��0,0,12,0q�6D   $��1��6V   $	��Top=�6c   $��Right=�6{   $��69��6�   6�   �� 5"   
   -	   5        $ label1��5"      $��	Cantidad:��6    $
��Left=�64   $��10,0,0,0q�6O   $��3��6a   $	��Top=�6n   $��61��6�   �� 5#   
   -
   5        $ count��5#      $��	Cantidad:��6   $
��Left=�63   $��68,0,0,0q�6N   $��3��6`   $	��Top=�6m   $��61��6�   5%      5&      
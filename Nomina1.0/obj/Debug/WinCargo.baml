   M S B A M L   `   `   `  ����D  @Nomina1.0, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Nomina1._0
Nomina1._0  5   	   ;"clr-namespace:Nomina1._0.ViewModelNomina1._0.ViewModel  5   	   T PMahApps.Metro, Version=1.2.4.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fD2clr-namespace:MahApps.Metro;assembly=MahApps.MetroMahApps.Metro 5
   	       Nomina1._0.WinCargo   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:Nomina1._0     5   	   ;Controls,http://metro.mahapps.com/winfx/xaml/controls  5   	   +vm"clr-namespace:Nomina1._0.ViewModel  5   	   ;
Converters*http://metro.mahapps.com/winfx/xaml/shared  5	   	   >metro2clr-namespace:MahApps.Metro;assembly=MahApps.Metro  5
   	   $   Nomina1._0.MetroToolWindowBase    	Activated$  MetroWindow_Activated��5   9      Closed$ MetroWindow_Closed��6[    �� ClearTypeHint$ Enabled=�5       � 
ResizeMode$ CanResizeWithGrip=�5      &   System.Windows.Media.TextOptions   TextFormattingMode$ Display=�5       � WindowStartupLocation$ CenterScreen=�5       � Title$ Cargos��5   	   $��172.556��6   $��402.632��6)    � DataContext 5      )  #Nomina1._0.ViewModel.CargoViewModel  5   
   .��5      �  � ColumnDefinitions 5   
   �� 5      $
��105* �6   �� 5      $
��251* �6   �� 5      $	��39* �6   .+�5   
   �� -   5        	 ��Name$	 label��5      $��Codigo:��6   $��0,11,0,0q�61   $	��Top=�6C   $��Right=�6[   $��25��6~   �� 5   
   -   5        
 ��Name$
 textBox��5      $��1��6#   $��23��63   $��
0,12,105,0q�6?    �� TextWrapping$
 Wrap=�6S   $	��Top=�6�   ��6g   �� *CargoActual.sidcargo+ �� Mode$ OneWay=� �� StringFormat$ 0000000�� �� UpdateSourceTrigger$ PropertyChanged=�6  �� 5   
   -   5        $	 
label_Copy��5      $��Nombre:��6$   $��0,40,0,0q�66   $	��Top=�6H   $��Right=�6`   $��25��6�   �� 5   
   -   5        $
 textBox_Copy��5      $��1��6(   $��23��68   $��0,41,0,0q�6D   $
 Wrap=�6V   $	��Top=�6�   ��6j   �� *CargoActual.Nombre+$ TwoWay=�$ PropertyChanged=�6�   �� 5   
   -   5        $	 label_Copy1��5      $��Descripción:��6%   $��0,71,0,0q�6<   $	��Top=�6N   $��Right=�6f   $��25��6�   �� 5   
   -   5        $
 textBox_Copy1��5      $��1��6)   $��23��69   $��0,72,0,0q�6E   $
 Wrap=�6W   $	��Top=�6�   ��6k   �� *CargoActual.Descripcion+$ TwoWay=�$ PropertyChanged=�6�   �� 5    
   -   5         ��Name$ comboBox��5       $��1��6%   $��	0,103,0,0q�65   $	��Top=�6H    �� DisplayMemberPath$ Descripcion��6�   ��6`   �� *	Ldepart+ �� SelectedValue 6�   �� *CargoActual.departamentos+�� 5!   
   -   5        $	 label_Copy2��5!      $��Departamento:��6%   $��	0,101,0,0q�6=   $	��Top=�6P   $��Right=�6h   $��25��6�   5#      5$      
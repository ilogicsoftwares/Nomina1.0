   M S B A M L   `   `   `  ����D  @Nomina1.0, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Nomina1._0
Nomina1._0  5   	   ;"clr-namespace:Nomina1._0.ViewModelNomina1._0.ViewModel  5      T PMahApps.Metro, Version=1.2.4.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fD2clr-namespace:MahApps.Metro;assembly=MahApps.MetroMahApps.Metro 5
   	        Nomina1._0.WinDepartamento   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:Nomina1._0     5   	   1vm"clr-namespace:Nomina1._0.ViewModel     5      ;Controls,http://metro.mahapps.com/winfx/xaml/controls  5   	   ;
Converters*http://metro.mahapps.com/winfx/xaml/shared  5	   	   >metro2clr-namespace:MahApps.Metro;assembly=MahApps.Metro  5
   	   -   5          �� ClearTypeHint$  Enabled=�5       � 
ResizeMode$ CanResizeWithGrip=�5      &   System.Windows.Media.TextOptions   TextFormattingMode$ Display=�5       � WindowStartupLocation$ CenterScreen=�5       � Title$ Departamentos��5   	   $	��129��6   $��402.632��6,    � DataContext 5      *  $Nomina1._0.ViewModel.DepartViewModel  5   
   .��5      � $��0,0,0,-2q�6    � ColumnDefinitions 5   
   �� 5      $	��99* �6   �� 5      $
��261* �6   �� 5      $	��35* �6   .+�5   
   �� -   5         ��Name$ label��5      $��Codigo:��6   $��0,15,0,0q�61   $	��Top=�6C   $��Right=�6[   $��25��6~   �� 5   
   -   5         ��Name$ textBox��5      $��1��6#   $��26��63   $��0,14,0,0q�6?   	 �� TextWrapping$
	 Wrap=�6Q   $	��Top=�6�   $
��Left=�6�   $	��122��6�   ��6e   �� *DepartActual.codigo+
 �� Mode$
 OneWay=� �� UpdateSourceTrigger$ PropertyChanged=�6�   �� 5   
   -   5        $ 
label_Copy��5      $��Nombre:��6$   $��0,46,0,0q�66   $	��Top=�6H   $��Right=�6`   $��25��6�   �� 5   
   -   5        $ textBox_Copy��5      $��1��6(   $��26��68   $��0,45,0,0q�6D   $
	 Wrap=�6V   $	��Top=�6�   ��6j   �� *DepartActual.Descripcion+$
 TwoWay=�$ PropertyChanged=�6�   5      5       
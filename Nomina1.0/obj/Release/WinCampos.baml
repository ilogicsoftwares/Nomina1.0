   M S B A M L   `   `   `  ���� D  @Nomina1.0, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Nomina1._0
Nomina1._0  ;"clr-namespace:Nomina1._0.ViewModelNomina1._0.ViewModel  T PMahApps.Metro, Version=1.2.4.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fD2clr-namespace:MahApps.Metro;assembly=MahApps.MetroMahApps.Metro     Nomina1._0.WinCampos   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     ;Controls,http://metro.mahapps.com/winfx/xaml/controls  $localclr-namespace:Nomina1._0  +vm"clr-namespace:Nomina1._0.ViewModel  ;
Converters*http://metro.mahapps.com/winfx/xaml/shared  >metro2clr-namespace:MahApps.Metro;assembly=MahApps.Metro  -     �� ClearTypeHint$  Enabled=� � 
ResizeMode$ CanResizeWithGrip=�&   System.Windows.Media.TextOptions   TextFormattingMode$ Display=� � WindowStartupLocation$ CenterScreen=� � Title$ 	WinCampos��$��232.331��$��439.849�� � DataContext *  $Nomina1._0.ViewModel.CamposViewModel  .���  � ColumnDefinitions �� $
��166* ��� $
��251* ��� $	��15* �.+��� -    ��Name$ label��$��Nombre:��$��0,12,0,0q�$	��Top=�$��Right=�$��25���� -    ��Name$ textBox��$��26��$��0,11,0,0q�	 �� TextWrapping$
	 Wrap=�$	��Top=�$��1������ *CampoActual.nombre+
 �� Mode$
 OneWay=� �� UpdateSourceTrigger$ PropertyChanged=��� -   $ 
label_Copy��$��Valor Inicial:��$��0,43,0,0q�$	��Top=�$��Right=�$��25���� -   $ textBox_Copy��$��26��$��
0,42,149,0q�$
	 Wrap=�$	��Top=�$��1������ *CampoActual.valorinicial+ �� StringFormat$ N��$
 TwoWay=�$ PropertyChanged=��� -   $ label_Copy1��$"��Reiniciar al Generar Nomina:��$��0,73,0,0q�$	��Top=�$��Right=�$��25���� -    ��Name$ checkBox��$�� ��$��1��$��0,76,0,0q�$	��Top=�$��18�� d� 	IsChecked �� *CampoActual.esReiniciado+$
 TwoWay=�$ PropertyChanged=��� -   $ label_Copy2��$��Descripción:��$��0,99,0,0q�$	��Top=�$��Right=�$��25���� -	   $ textBox_Copy1��$��84��$��0,99,0,0q�$
	 Wrap=�$	��Top=�$��1������ *CampoActual.descripcion+$
 TwoWay=�$ PropertyChanged=�
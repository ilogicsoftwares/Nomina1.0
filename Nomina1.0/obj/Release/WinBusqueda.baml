   M S B A M L   `   `   `  ���� D  @Nomina1.0, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Nomina1._0
Nomina1._0  T PMahApps.Metro, Version=1.2.4.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fD2clr-namespace:MahApps.Metro;assembly=MahApps.MetroMahApps.Metro     Nomina1._0.WinBusqueda   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     *localclr-namespace:Nomina1._0     ;Controls,http://metro.mahapps.com/winfx/xaml/controls  ;
Converters*http://metro.mahapps.com/winfx/xaml/shared  >metro2clr-namespace:MahApps.Metro;assembly=MahApps.Metro    �� ClearTypeHint$  Enabled=� � 
ResizeMode$ CanResizeWithGrip=�&   System.Windows.Media.TextOptions   TextFormattingMode$ Display=� � WindowStartupLocation$ CenterScreen=� � Title$ Cargos��$��478.195��$��648.497��.���  � ColumnDefinitions �� $
��153* ��� $
��487* � � RowDefinitions �� $	��27* ��� $	��26* ��� $
��366* ��� $	��29* �.+��� -    ��Name$ label��$��Buscar Por:��$��10,0,0,0q��� -   $ 
label_Copy��$��Escriba Su Consulta:��$��1��&   System.Windows.Controls.DataGrid  -     Name$ dataGrid��$��2��$��2��$
��10,0q�$��2q�	   
IsReadOnly	 . ���� �� -   
 ��Name$
 button��$��Ok��$��1��$
��Left=�$��	402,0,0,0q�$��3��$	��Top=�$��75��$��25���� -    ��Name$ comboBox��$��1��$��10,0,0,0q����� �� -    ��Name$ textBox��$��1��$��1�� �� TextWrapping$
 Wrap=�$�� ��$��0,0,84,0q��� -   $
 button1��$��Filtrar��$��1��$��0,0,12,0q�$��1��$	��Top=�$��Right=�$��69��
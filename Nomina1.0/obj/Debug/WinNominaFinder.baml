   M S B A M L   `   `   `  ����D  @Nomina1.0, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Nomina1._0
Nomina1._0  5   	        Nomina1._0.WinNominaFinder   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:Nomina1._0     5   	   T PMahApps.Metro, Version=1.2.4.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4f;Controls,http://metro.mahapps.com/winfx/xaml/controls  5   	     � Title$  WinNominaFinder��5	   	   $	��361��6!   $	��499��6.   .��5
      �  � ColumnDefinitions 5   
   �� 5      $
��107* �6   �� 5      $
��333* �6   �� 5      $	��51* �6    � RowDefinitions 5   
   �� 5      $	��14* �6   �� 5      $	��35* �6   �� 5      $	��33* �6   �� 5      $	��33* �6   �� 5      $	��30* �6   �� 5      $
��170* �6   �� 5      $	��16* �6   .+�5   
   �� -   5         ��Name$ 
label_Copy��5      $��Periodo Desde:��6$   $��Right=�6=   $��1��6`   $��31��6m   $	��Top=�6y   �� 5   
   -   5        $ label_Copy1��5      $��Hasta:��6%   $��
0,1,145,32q�66   $��Right=�6J   $��1��6m   $��1��6z   $��2��6�   $��Right=�6�   $��44��6�   (  "System.Windows.Controls.DatePicker  5   
   $��0,0,3,0q�6   $��1��6F   $��1��6S   $��28��6c   $	��Top=�6o   $��Right=�6�   $	��137��6�      SelectedDate 6&   �� *FHasta+6�   �� 5   
   -   5        $ label_Copy2��5      $��
Nomina Id:��6%   $��Right=�6:   $��2��6]   $��31��6j   $	��Top=�6v   �� 5   
   -   5         ��Name$ textBox��5      $��1��6#   $��2��63    �� TextWrapping$
 Wrap=�6@   $��TextBox��6T   $��28��6c   $	��Top=�6o   $��0,3,0,0q�6�   �� 5   
   -   5        $ label_Copy3��5      $��Tipo de Nomina:��6%   $��Right=�6?   $��3��6b   $��31��6o   $	��Top=�6{   �� 5   
   -   5        $ textBox_Copy��5      $��1��6(   $��3��68   $
 Wrap=�6E   $��TextBox��6Y   $��28��6h   $	��Top=�6t   $��0,1,0,0q�6�   �� 5    
   -   5        $ label_Copy4��5       $��Estatus:��6%   $��Right=�68   $��4��6[   $��0,1,0,0q�6h   $��30��6y   $	��Top=�6�   $��2��6�   �� 5!   
   -   5         ��Name$ comboBox��5!      $��1��6%   $��4��65   &   System.Windows.Controls.DataGrid  5"   
   -	   5          Name$ dataGrid��5"      $��3��6%   $
��Left=�69   $��40,6,0,0q�6T   $��5��6f   $	��414��6s   $	��145��6   $	��Top=�6�   $��2                   q�6�     5$   
   $
��Left=�6   $��1,0,0,0q�60   $	��129��6a   $��1��6m   $��28��6z   $	��Top=�6�   $��1��6�    6A   �� *FHasta+6�   �� 5%   
   -
   5        	 ��Name$	 button��5%      $��Imprimir��6!   $��1��64   $
��Left=�6D   $��271,155,0,0q�6_   $��5��6t   $	��Top=�6�   $��87��6�   $��25��6�   $��2��6�   $��2��6�   5'      5(      
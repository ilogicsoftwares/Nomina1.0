   M S B A M L   `   `   `  ����D  @Nomina1.0, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Nomina1._0
Nomina1._0  5   	   ;"clr-namespace:Nomina1._0.ViewModelNomina1._0.ViewModel  5   	       Nomina1._0.WinGenNomina   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:Nomina1._0     5   	   1vm"clr-namespace:Nomina1._0.ViewModel     5   	   T PMahApps.Metro, Version=1.2.4.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4f;Controls,http://metro.mahapps.com/winfx/xaml/controls  5   	   -   5          � Title$  WinGenNomina��5
   	   $	��171��6   $��413.955��6+    � WindowStyle$ 
ToolWindow=�6;    � WindowStartupLocation$ CenterOwner=�6T    � DataContext 5      -  'Nomina1._0.ViewModel.PrenominaViewModel  5   
   .��5      �  � ColumnDefinitions 5   
   �� 5      $	��16* �6   �� 5      $	��45* �6   �� 5      $
��128* �6   �� 5      $	��58* �6   �� 5      $
��134* �6   �� 5      $	��25* �6    � RowDefinitions 5   
   �� 5      $	��34* �6   �� 5      $	��32* �6   �� 5      $	��49* �6   �� 5      $	��31* �6   .+�5   
   �� -   5         ��Name$ comboBox��5      $��1��6%   $��1��65   $��4��6B   $��0,0,0,2q�6V    �� DisplayMemberPath$ descripcion��6�   ��6g   �� *
Lnominas+ �� SelectedValue 6�   �� *SelectedNomina+	 �� Mode$	 TwoWay=�
 �� UpdateSourceTrigger$
 PropertyChanged=�6�   �� 5   
   -   5         ��Name$ label��5      $��Nomina:��6   $��1��61   $��0,6,45,0q�6A   $	��Top=�6S   $��26��6k   $��2��6w   �� 5   
   -   5        $ 
label_Copy��5      $��Desde:��6$   $��0,21,0,0q�65   $	��Top=�6G   $��26��6_   $��2��6k   $��Right=�6x   $��2��6�   �� 5    
   -   5        $ label_Copy1��5       $��Hasta:��6%   $��0,23,2,0q�66   $	��Top=�6H   $��26��6`   $��2��6l   $��Right=�6y   $��3��6�   $��Right=�6�   $��44��6�   �� 5!   
   -   5         ��Name$ button��5!      $��Aplicar��6!   $��4��63   $��0,0,0,6q�6C   $��3��6T   $��Bottom=�6a   $��25��6|   $��Right=�6�   $��75��6�   ��6�   �� *GenerarPrenominaCommand+��6�   �� *SelectedValue+ �� ElementName$ comboBox��(  "System.Windows.Controls.DatePicker  5"   
   $��2��6   $
��Left=�6%   $��0,21,0,0q�6@   $��2��6R   $	��Top=�6_   $��26��6�   $	��128��6�      SelectedDate 6w   �� *Fdesde+6�     5#   
   $��4��6   $
��Left=�6%   $��0,21,0,0q�6@   $��2��6R   $	��Top=�6_   $��26��6�   $	��134��6�    6w   �� *FHasta+6�   �� 5$   
   -   5        $ label_Copy2��5$      $��Periodo:��6%   $��1��68   $��	0,31,45,0q�6H   $	��Top=�6[   $��23��6s   $��2��6   $��1��6�   $��2��6�   5&      5'      
   M S B A M L   `   `   `  ����D  @Nomina1.0, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Nomina1._0
Nomina1._0  5   	   ;"clr-namespace:Nomina1._0.ViewModelNomina1._0.ViewModel  5   	   O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 5	          Nomina1._0.WinRepRecibos   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   T PMahApps.Metro, Version=1.2.4.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4f;Controls,http://metro.mahapps.com/winfx/xaml/controls  5      $localclr-namespace:Nomina1._0  5   	   +vm"clr-namespace:Nomina1._0.ViewModel  5   	   0sys&clr-namespace:System;assembly=mscorlib  5	      -   5          � Title$  WinRepRecibos��5   	   $��274.484��6   $��401.496��60    � DataContext 5      0  *Nomina1._0.ViewModel.ReportNominaViewModel  5   
   -   5        reportNominaViewModel��5   #   .��5      �  � ColumnDefinitions 5   
   �� 5      $
��100* �6   �� 5      $
��268* �6   �� 5      $	��25* �6   .+�5   
   �� -   5         ��Name$ button��5      $��Inprimir��6!   $
��Left=�64   $��193,209,0,0q�6O   $	��Top=�6d   $��75��6|   $��1��6�   $��25��6�   6�   �� 5   
   -   5         ��Name$ label��5      $��Nomina N°:��6   $
��Left=�64   $��	26,22,0,0q�6O   $	��Top=�6b   $��73��6z   $��Right=�6�   $��26��6�   �� 5   
   -   5         ��Name$ textBox_Copy��5      $��26��6(   $��0,56,0,0q�64    �� TextWrapping$
 Wrap=�6F   $	��Top=�6�   $��1��6�    �� 
IsReadOnly . ��6Z   �� *%#NominaActual.nominatype.descripcion+6�   �� 5   
   -   5        $ 
label_Copy��5      $��Tipo:��6$   $
��Left=�64   $��	26,53,0,0q�6O   $	��Top=�6b   $��73��6z   $��Right=�6�   $��26��6�   �� 5   
   -   5        $ textBox_Copy1��5      $��26��6)   $��0,87,0,0q�65   $
 Wrap=�6G   $	��Top=�6   $��1��6�    . ��6[   �� *NominaActual.desde+6�   �� 5   
   -   5        $ label_Copy1��5      $��Desde:��6%   $
��Left=�66   $��	26,84,0,0q�6Q   $	��Top=�6d   $��73��6|   $��Right=�6�   $��26��6�   �� 5   
   -	   5        $ textBox_Copy2��5      $��26��6)   $��	0,118,0,0q�65   $
 Wrap=�6H   $	��Top=�6�   $��1��6�    . ��6\   �� *NominaActual.hasta+6�   �� 5   
   -
   5        $ label_Copy2��5      $��Hasta:��6%   $
��Left=�66   $��
27,115,0,0q�6Q   $	��Top=�6e   $��73��6}   $��Right=�6�   $��26��6�   �� 5   
   -   5        $ textBox_Copy3��5      $��26��6)   $��
0,24,144,0q�65   $
 Wrap=�6I   $	��Top=�6]   $��1��6u    J� SnapsToDevicePixels . ��6�   �� *NominaActual.idnominauni+	 �� Mode$	 OneWay=��� 5   
   -   5        
 ��Name$
 recibos��5      $��Recibos��6$   $��1��66   $
��Left=�6F   $��	0,149,0,0q�6a   $	��Top=�6t   $��18��6�   $��65��6�   �� 5    
   -   5        $
 resumen��5       $��Resumen��6$   $��1��66   $
��Left=�6F   $��
70,149,0,0q�6a   $	��Top=�6u   $��18��6�   $��73��6�   �� 5!   
   -   5        $	
 txt��5!      $	��Txt��6    $��1��6.   $
��Left=�6>   $��147,149,0,0q�6Y   $	��Top=�6n   $��18��6�   $��40��6�   �� 5"   
   -   5        $ label_Copy3��5"      $��Fecha Valor:��6%   $
��Left=�6<   $��
27,172,0,0q�6W   $	��Top=�6k   $��73��6�   $��Right=�6�   $��26��6�   (  "System.Windows.Controls.DatePicker  5#   
   -   5          Name$ fechita��5#      $��1,172,144,0q�6&   $	��Top=�6;   $��26��6S   $��1��6~      SelectedDate 6_   �� *Fecha+{�6�   �� *	IsChecked+ �� ElementName$	 txt���� 5$   
   -   5        $ label_Copy4��5$      $��Dividir:��6%   $
��Left=�68   $��125,172,0,0q�6S   $	��Top=�6h   $��46��6�   $��Right=�6�   $��26��6�   $��1��6�   �� 5%   
   -   5        $ divide��5%      $��1��6"   $
��Left=�62   $��16��6M   $��171,172,0,0q�6Y   $
 Wrap=�6n   $	��Top=�6�   $��97��6�   $��Right=�6�   ��6�   �� *	Dividir+{�6  �� *	IsChecked+$	 txt��5'      5(      
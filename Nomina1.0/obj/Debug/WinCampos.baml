   M S B A M L   `   `   `  ����D  @Nomina1.0, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Nomina1._0
Nomina1._0  5   	   ;"clr-namespace:Nomina1._0.ViewModelNomina1._0.ViewModel  5   
   T PMahApps.Metro, Version=1.2.4.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fD2clr-namespace:MahApps.Metro;assembly=MahApps.MetroMahApps.Metro 5
   	       Nomina1._0.WinCampos   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ;Controls,http://metro.mahapps.com/winfx/xaml/controls  5   	   $localclr-namespace:Nomina1._0  5   	   +vm"clr-namespace:Nomina1._0.ViewModel  5   
   ;
Converters*http://metro.mahapps.com/winfx/xaml/shared  5	   	   >metro2clr-namespace:MahApps.Metro;assembly=MahApps.Metro  5
   	   $   Nomina1._0.MetroToolWindowBase    	Activated$  MetroWindow_Activated��5   <      Closed$ MetroWindow_Closed��6^    �� ClearTypeHint$ Enabled=�5       � 
ResizeMode$ CanResizeWithGrip=�5      &   System.Windows.Media.TextOptions   TextFormattingMode$ Display=�5       � WindowStartupLocation$ CenterScreen=�5       � Title$ 	WinCampos��5   	   $��232.331��6   $��439.849��6,    � DataContext 5      *  $Nomina1._0.ViewModel.CamposViewModel  5   
   .��5      �  � ColumnDefinitions 5   
   �� 5      $
��166* �6   �� 5      $
��251* �6   �� 5      $	��15* �6   .+�5   
   �� -   5        	 ��Name$	 label��5      $��Nombre:��6   $��0,12,0,0q�61   $	��Top=�6C   $��Right=�6[   $��25��6~   �� 5   
   -   5        
 ��Name$
 textBox��5      $��26��6#   $��0,11,0,0q�6/    �� TextWrapping$
 Wrap=�6A   $	��Top=�6�   $��1��6�   ��6U   �� *CampoActual.nombre+ �� Mode$ OneWay=� �� UpdateSourceTrigger$ PropertyChanged=�6�   �� 5   
   -   5        $	 
label_Copy��5      $��Valor Inicial:��6$   $��0,43,0,0q�6=   $	��Top=�6O   $��Right=�6g   $��25��6�   �� 5   
   -   5        $
 textBox_Copy��5      $��26��6(   $��
0,42,149,0q�64   $
 Wrap=�6H   $	��Top=�6�   $��1��6�   ��6\   �� *CampoActual.valorinicial+ �� StringFormat$ N��$ TwoWay=�$ PropertyChanged=�6�   �� 5   
   -   5        $	 label_Copy1��5      $"��Reiniciar al Generar Nomina:��6%   $��0,73,0,0q�6L   $	��Top=�6^   $��Right=�6v   $��25��6�   �� 5   
   -   5         ��Name$ checkBox��5      $�� ��6%   $��1��60   $��0,76,0,0q�6@   $	��Top=�6R   $��18��6�    d� 	IsChecked 6j   �� *CampoActual.esReiniciado+$ TwoWay=�$ PropertyChanged=�6�   �� 5    
   -   5        $	 label_Copy2��5       $��Descripción:��6%   $��0,99,0,0q�6<   $	��Top=�6N   $��Right=�6f   $��25��6�   �� 5!   
   -   5        $
 textBox_Copy1��5!      $��84��6)   $��0,99,0,0q�65   $
 Wrap=�6G   $	��Top=�6�   $��1��6�   ��6[   �� *CampoActual.descripcion+$ TwoWay=�$ PropertyChanged=�6�   5#      5$      
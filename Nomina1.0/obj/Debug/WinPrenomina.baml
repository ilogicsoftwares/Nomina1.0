   M S B A M L   `   `   `  ����D  @Nomina1.0, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Nomina1._0
Nomina1._0  5   	       Nomina1._0.WinPrenomina   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   T PMahApps.Metro, Version=1.2.4.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4f;Controls,http://metro.mahapps.com/winfx/xaml/controls  5   	   $localclr-namespace:Nomina1._0  5   	   -   5          � Title$  	Prenomina��5	   	   $��365.414��6   $��614.661��6,    � WindowStyle$ 
ToolWindow=�6v    � ShowInTaskbar .   � WindowStartupLocation$ CenterOwner=�6�    J� IsHitTestVisible . .��5
      �  � ColumnDefinitions 5   
   �� 5      $��9* �6   �� 5      $
��207* �6   �� 5      $	��32* �6   �� 5      $
��110* �6   �� 5      $	��41* �6   �� 5      $
��151* �6   �� 5      $	��40* �6   �� 5      $	��17* �6    � RowDefinitions 5   
   �� 5      $	��68* �6   �� 5      $	��30* �6   �� 5      $
��227* �6   �� 5      $	��10* �6   .+�5   
   �� -   5         ��Name$ listBox��5       �� DisplayMemberPath$ Nombre��6H   
����� �$��1q�6v   $��Disabled=�6�   $��1��6�   $��2��6�   $��1��6�   $	��228��6�   $��Bottom=�6�   	 �� SelectedValuePath$	 ID��6  $��0,0,0,33q�6�  ��6#   �� *Trabajadores+6�  �� 5   
   -   5        
 ��Name$
 label��5      $��0,3,0,0q�6o   $	��Top=�6�   $��22(�6�   $��4��6�   $��1��6�   $��39��6�    � DataContext 6   �� *NominaActual+��6D   �� *nominatype.descripcion+6�   �� 5   
   -   5        $
 label1��5      $��Desde:��6    $��2��61   $��Right=�6A   $��	0,55,89,0q�6]   $	��Top=�6p   $��53��6�   $��Right=�6�   $��26��6�   $��2��6�   $��2��6�   (  "System.Windows.Controls.DatePicker  5   
   $��3��6   $��	23,55,0,0q�6%   $	��Top=�68   $��26��6P   {�.  $��2��6n   $��2��6�      SelectedDate 6�   �� *Fdesde+6�   �� 5   
   -   5        $
 label1_Copy��5      $��Hasta:��6%   $��5��66   $
��Left=�6F   $��0,55,0,0q�6a   $	��Top=�6s   $��60��6�   $��Right=�6�   $��26��6�   $��2��6�     5    
   $��5��6   $��	65,55,2,0q�6%   $	��Top=�68   $��26��6P   {�.  $��2��6n   $��2��6�    6�   �� *FHasta+6�   �� 5!   
   -   5        $
 label1_Copy1��5!      $��Total Nomina:��6&   $��3��6>   $
��Left=�6N   $��0,6,0,0q�6i   $��2��6z   $	��Top=�6�   $	��110��6�   $��Right=�6�   $��26��6�   �� 5"   
   -   5         ��Name$ textBox��5"      $��2��6#   $��4��67   $
��Left=�6G   $��26��6b   $��0,6,0,0q�6n   $��2��6    �� TextWrapping$
 Wrap=�6�   $	��Top=�6�   $	��192��6�   {�.  ��6�   �� *TotalNomina+ �� StringFormat$ N��6�   �� 5#   
   -   5        $
 label1_Copy2��5#      $��Total Asignaciones:��6&   $��3��6D   $
��Left=�6T   $��0,37,0,0q�6o   $��2��6�   $	��Top=�6�   $	��110��6�   $��Right=�6�   $��26��6�   �� 5$   
   -	   5        $ textBox_Copy��5$      $��2��6(   $��4��6<   $
��Left=�6L   $��26��6g   $��0,37,0,0q�6s   $��2��6�   $
 Wrap=�6�   $	��Top=�6�   $	��192��6�   {�.  ��6�   �� *	TotalAsig+$ N��6�   �� 5%   
   -
   5        $
 label1_Copy3��5%      $��Total Deducciones:��6&   $��3��6C   $
��Left=�6S   $��0,68,0,0q�6n   $��2��6�   $	��Top=�6�   $	��110��6�   $��Right=�6�   $��26��6�   �� 5&   
   -   5        $ textBox_Copy1��5&      $��2��6)   $��4��6=   $
��Left=�6M   $��26��6h   $��0,68,0,0q�6t   $��2��6�   $
 Wrap=�6�   $	��Top=�6�   $	��192��6�   {�.  ��6�   �� *
TotalDeduc+$ N��6�   �� 5'   
   $��2��6   $��4��6)   $
��Left=�69   $��40��6T   $��	0,100,0,0q�6`   $��2��6s   $	��Top=�6�   $	��192��6�   .+�5(      �� -   5         ��Name$ checkBox��5(      $��Imprimir Resumen��6)    d� 	IsChecked$
 TrueY�6D   �� 5)      -   5        $ checkBox_Copy��5)      $��Generar Txt ��6.   $
 TrueY�6E   5*      �� 5+   
   -   5         ��Name$ button��5+      $��
Recalcular��6!   $��5��66   $
��Left=�6F   $��
28,204,0,0q�6a   $��2��6u   $	��Top=�6�   $��78��6�   $��25��6�   6�   �� 5,   
   -   5        $ button_Copy��5,      $��Generar��6&   $��5��68   $��111,204,2,0q�6H   $��2��6]   $��2��6j   $��25��6�   $	��Top=�6�   �� 5-   
   -   5        $
 label1_Copy4��5-      $��Total:��6&   $��1��67   $��
117,0,37,1q�6G   $��2��6[   $��Right=�6h   $��28��6�   $��Bottom=�6�   �� 5.   
   -   5        $ textBox_Copy2��5.      $��1��6)   $��26��69   $��168,200,2,0q�6E   $��2��6Z   $
 Wrap=�6g   $	��Top=�6�   {�.  ��6{   �� *
TotalTra+��6�   Z� �� 5/   
   -   5        $ CommandNuevo��5/      $
��Left=�6'   $��35��6B      MetroCircleButtonStyle#���   6M    � ToolTip$ Modificar Campos��6~   $��
0,135,0,57q�6�   $��2��6�   $��2��6�   $��2��6�   .��50      �� $��15��6   $��15��51      
����� � J� OpacityMask 53      !� 54       j� Stretch$
 Fill=�6"     appbar_book_list !� Visual# �  55      57      58      �� 59   
   -   5        $ CommandNuevo_Copy��59      $
��Left=�6V   $��35��6q   #���   6|   $! Modificar Campos En General��6�   $��
0,163,0,29q�6�   $��2��6�   $��2��6�   $��2��6  ��6-   �� *NuevaEntidadCommand+.��5:      �� $��15��6   $��15��5;      
����� � 5=      !� 5>      $
 Fill=�6"     
appbar_box# �  5?      5A      5B      �� 5C   
   -   5        $ CommandNuevo_Copy1��5C      $
��Left=�6.   $��35��6I   #���   6T   $ Ver Prenomina��6�   $��
0,107,0,85q�6�   $��2��6�   $��2��6�   $��2��6�   .��5D      �� $��15��6   $��15��5E      
����� � 5G      !� 5H      $
 Fill=�6"     appbar_magnify_browse# �  5I      5K      5L      �� 5M   
   -   5        $ textBox1��5M      $��4��6$   $
��Left=�64   $��16��6O   $��	0,171,0,0q�6[   $��2��6n   $
 Wrap=�6{   $	��Top=�6�   $	��137��6�   $��Right=�6�   $��2��6�   ��6�   �� *txtdivision+6�   �� 5N   
   -   5        $
 label2��5N      $��Dividir en:��6    $��3��66   $
��Left=�6F   $��
33,171,0,0q�6a   $��2��6u   $	��Top=�6�    J� RenderTransformOrigin$ 0.526,0.462&�6�   $��77��6�   $��Right=�6�     5O   
   $��4��6   $��
0,143,55,0q�6%   $��2��69   $	��Top=�6F   $��26��6^   $��2��6�    6j   �� *
fechavalor+6�   �� 5P   
   -   5        $
 label1_Copy5��5P      $��Fecha Valor del Txt:��6&   $��2��6E   $��Right=�6U   $��	0,143,0,0q�6q   $��2��6�   $	��Top=�6�   $	��132��6�   $��Right=�6�   $��26��6�   $��2��6�   �� 5Q   
   -   5        $ textBox2��5Q      $��1��6$   $
��Left=�64   $��23��6O   $��1,42,0,0q�6[   $
 Wrap=�6m   $�� ��6�   $	��Top=�6�   $	��206��6�   6�   5S      5T      
   M S B A M L   `   `   `  ���� D  @Nomina1.0, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Nomina1._0
Nomina1._0      Nomina1._0.WinPrenomina   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     T PMahApps.Metro, Version=1.2.4.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4f;Controls,http://metro.mahapps.com/winfx/xaml/controls  $localclr-namespace:Nomina1._0  -     � Title$  	Prenomina��$��365.414��$��614.661�� � WindowStyle$ 
ToolWindow=� � ShowInTaskbar .   � WindowStartupLocation$ CenterOwner=� J� IsHitTestVisible . .���  � ColumnDefinitions �� $��9* ��� $
��207* ��� $	��32* ��� $
��110* ��� $	��41* ��� $
��151* ��� $	��40* ��� $	��17* � � RowDefinitions �� $	��68* ��� $	��30* ��� $
��227* ��� $	��10* �.+��� -    ��Name$ listBox�� �� DisplayMemberPath$ Nombre��
����� �$��1q�$��Disabled=�$��1��$��2��$��1��$	��228��$	��Top=�	 �� SelectedValuePath$	 ID������ *Trabajadores+�� -   
 ��Name$
 label��$��0,12,0,0q�$	��Top=�$��22(�$��4��$��1��$��39�� � DataContext �� *NominaActual+���� *nominatype.descripcion+�� -   $
 label1��$��Desde:��$��2��$��Right=�$��	0,55,89,0q�$	��Top=�$��53��$��Right=�$��26��$��2��$��2��(  "System.Windows.Controls.DatePicker  $��3��$��	23,55,0,0q�$	��Top=�$��26��{�.  $��2��$��2��   SelectedDate �� *Fdesde+�� -   $
 label1_Copy��$��Hasta:��$��5��$
��Left=�$��0,55,0,0q�$	��Top=�$��60��$��Right=�$��26��$��2��  $��5��$��	65,55,2,0q�$	��Top=�$��26��{�.  $��2��$��2�� �� *FHasta+�� -   $
 label1_Copy1��$��Total Nomina:��$��3��$
��Left=�$��0,6,0,0q�$��2��$	��Top=�$	��110��$��Right=�$��26���� -    ��Name$ textBox��$��2��$��4��$
��Left=�$��26��$��0,6,0,0q�$��2�� �� TextWrapping$
 Wrap=�$	��Top=�$	��192��{�.  ���� *TotalNomina+ �� StringFormat$ N���� -   $
 label1_Copy2��$��Total Asignaciones:��$��3��$
��Left=�$��0,37,0,0q�$��2��$	��Top=�$	��110��$��Right=�$��26���� -	   $ textBox_Copy��$��2��$��4��$
��Left=�$��26��$��0,37,0,0q�$��2��$
 Wrap=�$	��Top=�$	��192��{�.  ���� *	TotalAsig+$ N���� -
   $
 label1_Copy3��$��Total Deducciones:��$��3��$
��Left=�$��0,68,0,0q�$��2��$	��Top=�$	��110��$��Right=�$��26���� -   $ textBox_Copy1��$��2��$��4��$
��Left=�$��26��$��0,68,0,0q�$��2��$
 Wrap=�$	��Top=�$	��192��{�.  ���� *
TotalDeduc+$ N���� $��2��$��4��$
��Left=�$��40��$��	0,100,0,0q�$��2��$	��Top=�$	��192��.+��� -    ��Name$ checkBox��$��Imprimir Resumen�� d� 	IsChecked$
 TrueY��� -   $ checkBox_Copy��$��Generar Txt ��$
 TrueY��� -    ��Name$ button��$��
Recalcular��$��5��$
��Left=�$��
28,209,0,0q�$��2��$	��Top=�$��78��$��25��$��2���� -   $ button_Copy��$��Generar��$��5��$��111,209,2,0q�$��2��$��2��$��25��$	��Top=�$��2���� -   $
 label1_Copy4��$��Total:��$��1��$��
117,0,37,1q�$��2��$��Right=�$��28��$��Bottom=��� -   $ textBox_Copy2��$��1��$��26��$��168,200,2,0q�$��2��$
 Wrap=�$	��Top=�{�.  ���� *
TotalTra+��Z� �� -   $ CommandNuevo��$
��Left=�$��35��   MetroCircleButtonStyle#���    � ToolTip$ Modificar Campos��$��
0,135,0,57q�$��2��$��2��$��2��.���� $��15��$��15��
����� � J� OpacityMask !�  j� Stretch$
 Fill=�  appbar_book_list !� Visual# �  �� -   $ CommandNuevo_Copy��$
��Left=�$��35��#���   $! Modificar Campos En General��$��
0,163,0,29q�$��2��$��2��$��2������ *NuevaEntidadCommand+.���� $��15��$��15��
����� � !� $
 Fill=�  
appbar_box# �  �� -   $ CommandNuevo_Copy1��$
��Left=�$��35��#���   $ Ver Prenomina��$��
0,107,0,85q�$��2��$��2��$��2��.���� $��15��$��15��
����� � !� $
 Fill=�  appbar_magnify_browse# �  �� -   $ textBox1��$��4��$
��Left=�$��16��$��	0,171,0,0q�$��2��$
 Wrap=�$	��Top=�$	��137��$��Right=�$��2������ *txtdivision+�� -   $
 label2��$��Dividir en:��$��3��$
��Left=�$��
33,171,0,0q�$��2��$	��Top=� J� RenderTransformOrigin$ 0.526,0.462&�$��77��$��Right=�  $��4��$��
0,143,55,0q�$��2��$	��Top=�$��26��$��2�� �� *
fechavalor+�� -   $
 label1_Copy5��$��Fecha Valor del Txt:��$��2��$��Right=�$��	0,143,0,0q�$��2��$	��Top=�$	��132��$��Right=�$��26��$��2��
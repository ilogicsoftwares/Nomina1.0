   M S B A M L   `   `   `  ����D  @Nomina1.0, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Nomina1._0
Nomina1._0  5   	   ;"clr-namespace:Nomina1._0.ViewModelNomina1._0.ViewModel  5   	   T PMahApps.Metro, Version=1.2.4.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fD2clr-namespace:MahApps.Metro;assembly=MahApps.MetroMahApps.Metro 5
   	       Nomina1._0.WinConceptos   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:Nomina1._0     5   	   1vm"clr-namespace:Nomina1._0.ViewModel     5   	   ;Controls,http://metro.mahapps.com/winfx/xaml/controls  5   	   ;
Converters*http://metro.mahapps.com/winfx/xaml/shared  5	   	   >metro2clr-namespace:MahApps.Metro;assembly=MahApps.Metro  5
   	   $   Nomina1._0.MetroToolWindowBase    	Activated$  MetroWindow_Activated��5   <      Closed$ MetroWindow_Closed��6^    �� ClearTypeHint$ Enabled=�5       � 
ResizeMode$ CanResizeWithGrip=�5      &   System.Windows.Media.TextOptions   TextFormattingMode$ Display=�5       � WindowStartupLocation$ CenterScreen=�5       � Title$ 	Conceptos��5   	   $��259.399��6   $��390.226��6,    � 	Resources 5      (  "Nomina1._0.RadioBoolToIntConverter   radioBoolToIntConverter �� MergedDictionaries	 �� Source�� 5   
    5      �� 5      $	 /Resources/Icons.xaml?�6%   %   &	          5      6,   5      
 � DataContext
 5      -  'Nomina1._0.ViewModel.ConceptosViewModel  5   
   .��5      �  � ColumnDefinitions 5   
   �� 5       $
��107* �6   �� 5!      $
��101* �6   �� 5"      $
��118* �6   �� 5#      $	��56* �6   .+�5%   
   �� -   5         ��Name$ textBox1��5%      $��1��6$   $��23��64   $��0,10,0,0q�6@    �� TextWrapping$
 Wrap=�6R   $	��Top=�6�   ��6f   �� *ConceptoActual.codigo+ �� Mode$ OneWay=� �� UpdateSourceTrigger$ PropertyChanged=�6�   �� 5&   
   -   5        $ textBox1_Copy��5&      $��1��6)   $��23��69   $��0,41,0,0q�6E   $
 Wrap=�6W   $	��Top=�6�   $��2��6�   ��6k   �� *ConceptoActual.nombre+$ TwoWay=�$ PropertyChanged=�6�   �� 5'   
   -   5        $ formula��5'      $��1��6#   $��62��63   $��0,72,0,0q�6?   $
 Wrap=�6Q   $	��Top=�6�   $��2��6�   ��6e   �� *ConceptoActual.Valor+$ TwoWay=�$ PropertyChanged=�6�   �� 5(   
   -   5         ��Name$ CommandNuevo��5(      $
��Left=�6'   $��35��6B     MetroCircleButtonStyle#���  6M    � ToolTip$ Agregar Elemento��6~   $��	0,0,0,121q�6�   $��3��6�   $��35��6�   $��Bottom=�6�   .��5)      �� $��15��6   $��15��5*      
����� � J� OpacityMask 5,      !� 5-       j� Stretch$
 Fill=�6"     
appbar_add !� Visual# �  5.      50      51      �� 52   
   -   5        $ textBox1_Copy2��52      $��1��6*   $��23��6:   $��	0,139,0,0q�6F   $
 Wrap=�6Y   $	��Top=�6�   $��2��6�   ��6m   �� *ConceptoActual.variante+$ TwoWay=�$ PropertyChanged=�6�   �� 53   
   $��1��6   $
��Left=�6%   $��26��6@   $��	1,170,0,0q�6L   $	��Top=�6_   $	��218��6w   $��2��6�    �� Orientation$ 
Horizontal=�6�   .+�54      	� -   5         	�Name$ radioButton��54      $��Asignación��6/    d� 	IsChecked 6D   ��  �� Path$ ConceptoActual.tipo� �� 	Converter# [   �� ConverterParameter$ 1��	� 55      -   5        $ radioButton1��55      $��
Deducción��60   $��10,0,0,0q�6D    6V   �� $ ConceptoActual.tipo�# [  $ 2��56      �� 57   
   -   5        $ CommandNuevo_Copy��57      $
��Left=�6,   $��35��6G   #���  6R   $ Asignar Campo��6�   $��0,0,0,60q�6�   $��3��6�   $��35��6�   $��Bottom=�6�   .��58      �� $��15��6   $��15��59      
����� � 5;      !� 5<      $
 Fill=�6"   # �  5=      5?      5@      �� 5A   
   -	   5         ��Name$ label��5A      $��Código:��6   $��0,10,0,0q�61   $	��Top=�6C   $��Right=�6[   �� 5B   
   -
   5        $ 
label_Copy��5B      $��Nombre:��6$   $��0,42,0,0q�66   $	��Top=�6H   $��Right=�6`   �� 5C   
   -   5        $ label_Copy1��5C      $��Formula:��6%   $��0,73,0,0q�68   $	��Top=�6J   $��Right=�6b   �� 5D   
   -   5        $ label_Copy2��5D      $��Campo:��6%   $��	0,139,0,0q�66   $	��Top=�6I   $��Right=�6a   �� 5E   
   -   5        $ label_Copy3��5E      $��Tipo:��6%   $��	0,169,0,0q�65   $	��Top=�6H   $��Right=�6`   �� 5F   
   -   5        $ CommandNuevo_Copy1��5F      $
��Left=�6-   $��35��6H   #���  6S   $ Eliminar Formula��6�   $��0,0,0,90q�6�   $��3��6�   $��35��6�   $��Bottom=�6�    J� RenderTransformOrigin$ 0.5,0.5&�6�   z�5G      V� 5H      .~�5I      �� �� 5J      �� 5K       �� Angle$ 45.508Q�6&   T� 5L      5M      .��5O      �� $��15��6   $��15��5P      
���  �� 5R      !� 5S      $
 Fill=�6"   # �  5T      5V      5W      �� 5X   
   -   5         ��Name$ checkBox��5X      $!��No Imprimir si es igual a 0��6%   $
��Left=�6K   $��
50,201,0,0q�6f   $	��Top=�6z   $��3��6�   $	��167��6�    6�   �� *ConceptoActual.noimprimir+$ TwoWay=�$ PropertyChanged=��� 5Y   
   -   5        $ checkBox_Copy��5Y      $��
Desactivar��6*   $
��Left=�6?   $��
32,201,0,0q�6Z   $	��Top=�6n   $��86��6�   $��2��6�    6�   �� *ConceptoActual.desactivar+$ TwoWay=�$ PropertyChanged=�6�   5[      5\      
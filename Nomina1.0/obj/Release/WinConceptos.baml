   M S B A M L   `   `   `  ���� D  @Nomina1.0, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Nomina1._0
Nomina1._0  ;"clr-namespace:Nomina1._0.ViewModelNomina1._0.ViewModel  T PMahApps.Metro, Version=1.2.4.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fD2clr-namespace:MahApps.Metro;assembly=MahApps.MetroMahApps.Metro     Nomina1._0.WinConceptos   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     *localclr-namespace:Nomina1._0     1vm"clr-namespace:Nomina1._0.ViewModel     ;Controls,http://metro.mahapps.com/winfx/xaml/controls  ;
Converters*http://metro.mahapps.com/winfx/xaml/shared  >metro2clr-namespace:MahApps.Metro;assembly=MahApps.Metro  -     �� ClearTypeHint$  Enabled=� � 
ResizeMode$ CanResizeWithGrip=�&   System.Windows.Media.TextOptions   TextFormattingMode$ Display=� � WindowStartupLocation$ CenterScreen=� � Title$ 	Conceptos��$��259.399��$��390.226�� � 	Resources (  "Nomina1._0.RadioBoolToIntConverter   radioBoolToIntConverter �� MergedDictionaries �� Source��  �� $ /Resources/Icons.xaml?�%   &	           � DataContext -  'Nomina1._0.ViewModel.ConceptosViewModel  .��� 	 � ColumnDefinitions	 �� $
��107* ��� $
��101* ��� $
��118* ��� $	��56* �.+��� -   
 ��Name$
 textBox1��$��1��$��23��$��0,10,0,0q� �� TextWrapping$
 Wrap=�$	��Top=����� *ConceptoActual.codigo+ �� Mode$ OneWay=� �� UpdateSourceTrigger$ PropertyChanged=��� -   $
 textBox1_Copy��$��1��$��23��$��0,41,0,0q�$
 Wrap=�$	��Top=�$��2������ *ConceptoActual.nombre+$ TwoWay=�$ PropertyChanged=��� -   $
 formula��$��1��$��62��$��0,72,0,0q�$
 Wrap=�$	��Top=�$��2������ *ConceptoActual.Valor+$ TwoWay=�$ PropertyChanged=��� -    ��Name$ CommandNuevo��$
��Left=�$��35��  MetroCircleButtonStyle#���   � ToolTip$ Agregar Elemento��$��	0,0,0,121q�$��3��$��35��$��Bottom=�.���� $��15��$��15��
����� � J� OpacityMask !�  j� Stretch$
 Fill=�  
appbar_add !� Visual# �  �� -   $
 textBox1_Copy2��$��1��$��23��$��	0,139,0,0q�$
 Wrap=�$	��Top=�$��2������ *ConceptoActual.variante+$ TwoWay=�$ PropertyChanged=��� $��1��$
��Left=�$��26��$��	1,170,0,0q�$	��Top=�$	��218��$��2�� �� Orientation$ 
Horizontal=�.+�	� -    	�Name$ radioButton��$��Asignación�� d� 	IsChecked ��  �� Path$ ConceptoActual.tipo� �� 	Converter# [   �� ConverterParameter$ 1��$ PropertyChanged=�	� -   $ radioButton1��$��
Deducción��$��10,0,0,0q� �� $ ConceptoActual.tipo�# [  $ 2��$ PropertyChanged=��� -	   $ CommandNuevo_Copy��$
��Left=�$��35��#���  $ Asignar Campo��$��0,0,0,60q�$��3��$��35��$��Bottom=�.���� $��15��$��15��
����� � !� $
 Fill=�# �  �� -
    ��Name$ label��$��Código:��$��0,10,0,0q�$	��Top=�$��Right=��� -   $ 
label_Copy��$��Nombre:��$��0,42,0,0q�$	��Top=�$��Right=��� -   $ label_Copy1��$��Formula:��$��0,73,0,0q�$	��Top=�$��Right=��� -   $ label_Copy2��$��Campo:��$��	0,139,0,0q�$	��Top=�$��Right=��� -   $ label_Copy3��$��Tipo:��$��	0,169,0,0q�$	��Top=�$��Right=��� -   $ CommandNuevo_Copy1��$
��Left=�$��35��#���  $ Eliminar Formula��$��0,0,0,90q�$��3��$��35��$��Bottom=� J� RenderTransformOrigin$ 0.5,0.5&�z�V� .~��� �� ��  �� Angle$ 45.508Q�T� .���� $��15��$��15��
���  �� !� $
 Fill=�# �  �� -    ��Name$ checkBox��$!��No Imprimir si es igual a 0��$
��Left=�$��	1,201,0,0q�$	��Top=�$��3��$	��239��$��1�� �� *ConceptoActual.noimprimir+$ TwoWay=�$ PropertyChanged=�
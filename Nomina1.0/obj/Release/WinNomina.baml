   M S B A M L   `   `   `  ���� D  @Nomina1.0, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Nomina1._0
Nomina1._0  ;"clr-namespace:Nomina1._0.ViewModelNomina1._0.ViewModel  T PMahApps.Metro, Version=1.2.4.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fD2clr-namespace:MahApps.Metro;assembly=MahApps.MetroMahApps.Metro     Nomina1._0.WinNomina   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     *localclr-namespace:Nomina1._0     1vm"clr-namespace:Nomina1._0.ViewModel     ;Controls,http://metro.mahapps.com/winfx/xaml/controls  ;
Converters*http://metro.mahapps.com/winfx/xaml/shared  >metro2clr-namespace:MahApps.Metro;assembly=MahApps.Metro  -     �� ClearTypeHint$  Enabled=� � 
ResizeMode$ CanResizeWithGrip=�&   System.Windows.Media.TextOptions   TextFormattingMode$ Display=� � WindowStartupLocation$ CenterScreen=� � Title$ Nomina��$	��325��$��402.632�� � DataContext *  $Nomina1._0.ViewModel.NominaViewModel   � 	Resources (  "Nomina1._0.RadioBoolToIntConverter   radioBoolToIntConverter��%   &	          .���  � ColumnDefinitions �� $	��92* ��� $
��177* ��� $
��106* ��� $	��20* �.+��� -    ��Name$ label��$��Codigo:��$��0,27,0,0q�$	��Top=�$��Right=�$��25���� -   	 ��Name$	 textBox��$��1��$��	0,0,0,243q�
 �� TextWrapping$

 Wrap=�$��26��$��Bottom=����� *NominaActual.scodigo+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=��� -   $ 
label_Copy��$��Nombre:��$��0,58,0,0q�$	��Top=�$��Right=�$��25���� -   $	 textBox_Copy��$��1��$��	0,0,0,212q�$

 Wrap=�$��2��$��26��$��Bottom=����� *NominaActual.descripcion+$ TwoWay=�$ PropertyChanged=��� -   $ label_Copy1��$��
Intervalo:��$��0,88,0,0q�$	��Top=�$��Right=�$��25���� $��1��$��60��$��5,91,0,0q�$	��Top=� � UseLayoutRounding .  .+�	� -    	�Name$ radioButton��$
��Dias��$
��Left=�$	��Top=� d� 	IsChecked ��  �� Path$ NominaActual.intervalo� �� 	Converter# [   �� ConverterParameter$ 1��$ PropertyChanged=�	� -   $ radioButton_Copy��$��	Quincenal��$
��Left=�$	��Top=� �� $ NominaActual.intervalo�# [  $ 2��$ PropertyChanged=�	� -	   $ radioButton_Copy1��$��Mensual��$
��Left=�$	��Top=� �� $ NominaActual.intervalo�# [  $ 3��$ PropertyChanged=��� $��1q�
����� �$��
0,88,0,144q�$��1�� �� CornerRadius$ 5���� -
   $ label_Copy2��$��
Conceptos:��$��	0,154,0,0q�$	��Top=�$��Right=�$��25���� -    ��Name$ listBox��$��0,0,0,34q�
����� �$��1q� �� SelectedValuePath$ codigo�� �� DisplayMemberPath$ nombre��   TextHintingMode$ Animated=�$��Disabled=�$	��105��$��Bottom=�$��1������ * ConceptosViewList.FullConcepts+$ TwoWay=�$ PropertyChanged=� �� SelectedIndex �� *ConceptosViewList.ItemActual+�� -    ��Name$ CommandNuevo_Copy2��$
��Left=�$��35��  MetroCircleButtonStyle#���   � ToolTip$ Mover Arriba��$��	0,0,0,103q�$��2��$��35��$��Bottom=����� *!ConceptosViewList.MoveUpCommand+���� *SelectedValue+ �� ElementName$ listBox��.���� $��15��$��15��
����� � J� OpacityMask !�  j� Stretch$
 Fill=�  appbar_arrow_up !� Visual# �  �� -   $ CommandNuevo_Copy3��$
��Left=�$��35��#���  $ Mover Abajo��$��0,0,0,75q�$��2��$��35��$��Bottom=����� *#!ConceptosViewList.MoveDownCommand+���� *SelectedValue+$ listBox��.���� $��15��$��15��
����� � !� $
 Fill=�  appbar_arrow_down# �  �� -   $ CommandNuevo��$
��Left=�$��35��#���  $ Agregar Concepto��$��	114,0,0,0q�$��1��$��35��$��Bottom=����� *%#ConceptosViewList.AddConceptCommand+.���� $��15��$��15��
����� � !� $
 Fill=�  
appbar_add# �  �� -   $ CommandNuevo_Copy��$
��Left=�$��35��#���  $ Eliminar Concepto��$��	142,0,0,0q�$��1��$��35��$��Bottom=����� *(&ConceptosViewList.RemoveConceptCommand+���� *SelectedValue+$ listBox��.���� $��15��$��15��
���  �� J� RenderTransformOrigin$ 0.5,0.5&�z�V� .~��� �� ��   �� Angle$  -44.838Q�T�  !� $
 Fill=�# �  
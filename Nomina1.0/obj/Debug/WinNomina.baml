   M S B A M L   `   `   `  ����D  @Nomina1.0, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Nomina1._0
Nomina1._0  5   	   ;"clr-namespace:Nomina1._0.ViewModelNomina1._0.ViewModel  5   	   T PMahApps.Metro, Version=1.2.4.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fD2clr-namespace:MahApps.Metro;assembly=MahApps.MetroMahApps.Metro 5
   	       Nomina1._0.WinNomina   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:Nomina1._0     5   	   1vm"clr-namespace:Nomina1._0.ViewModel     5   	   ;Controls,http://metro.mahapps.com/winfx/xaml/controls  5   	   ;
Converters*http://metro.mahapps.com/winfx/xaml/shared  5	   	   >metro2clr-namespace:MahApps.Metro;assembly=MahApps.Metro  5
   	   -   5          �� ClearTypeHint$  Enabled=�5       � 
ResizeMode$ CanResizeWithGrip=�5      &   System.Windows.Media.TextOptions   TextFormattingMode$ Display=�5       � WindowStartupLocation$ CenterScreen=�5       � Title$ Nomina��5   	   $	��325��6   $��402.632��6%    � DataContext 5      *  $Nomina1._0.ViewModel.NominaViewModel  5   
    � 	Resources 5      (  "Nomina1._0.RadioBoolToIntConverter   radioBoolToIntConverter��%   &	          5   
   6(   5      .��5      �  � ColumnDefinitions 5   
   �� 5      $	��92* �6   �� 5      $
��177* �6   �� 5      $
��106* �6   �� 5      $	��20* �6   .+�5   
   �� -   5         ��Name$ label��5      $��Codigo:��6   $��0,27,0,0q�61   $	��Top=�6C   $��Right=�6[   $��25��6~   �� 5   
   -   5        	 ��Name$	 textBox��5      $��1��6#   $��	0,0,0,243q�63   
 �� TextWrapping$

 Wrap=�6F   $��26��6�   $��Bottom=�6�   ��6Z   �� *NominaActual.scodigo+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�6�   �� 5    
   -   5        $ 
label_Copy��5       $��Nombre:��6$   $��0,58,0,0q�66   $	��Top=�6H   $��Right=�6`   $��25��6�   �� 5!   
   -   5        $	 textBox_Copy��5!      $��1��6(   $��	0,0,0,212q�68   $

 Wrap=�6K   $��2��6�   $��26��6�   $��Bottom=�6�   ��6_   �� *NominaActual.descripcion+$ TwoWay=�$ PropertyChanged=�6�   �� 5"   
   -   5        $ label_Copy1��5"      $��
Intervalo:��6%   $��0,88,0,0q�6:   $	��Top=�6L   $��Right=�6d   $��25��6�   �� 5#   
   $��1��6   $��60��6%   $��	5,91,87,0q�61   $	��Top=�6D    � UseLayoutRounding .  .+�5%      	� -   5         	�Name$ radioButton��5%      $
��Dias��6/   $
��Left=�6>   $	��Top=�6Y    d� 	IsChecked 6q   ��  �� Path$ NominaActual.intervalo� �� 	Converter# [   �� ConverterParameter$ 1��$ PropertyChanged=�	� 5&      -   5        $ radioButton_Copy��5&      $��	Quincenal��64   $
��Left=�6H   $	��Top=�6c    6{   �� $ NominaActual.intervalo�# [  $ 2��$ PropertyChanged=�	� 5'      -	   5        $ radioButton_Copy1��5'      $��Mensual��65   $
��Left=�6G   $	��Top=�6b    6z   �� $ NominaActual.intervalo�# [  $ 3��$ PropertyChanged=�5)      �� 5*   
   $��1q�6   
����� �$��0,88,87,144q�69   $��1��6N    �� CornerRadius$ 5��6^   �� 5+   
   -
   5        $ label_Copy2��5+      $��
Conceptos:��6%   $��	0,154,0,0q�6:   $	��Top=�6M   $��Right=�6e   $��25��6�   �� 5,   
   -   5         ��Name$ listBox��5,      $��0,0,0,34q�6#   
����� �$��1q�6H    �� SelectedValuePath$ codigo��6�    �� DisplayMemberPath$ nombre��6�      TextHintingMode$ Animated=�6�   $��Disabled=�6"  $	��105��6X  $��Bottom=�6e  $��1��6�  ��6\   �� * ConceptosViewList.FullConcepts+$ TwoWay=�$ PropertyChanged=� �� SelectedIndex 6�  �� *ConceptosViewList.ItemActual+6�  �� 5-   
   -   5         ��Name$ CommandNuevo_Copy2��5-      $
��Left=�6-   $��35��6H     MetroCircleButtonStyle#���  6S    � ToolTip$ Mover Arriba��6�   $��	0,0,0,103q�6�   $��2��6�   $��35��6�   $��Bottom=�6�   ��6�   �� *!ConceptosViewList.MoveUpCommand+��6  �� *SelectedValue+ �� ElementName$ listBox��.��5.      �� $��15��6   $��15��5/      
����� � J� OpacityMask 51      !� 52       j� Stretch$
 Fill=�6"     appbar_arrow_up !� Visual# �  53      55      56      �� 57   
   -   5        $ CommandNuevo_Copy3��57      $
��Left=�6-   $��35��6H   #���  6S   $ Mover Abajo��6�   $��0,0,0,75q�6�   $��2��6�   $��35��6�   $��Bottom=�6�   ��6�   �� *#!ConceptosViewList.MoveDownCommand+��6  �� *SelectedValue+$ listBox��.��58      �� $��15��6   $��15��59      
����� � 5;      !� 5<      $
 Fill=�6"     appbar_arrow_down# �  5=      5?      5@      �� 5A   
   -   5        $ CommandNuevo��5A      $
��Left=�6'   $��35��6B   #���  6M   $ Agregar Concepto��6~   $��	114,0,0,0q�6�   $��1��6�   $��35��6�   $��Bottom=�6�   ��6�   �� *%#ConceptosViewList.AddConceptCommand+.��5B      �� $��15��6   $��15��5C      
����� � 5E      !� 5F      $
 Fill=�6"     
appbar_add# �  5G      5I      5J      �� 5K   
   -   5        $ CommandNuevo_Copy��5K      $
��Left=�6�   $��35��6�   #���  6�   $ Eliminar Concepto��6   $��	142,0,0,0q�6  $��1��6/  $��35��6?  $��Bottom=�6K  ��6-   �� *(&ConceptosViewList.RemoveConceptCommand+��6h   �� *SelectedValue+$ listBox��.��5L      �� $��15��6   $��15��5M      
���  �� J� RenderTransformOrigin$ 0.5,0.5&�5N      z�5O      V� 5P      .~�5Q      �� �� 5R      �� 5S        �� Angle$  -44.838Q�6*   T� 5T      5U       5W      !� 5X      $
 Fill=�6"   # �  5Y      5[      5\      �� 5]   
   -   5        $ label_Copy3��5]      $��Tipo:��6%   $��
93,88,44,0q�65   $	��Top=�6I   $��Right=�6a   $��25��6�   $��1��6�   �� 5^   
   $��1��6   $��39��6%   $��138,91,60,0q�61   $	��Top=�6F    .  $��2��6x   .+�5`      	� -   5        $ radioButton1��5`      $��Normal��60   $
��Left=�6A   $	��Top=�6\    6t   �� *NominaActual.tipo+$ 1��# [  $ PropertyChanged=�	� 5a      -   5        $ radioButton_Copy2��5a      $��Bonos��65   $
��Left=�6E   $	��Top=�6`    6x   �� *NominaActual.tipo+$ 2��# [  $ PropertyChanged=�5d      �� 5e   
   $��1q�6   
����� �$��133,88,60,165q�69   $��1��6P   $ 5��6`   $��2��6q   5g      5h      
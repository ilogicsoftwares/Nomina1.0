   M S B A M L   `   `   `  ����D  @Nomina1.0, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Nomina1._0
Nomina1._0  5   	   ;"clr-namespace:Nomina1._0.ViewModelNomina1._0.ViewModel  5           Nomina1._0.WinControlAsist   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:Nomina1._0     5   	   1vm"clr-namespace:Nomina1._0.ViewModel     5      $   Nomina1._0.MetroToolWindowBase    	Activated$#  MetroToolWindowBase_Activated��5	   A    � Title$ WinControlAsist��6	   $��376.86��6!   $��865.289��61    � DataContext 5
      0  *Nomina1._0.ViewModel.ControlAsistViewModel  5   
   -   5        Control��5   #   .��5      �  � RowDefinitions 5   
   �� 5      $	��74* �6   �� 5      $
��273* �6    � ColumnDefinitions 5   
   �� 5      $
��235* �6   �� 5      $
��622* �6   .+�5   
   �� 
����� �$��1q�6$   $��1��68   $��1��6H   $��	0,0,10,10q�6U   �� 5   
   -   5         ��Name$ textBox��5      $��57,28,216,16q�6#    �� TextWrapping$
 Wrap=�69   $��1��6�   $��1��6�   ��6M   �� *Identificator+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�6�   �� 5   
   -   5        	 ��Name$	 saludo��5      $��
0,0,10,184q�6k   $��46(�6   $��Center=�6�   $��1��6�   $��1��6�   $
��Bold"�6�   ��6    �� *Saludo+$ TwoWay=�$ PropertyChanged=���6�   �� *Color+6�   �� 5   
   -   5        $	 nombre��5      $��0,72,10,137q�6B   $��32(�6W   $��Center=�6e   $��1��6�   $��1��6�   ��6    �� *Nomtrabajador+6�   �� 5   
   -   5        $	 errorMsg��5      $��0,196,10,10q�6?   $��32(�6T   $��Center=�6b   $��1��6�   $��1��6�   
���  ����6"   �� *
ErrorMsg+6�   �� 5   
   -   5        
 ��Name$
 button��5      $��Check��6!   $��427,28,82,16q�61   $��1��6�    �� 	IsDefault . ��6G   �� *CheckCommand+��6h   ��  �� ElementName$ textBox��6�   �� 5   
   -   5        $	 Tempo��5      $��0,129,10,77q�6i   $��46(�6~   $��Center=�6�   $��1��6�   $��1��6�   ��6   �� *Tempo+$ TwoWay=�$ PropertyChanged=�6�   �� 5   
   
����� �$��10q�6    
���   �$��2��6;   �� 5   
   -   5        $	 label1��5      $
��Foto��6    $��10q�6/   $��32(�6;   
�������$��2��6\   $��Center=�6m   $��Center=�6�   $��Center=�6�   �� 5    
   -	   5         ��Name$ image��5       $��41,20,38,77q�6   $��Uniform=�64   $��1��6^   ��6F   �� *Foto+6^   5!      5#      
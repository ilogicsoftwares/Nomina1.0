   M S B A M L   `   `   `  ����T  PMahApps.Metro, Version=1.2.4.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls  5   	   D @Nomina1.0, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Nomina1._0
Nomina1._0 5   	   ;"clr-namespace:Nomina1._0.ViewModelNomina1._0.ViewModel 5   	       Nomina1._0.PrincipalWindow   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   PControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro     5   	   *localclr-namespace:Nomina1._0     5   	   1vm"clr-namespace:Nomina1._0.ViewModel     5   	   -   5        (   "MahApps.Metro.Controls.MetroWindow   Name$  principalWindow��5       � Title$ Ilogic Softwares Nomina��5   	   $��355.814��6)   $��441.86��6:    � WindowStartupLocation$ CenterOwner=�6I    � WindowState$ 	Maximized=�6m    � DataContext 5      - 'Nomina1._0.ViewModel.PrincipalViewModel  5   
    � 	Resources 5       �� MergedDictionaries �� Source�� 5   
    5      �� 5      $ /Resources/Icons.xaml?�6%   %    5      .��5      � -   5        $��grid1��5      $��29��6   $	��Top=�6$   .+�5   
   � $��35��6   $��
0,31,1,-37q�6   $	��Top=�6/   .+�5      �� -   5         ��Name$ CommandGuardar��5      $
��Left=�6.   $��35��6I   $��28,0,0,0q�6T      MetroCircleButtonStyle#���   6�   	 � ToolTip$	 Guardar(Ctrl+G)��6�   ��6f   �� *GuardarEntidadCommand+.��5      �� $��15��6   $��15��5      
����� �
 J� OpacityMask
 5      !� 5       j� Stretch$
 Fill=�6&     appbar_save !� Visual# �  5      5!      5"      �� 5#      -   5        $ CommandNuevo��5#      $
��Left=�6U   $��35��6p   #���   6{   $	 Nuevo(Ctrl+N)��6�   ��6,   �� *NuevaEntidadCommand+.��5$      �� $��15��6   $��15��5%      
����� �
 5'      !� 5(      $
 Fill=�6&     
appbar_add# �  5)      5+      5,      �� 5-      -   5        $ CommandGuardar_Copy��5-      $
��Left=�63   $��35��6N   $��56,0,0,0q�6Y   #���   6k   $	 Buscar(Ctrl+B)��6�   .��5.      �� $��15��6   $��15��5/      
����� �
 51      !� 52      $
 Fill=�6&     appbar_magnify# �  53      55      56      �� 57      -   5        $ CommandNuevo_Copy��57      $
��Left=�6]   $��35��6x   #���   6�   $	 Eliminar(Ctrl+N)��6�   $��84,0,0,0q�6�    J� RenderTransformOrigin$ 0.5,0.5&�6�   ��61   �� *EliminarEntidadCommand+z�58      V� 59      .~�5:      �� �� 5;      �� 5<       �� Angle$ 45.566Q�6*   T� 5=      5>      .��5@      �� $��15��6   $��15��5A      
���  ��
 5C      !� 5D      $
 Fill=�6&   # �  5E      5G      5H      5J      5N      5S      
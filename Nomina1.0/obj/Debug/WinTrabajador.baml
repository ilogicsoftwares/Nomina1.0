   M S B A M L   `   `   `  ����D  @Nomina1.0, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Nomina1._0
Nomina1._0  5   	   ;"clr-namespace:Nomina1._0.ViewModelNomina1._0.ViewModel  5   	   T PMahApps.Metro, Version=1.2.4.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fD2clr-namespace:MahApps.Metro;assembly=MahApps.MetroMahApps.Metro 5   	       Nomina1._0.WinTrabajador   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:Nomina1._0     5   	   1vm"clr-namespace:Nomina1._0.ViewModel     5   	   ;Controls,http://metro.mahapps.com/winfx/xaml/controls  5	   	   ;
Converters*http://metro.mahapps.com/winfx/xaml/shared  5
   	   >metro2clr-namespace:MahApps.Metro;assembly=MahApps.Metro  5   	   -   5          � Title$  
Trabajador��5   
   $	��524��6   $��738.125��6*    �� ClearTypeHint$ Enabled=�5       � 
ResizeMode$ CanResizeWithGrip=�5      &   System.Windows.Media.TextOptions   TextFormattingMode$ Display=�5       � WindowStartupLocation$ CenterScreen=�5       � 	Resources 5      (  "Nomina1._0.RadioBoolToIntConverter   radioBoolToIntConverter �� MergedDictionaries �� Source�� 5   
    5      �� 5      $ /Resources/Icons.xaml?�6%   %   &	          5      6,   5       � DataContext 5      .   (Nomina1._0.ViewModel.TrabajadorViewModel  5   
   .��5       � -   5        $��Grid1��5       $
��0,-2q�6   $	��498��6&   $	��Top=�63   	 � ColumnDefinitions	 5!   
   �� 5"      $
��126* �6   �� 5#      $
��240* �6   �� 5$      $
��132* �6   �� 5%      $
��203* �6   �� 5&      $	��29* �6   .+�5(   
   �� -   5        
 ��Name$
 label��5(      $��Cedula:��6   $��0,33,0,0q�61   $	��Top=�6C   $��26��6[   $��Right=�6g   $��Right=�6�   $	��113��6�   �� 5)   
   -   5         ��Name$ cedula��5)      $��1��6"   $��26��62   $��0,33,0,0q�6>    �� TextWrapping$
 Wrap=�6P   $	��Top=�6d   $��1��6|   ��6�   �� *TrabajadorActual.cedula+ �� Mode$ OneWay=� �� UpdateSourceTrigger$ PropertyChanged=�6   �� 5*   
   -   5        $
 
label_Copy��5*      $��Nombres:��6$   $��0,59,0,0q�67   $	��Top=�6I   $��26��6a   $��Right=�6m   $��Right=�6�   $��74��6�   �� 5+   
   -   5        $ nombres��5+      $��26��6#   $��0,61,0,0q�6/   $
 Wrap=�6A   $	��Top=�6U   $��1��6m   $��2��6}   ��6�   �� *TrabajadorActual.nombres+$ TwoWay=�$ PropertyChanged=��� 5,   
   -   5        $
 label_Copy2��5,      $��
Apellidos:��6%   $��	20,89,0,0q�6:   $	��Top=�6M   $��26��6e   $��Right=�6q   �� 5-   
   -   5        $
 label_Copy3��5-      $��Datos Personales��6%   $��0,7,0,0q�6@   $	��Top=�6Q   $��26��6i   $
��Left=�6u   $��2��6�   $
��Bold"�6�   $
��Left=�6�   $	��334��6�   �� 5.   
   -	   5        $ 	apellidos��5.      $��26��6%   $��0,89,0,0q�61   $
 Wrap=�6C   $	��Top=�6W   $��1��6o   $��3��6   ��6�   �� *TrabajadorActual.apellidos+$ TwoWay=�$ PropertyChanged=��� 5/   
   -
   5        $
 label_Copy4��5/      $��Sexo:��6%   $��	0,121,0,0q�65   $	��Top=�6H   $��26��6`   $��Right=�6l   $��Right=�6�   $��74��6�    J� RenderTransformOrigin$ 0.541,0.731&�6�   �� 50   
   -   5        $
 label_Copy5��50      $��Estado Civil:��6%   $��	0,147,0,0q�6=   $	��Top=�6P   $��26��6h   $��Right=�6t   $��Right=�6�   $��74��6�   $ 0.541,0.731&�6�   �� 51   
   -   5        $��	StackSexo��51   �   $��1��6   $��20��6%   $��	0,126,0,0q�61   $	��Top=�6D    �� Orientation$ 
Horizontal=�6\    �� CanHorizontallyScroll . ���	#FFE4E2E2 K� ZIndex$ -4��6�   .+�52      	� -   5         	�Name$ 	masculino��52      $��	Masculino��6-   $
��Left=�6A   $	��Top=�6\   $��4��6   d� 	IsChecked 6u   ��  �� Path$ TrabajadorActual.sexo� �� 	Converter# [   �� ConverterParameter$ 1��$ PropertyChanged=�6  	� 53      -   5        $ femenino��53      $��Femenino��6,   $	��Top=�6?   $��50,0,0,0q�6W   $��Right=�6i   $ 1.423,1.133&�6�   $��Right=�6�   $��5��6k   6�   �� $ TrabajadorActual.sexo�# [  $ 2��$ PropertyChanged=�6k  54      �� 55   
   -   5        $��StackEdoCivil��55      $��1��6+   $��20��6;   $��	0,154,0,0q�6G   $	��Top=�6Z   $ 
Horizontal=�6r    . ���	#FFE4E2E2.+�56      	� -   5        $ radioButton_Copy1��56      $��Casado��65   $
��Left=�6F   $	��Top=�6a   $��6��6�    6y   �� $ TrabajadorActual.edocivil�# [  $ 1��6�   	� 57      -   5        $ radioButton_Copy2��57      $��Soltero��65   $	��Top=�6G   $��66,0,0,0q�6_   $��Right=�6q   $ 1.423,1.133&�6�   $��Right=�6�   $��6��6S   6�   �� $ TrabajadorActual.edocivil�# [  $ 2��6S  58      �� 59   
   -   5        $
 label_Copy1��59      $��Codigo:��6%   $��0,4,0,0q�67   $	��Top=�6H   $��29��6`   $��Right=�6l   $��2��6�   �� 5:   
   -   5        $ Id��5:      $��3��6   $��26��6.   $��0,4,0,0q�6:   $
 Wrap=�6K   $	��Top=�6_   $��1��6w    �� 
IsReadOnly . {�.  ��6�   �� *TrabajadorActual.idtrabajador+$ OneWay=�6�   �� 5;   
   -   5        $
 label_Copy6��5;      $��Fecha de Nacimiento:��6%   $��0,33,0,0q�6D   $	��Top=�6V   $��26��6n   $��Right=�6z   $��2��6�   �� 5<   
   -   5        $
 label_Copy7��5<      $��Lugar de Nacimiento:��6%   $��0,62,0,0q�6D   $	��Top=�6V   $��26��6n   $��Right=�6z   $��2��6�   (  "System.Windows.Controls.DatePicker  5=   
   $��3��6   $��0,33,0,0q�6%   $	��Top=�67   $��26��6O   $��9��5?   ;      SelectedDate 5=   \   �� $ fechanac�$ TwoWay=�$ PropertyChanged=�5?   ;   �� 5@   
   -   5        $ txtLugarnac��5@      $��26��6'   $��0,61,0,0q�63   $
 Wrap=�6E   $	��Top=�6Y   $��3��6q   $��10��6�   ��6�   �� *TrabajadorActual.lugarnac+$ TwoWay=�$ PropertyChanged=��� 5A   
   -   5        $
 label_Copy8��5A      $��Nivel de Instrucción:��6%   $��	0,119,0,0q�6E   $	��Top=�6X   $��25��6p   $��Right=�6|   $��2��6�   �� 5B   
   -   5        $
 label_Copy9��5B      $��Estatus:��6%   $��
32,291,0,0q�68   $	��Top=�6L   $��26��6d   $��Right=�6p   $��2��6�   �� 5C   
   -   5         ��Name$ comboBoxgrado��5C      $��3��6*   $��	0,119,0,0q�6:   $	��Top=�6M    �� DisplayMemberPath$ grado��6e   $��26��6  $��12��6  ��6   �� *Lgrado+ �� SelectedValue 6�   �� *TrabajadorActual.gradointruc+$ TwoWay=�$ PropertyChanged=�6  �� 5D   
   -   5        $ comboBoxestatus��5D      $��3��6,   $��	0,291,0,0q�6<   $	��Top=�6O   $ descripcion��6g   $��26��6�   $��23��6�   ��6�   �� *
Lestatus+ 6�   �� *TrabajadorActual.estatus+$ TwoWay=�6�   �� 5E   
   -   5        $
 label_Copy10��5E      $��Dirección:��6&   $��	0,179,0,0q�6;   $	��Top=�6N   $��26��6f   $��Right=�6r   �� 5F   
   -   5        $ txtDireccion��5F      $��57��6(   $��1,181,124,0q�64   $
 Wrap=�6I   $	��Top=�6]   $��1��6u   $��8��6�   $��2��6�    �� 	MaxLength$	 250��6  ��6�   �� *TrabajadorActual.direccion+$ TwoWay=�$ PropertyChanged=�6  �� 5G   
   -   5        $
 label_Copy11��5G      $��Nacionalidad:��6&   $��0,90,0,0q�6>   $	��Top=�6P   $��26��6h   $��Right=�6t   $��2��6�   �� 5H   
   -   5        $ comboBoxnacional��5H      $��3��6-   $��0,89,0,0q�6=   $	��Top=�6O   $ descripcion��6g   $��26��6  $��11��6  ��6�   �� *Lnac+ 6�   �� *TrabajadorActual.nacionalidad+$ TwoWay=�$ PropertyChanged=�6  � 5I   
   $��1��6   $
��Left=�6   $	��100��6:   $��
91,121,0,0q�6G   $	��Top=�6[   $	��100��6s   �� 5J   
   -   5        $
 label_Copy12��5J      $��Hijos:��6&   $��	0,150,0,0q�67   $	��Top=�6J   $��26��6b   $��Right=�6n   $��Right=�6�   $��88��6�   $��2��6�   �� 5K   
   -    5        $ txthijos��5K      $��3��6$   $��26��64   $��	0,149,0,0q�6@   $
 Wrap=�6S   $	��Top=�6g   $��13��6   ��6�   �� *TrabajadorActual.Nhijos+$ TwoWay=�$ PropertyChanged=��� 5L   
   -!   5        $
 label_Copy13��5L      $��Datos Laborales��6&   $��	0,266,0,0q�6@   $	��Top=�6S   $��26��6k   $
��Left=�6w   $��3��6�   $
��Bold"�6�   $
��Left=�6�   $	��374��6�   �� 5M   
   -"   5        $
 label_Copy14��5M      $��Nomina:��6&   $��	0,291,0,0q�68   $	��Top=�6K   $��26��6c   $��Right=�6o   �� 5N   
   -#   5        $ comboNomina��5N      $��1��6(   $��	0,291,0,0q�68   $	��Top=�6K   $ descripcion��6c   $��26��6  $��18��6  ��6�   �� *	Lnomina+ 6�   �� *TrabajadorActual.nominatype+$ TwoWay=�$ PropertyChanged=�6&  �� 5O   
   -$   5        $
 label_Copy15��5O      $��Tel. Local:��6&   $��	0,213,0,0q�6<   $	��Top=�6O   $��25��6g   $��Right=�6s   $��Right=�6�   $��88��6�   $��2��6�   �� 5P   
   -%   5        $ txtLocal��5P      $��3��6$   $��26��64   $��	0,212,0,0q�6@   $
 Wrap=�6S   $	��Top=�6g   $��15��6   $ 12��6�   ��6�   �� * TrabajadorActual.telefonolocal+$ TwoWay=�6�   �� 5Q   
   -&   5        $
 label_Copy16��5Q      $��Tel. Celular:��6&   $��	0,182,0,0q�6>   $	��Top=�6Q   $��26��6i   $��Right=�6u   $��Right=�6�   $��88��6�   $��2��6�   �� 5R   
   -'   5        $ 
txtCelular��5R      $��3��6&   $��26��66   $��	0,181,0,0q�6B   $
 Wrap=�6U   $	��Top=�6i   $��14��6�   $ 12��6�   ��6�   �� *TrabajadorActual.telefonocel+$ TwoWay=�$ PropertyChanged=�6�   �� 5S   
   -(   5        $
 label_Copy17��5S      $��Tel. Contacto:��6&   $��	0,245,0,0q�6?   $	��Top=�6R   $��26��6j   $��Right=�6v   $��Right=�6�   $��88��6�   $��2��6�   �� 5T   
   -)   5        $ txtContacto��5T      $��3��6'   $��26��67   $��	0,244,0,0q�6C   $
 Wrap=�6V   $	��Top=�6j   $��16��6�   $ 12��6�   ��6�   �� *#!TrabajadorActual.telefonocontacto+$ TwoWay=�$ PropertyChanged=�6�   �� 5U   
   -*   5        $
 label_Copy18��5U      $��	Contacto:��6&   $��	0,245,0,0q�6:   $	��Top=�6M   $��26��6e   $��Right=�6q   $��Right=�6�   $��88��6�   �� 5V   
   -+   5        $ txtContacton��5V      $��1��6(   $��26��68   $��1,245,124,0q�6D   $
 Wrap=�6Y   $	��Top=�6m   $��17��6�   $��2��6�   ��6�   �� *!TrabajadorActual.nombrecontacto+$ TwoWay=�$ PropertyChanged=�6�   �� 5W   
   -,   5        $
 label_Copy19��5W      $��Cargo :��6&   $��	1,384,1,0q�68   $	��Top=�6K   $��26��6c   $��Right=�6o   �� 5X   
   --   5        $ 
comboCargo��5X      $��1��6'   $��	0,385,0,0q�67   $	��Top=�6J   $ Nombre��6b   $��26��6   $��21��6  ��6}   �� *Lcargo+ 6�   �� *TrabajadorActual.cargo+$ TwoWay=�$ PropertyChanged=�6  �� 5Y   
   -.   5        $
 label_Copy20��5Y      $��Sueldo Base Mensual:��6&   $��	0,416,0,0q�6E   $	��Top=�6X   $��25��6p   $��Right=�6|   $ 
0.517,0.56&�6�   �� 5Z   
   -/   5        $ cedula_Copy5��5Z      $��1��6(   $��26��68   $��	0,416,0,0q�6D   $
 Wrap=�6W   $	��Top=�6k   $��22��6�   ��6�   �� *TrabajadorActual.Sueldo+$ TwoWay=� �� StringFormat$ N��$ PropertyChanged=��� 5[   
   -0   5        $
 label_Copy21��5[      $��Departamento:��6&   $��	0,353,0,0q�6>   $	��Top=�6Q   $��26��6i   $��Right=�6u   �� 5\   
   -1   5        $ comboBoxnacional_Copy2��5\      $��1��63   $��	0,353,0,0q�6C   $	��Top=�6V   $ Descripcion��6n   $��26��6  $��18��6&  ��6�   �� *	Ldepart+ 6�   �� * TrabajadorActual.departamentos+$ TwoWay=�$ PropertyChanged=�6&  �� 5]   
   -2   5        $
 label_Copy22��5]      $��Fecha de Ingreso:��6&   $��	0,321,0,0q�6B   $	��Top=�6U   $��26��6m   $��Right=�6y   $��2��6�     5^   
   $��3��6   $��	0,321,0,0q�6%   $	��Top=�68   $��26��6P   $��24��6�    6]   �� *TrabajadorActual.Fechaing+$ TwoWay=�$ PropertyChanged=�6�   �� 5_   
   -3   5        $
 label_Copy23��5_      $��Numero de Cuenta:��6&   $��	1,385,0,0q�6B   $	��Top=�6U   $��25��6m   $��Right=�6y   $ 
0.517,0.56&�6�   $��2��6�   �� 5`   
   -4   5        $ cedula_Copy6��5`      $��3��6(   $��26��68   $��	0,385,0,0q�6D   $
 Wrap=�6W   $	��Top=�6k   $��26��6�   ��6�   �� *TrabajadorActual.numerocuenta+$ TwoWay=�$ PropertyChanged=��� 5a   
   -5   5        $
 label_Copy24��5a      $��Banco:��6&   $��
32,353,0,0q�67   $	��Top=�6K   $��26��6c   $��Right=�6o   $��2��6�   �� 5b   
   -6   5        $ comboBoxestatus_Copy��5b      $��3��61   $��	0,353,0,0q�6A   $	��Top=�6T   $ descripcion��6l   $��26��6�   $��25��6�   ��6�   �� *Lbanco+ 6�   �� *TrabajadorActual.bancos+$ TwoWay=�6�   �� 5c   
   -7   5        $
 label_Copy25��5c      $��Tipo de Cuenta:��6&   $��	1,416,0,0q�6@   $	��Top=�6S   $��25��6k   $��Right=�6w   $ 
0.517,0.56&�6�   $��2��6�   �� 5d   
   -8   5        $ comboBoxestatus_Copy1��5d      $��3��62   $��	0,416,0,0q�6B   $	��Top=�6U   $ descripcion��6m   $��26��6�   $��27��6�   ��6�   �� *Ltipoc+ 6�   �� *TrabajadorActual.tipocuenta+$ TwoWay=�6�   �� 5e   
   -9   5        $
 label_Copy29��5e      $��Nomina de Bonos:��6&   $��	0,319,0,0q�6A   $	��Top=�6T   $��26��6l   $��Right=�6x   �� 5f   
   -:   5        $ comboNomina_Copy��5f      $��1��6-   $��	0,321,0,0q�6=   $	��Top=�6P   $ descripcion��6h   $��26��6  $��19��6  ��6�   �� *	Bnomina+ 6�   �� *TrabajadorActual.nominatype1+$ TwoWay=�$ PropertyChanged=�6,  �� 5g   
   -;   5         ��Name$ CommandNuevo_Copy4��5g      $��Right=�6-   $��37��6I     MetroCircleButtonStyle#���  6T     � ToolTip$  Conceptos/Campos��6�   $��
0,0,98,176q�6�   $��1��6�   $��38��6�   $��Bottom=�6�   $��1��6  $��2��6(  ��6�   �� *ConfigNominaCommand+.��5h      �� $��15��6   $��15��5i      
����� �! J� OpacityMask! 5k      !� 5l      " j� Stretch$
" Fill=�6"     
appbar_cog# !� Visual## �  5m      5o      5p      �� 5q   
   -<   5        $ CommandNuevo_Copy5��5q      $��Right=�6-   $��37��6I   #���  6T   $  Conceptos/Campos��6�   $��
0,0,98,145q�6�   $��1��6�   $��38��6�   $��Bottom=�6�   $��2��6  $��2��6(  ��6�   �� *ConfigNominaCommand+.��5r      �� $��15��6   $��15��5s      
����� �! 5u      !� 5v      $
" Fill=�6"   ## �  5w      5y      5z      5|      5}      
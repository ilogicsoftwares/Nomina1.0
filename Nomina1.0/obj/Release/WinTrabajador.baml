   M S B A M L   `   `   `  ���� D  @Nomina1.0, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Nomina1._0
Nomina1._0  ;"clr-namespace:Nomina1._0.ViewModelNomina1._0.ViewModel  T PMahApps.Metro, Version=1.2.4.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fD2clr-namespace:MahApps.Metro;assembly=MahApps.MetroMahApps.Metro     Nomina1._0.WinTrabajador   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     *localclr-namespace:Nomina1._0     1vm"clr-namespace:Nomina1._0.ViewModel     ;Controls,http://metro.mahapps.com/winfx/xaml/controls  ;
Converters*http://metro.mahapps.com/winfx/xaml/shared  >metro2clr-namespace:MahApps.Metro;assembly=MahApps.Metro  -     � Title$  
Trabajador��$	��645��$��738.125�� �� ClearTypeHint$ Enabled=� � 
ResizeMode$ CanResizeWithGrip=�&   System.Windows.Media.TextOptions   TextFormattingMode$ Display=� � WindowStartupLocation$ CenterScreen=� � 	Resources (  "Nomina1._0.RadioBoolToIntConverter   radioBoolToIntConverter �� MergedDictionaries �� Source��  �� $ /Resources/Icons.xaml?�%   &	           � DataContext .  (Nomina1._0.ViewModel.TrabajadorViewModel  .��� -   $��Grid1��	 � ColumnDefinitions	 �� $
��126* ��� $
��247* ��� $
��125* ��� $
��203* ��� $	��29* �.+��� -   
 ��Name$
 label��$��Cedula:��$��0,33,0,0q�$	��Top=�$��26��$��Right=�$��Right=�$	��113���� -    ��Name$ cedula��$��1��$��26��$��0,33,0,0q� �� TextWrapping$
 Wrap=�$	��Top=�$��1������ *TrabajadorActual.cedula+ �� Mode$ OneWay=� �� UpdateSourceTrigger$ PropertyChanged=��� -   $
 
label_Copy��$��Nombres:��$��0,59,0,0q�$	��Top=�$��26��$��Right=�$��Right=�$��74���� -   $ nombres��$��26��$��0,61,0,0q�$
 Wrap=�$	��Top=�$��1��$��2������ *TrabajadorActual.nombres+$ TwoWay=�$ PropertyChanged=��� -   $
 label_Copy2��$��
Apellidos:��$��	20,89,0,0q�$	��Top=�$��26��$��Right=��� -   $
 label_Copy3��$��Datos Personales��$��0,7,0,0q�$	��Top=�$��26��$
��Left=�$��2��$
��Bold"�$
��Left=�$	��334���� -	   $ 	apellidos��$��26��$��0,89,0,0q�$
 Wrap=�$	��Top=�$��1��$��3������ *TrabajadorActual.apellidos+$ TwoWay=�$ PropertyChanged=��� -
   $
 label_Copy4��$��Sexo:��$��	0,121,0,0q�$	��Top=�$��26��$��Right=�$��Right=�$��74�� J� RenderTransformOrigin$ 0.541,0.731&��� -   $
 label_Copy5��$��Estado Civil:��$��	0,147,0,0q�$	��Top=�$��26��$��Right=�$��Right=�$��74��$ 0.541,0.731&��� -   $��	StackSexo��$��1��$��20��$��	0,126,0,0q�$	��Top=� �� Orientation$ 
Horizontal=� �� CanHorizontallyScroll . ���	#FFE4E2E2 K� ZIndex$ -4��.+�	� -    	�Name$ 	masculino��$��	Masculino��$
��Left=�$	��Top=�$��4�� d� 	IsChecked ��  �� Path$ TrabajadorActual.sexo� �� 	Converter# [   �� ConverterParameter$ 1��$ PropertyChanged=�	� -   $ femenino��$��Femenino��$	��Top=�$��50,0,0,0q�$��Right=�$ 1.423,1.133&�$��Right=�$��5�� �� $ TrabajadorActual.sexo�# [  $ 2��$ PropertyChanged=��� -   $��StackEdoCivil��$��1��$��20��$��	0,154,0,0q�$	��Top=�$ 
Horizontal=� . ���	#FFE4E2E2.+�	� -   $ radioButton_Copy1��$��Casado��$
��Left=�$	��Top=�$��6�� �� $ TrabajadorActual.edocivil�# [  $ 1��	� -   $ radioButton_Copy2��$��Soltero��$	��Top=�$��66,0,0,0q�$��Right=�$ 1.423,1.133&�$��Right=�$��6�� �� $ TrabajadorActual.edocivil�# [  $ 2���� -   $
 label_Copy1��$��Codigo:��$��0,4,0,0q�$	��Top=�$��29��$��Right=�$��2���� -   $ Id��$��3��$��26��$��0,4,0,0q�$
 Wrap=�$	��Top=�$��1�� �� 
IsReadOnly . {�.  ���� *TrabajadorActual.idtrabajador+$ OneWay=��� -   $
 label_Copy6��$��Fecha de Nacimiento:��$��0,33,0,0q�$	��Top=�$��26��$��Right=�$��2���� -   $
 label_Copy7��$��Lugar de Nacimiento:��$��0,62,0,0q�$	��Top=�$��26��$��Right=�$��2��(  "System.Windows.Controls.DatePicker  $��3��$��0,33,0,0q�$	��Top=�$��26��$��9��   SelectedDate �� $ fechanac�$ TwoWay=�$ PropertyChanged=��� -   $ txtLugarnac��$��26��$��0,61,0,0q�$
 Wrap=�$	��Top=�$��3��$��10������ *TrabajadorActual.lugarnac+$ TwoWay=�$ PropertyChanged=��� -   $
 label_Copy8��$��Nivel de Instrucción:��$��	0,119,0,0q�$	��Top=�$��25��$��Right=�$��2���� -   $
 label_Copy9��$��Estatus:��$��
32,291,0,0q�$	��Top=�$��26��$��Right=�$��2���� -    ��Name$ comboBoxgrado��$��3��$��	0,119,0,0q�$	��Top=� �� DisplayMemberPath$ grado��$��26��$��12������ *Lgrado+ �� SelectedValue �� *TrabajadorActual.gradointruc+$ TwoWay=�$ PropertyChanged=��� -   $ comboBoxestatus��$��3��$��	0,291,0,0q�$	��Top=�$ descripcion��$��26��$��21������ *
Lestatus+ �� *TrabajadorActual.estatus+$ TwoWay=��� -   $
 label_Copy10��$��Dirección:��$��	0,179,0,0q�$	��Top=�$��26��$��Right=��� -   $ txtDireccion��$��57��$��1,181,124,0q�$
 Wrap=�$	��Top=�$��1��$��8��$��2������ *TrabajadorActual.direccion+$ TwoWay=�$ PropertyChanged=��� -   $
 label_Copy11��$��Nacionalidad:��$��0,90,0,0q�$	��Top=�$��26��$��Right=�$��2���� -   $ comboBoxnacional��$��3��$��0,89,0,0q�$	��Top=�$ descripcion��$��26��$��11������ *Lnac+ �� *TrabajadorActual.nacionalidad+$ TwoWay=�$ PropertyChanged=�� $��1��$
��Left=�$	��100��$��
91,121,0,0q�$	��Top=�$	��100���� -   $
 label_Copy12��$��Hijos:��$��	0,150,0,0q�$	��Top=�$��26��$��Right=�$��Right=�$��88��$��2���� -    $ txthijos��$��3��$��26��$��	0,149,0,0q�$
 Wrap=�$	��Top=�$��13������ *TrabajadorActual.Nhijos+$ TwoWay=�$ PropertyChanged=��� -!   $
 label_Copy13��$��Datos Laborales��$��	0,276,0,0q�$	��Top=�$��26��$
��Left=�$��3��$
��Bold"�$
��Left=�$	��374���� -"   $
 label_Copy14��$��Nomina:��$��	0,307,0,0q�$	��Top=�$��26��$��Right=��� -#   $ comboNomina��$��1��$��	0,307,0,0q�$	��Top=�$ descripcion��$��26��$��17������ *	Lnomina+ �� *TrabajadorActual.nominatype+$ TwoWay=�$ PropertyChanged=��� -$   $
 label_Copy15��$��Tel. Local:��$��	0,213,0,0q�$	��Top=�$��25��$��Right=�$��Right=�$��88��$��2���� -%   $ txtLocal��$��3��$��26��$��	0,212,0,0q�$
 Wrap=�$	��Top=�$��15������ * TrabajadorActual.telefonolocal+$ TwoWay=��� -&   $
 label_Copy16��$��Tel. Celular:��$��	0,182,0,0q�$	��Top=�$��26��$��Right=�$��Right=�$��88��$��2���� -'   $ 
txtCelular��$��3��$��26��$��	0,181,0,0q�$
 Wrap=�$	��Top=�$��14������ *TrabajadorActual.telefonocel+$ TwoWay=�$ PropertyChanged=��� -(   $
 label_Copy17��$��Tel. Contacto:��$��	0,245,0,0q�$	��Top=�$��26��$��Right=�$��Right=�$��88��$��2���� -)   $ txtContacto��$��3��$��26��$��	0,244,0,0q�$
 Wrap=�$	��Top=�$	��151������ *#!TrabajadorActual.telefonocontacto+$ TwoWay=�$ PropertyChanged=��� -*   $
 label_Copy18��$��	Contacto:��$��	0,245,0,0q�$	��Top=�$��26��$��Right=�$��Right=�$��88���� -+   $ txtContacton��$��1��$��26��$��1,245,124,0q�$
 Wrap=�$	��Top=�$��16��$��2������ *!TrabajadorActual.nombrecontacto+$ TwoWay=�$ PropertyChanged=��� -,   $
 label_Copy19��$��Cargo :��$��1,369,246,0q�$	��Top=�$��26��$��Right=�$��2���� --   $ 
comboCargo��$��1��$��	0,369,0,0q�$	��Top=�$ Nombre��$��26��$��19������ *Lcargo+ �� *TrabajadorActual.cargo+$ TwoWay=�$ PropertyChanged=��� -.   $
 label_Copy20��$��Sueldo Base Mensual:��$��	0,401,0,0q�$	��Top=�$��25��$��Right=�$ 
0.517,0.56&��� -/   $ cedula_Copy5��$��1��$��26��$��	0,400,0,0q�$
 Wrap=�$	��Top=�$��20������ *TrabajadorActual.Sueldo+$ TwoWay=� �� StringFormat$ N��$ PropertyChanged=��� -0   $
 label_Copy21��$��Departamento:��$��	0,338,0,0q�$	��Top=�$��26��$��Right=��� -1   $ comboBoxnacional_Copy2��$��1��$��	0,338,0,0q�$	��Top=�$ Descripcion��$��26��$��18������ *	Ldepart+ �� * TrabajadorActual.departamentos+$ TwoWay=�$ PropertyChanged=��� -2   $
 label_Copy22��$��Fecha de Ingreso:��$��	0,321,0,0q�$	��Top=�$��26��$��Right=�$��2��  $��3��$��	0,321,0,0q�$	��Top=�$��26��$��22�� �� *TrabajadorActual.Fechaing+$ TwoWay=�$ PropertyChanged=��� -3   $
 label_Copy23��$��Numero de Cuenta:��$��	1,385,0,0q�$	��Top=�$��25��$��Right=�$ 
0.517,0.56&�$��2���� -4   $ cedula_Copy6��$��3��$��26��$��	0,385,0,0q�$
 Wrap=�$	��Top=�$��24������ *TrabajadorActual.numerocuenta+$ TwoWay=�$ PropertyChanged=��� -5   $
 label_Copy24��$��Banco:��$��
32,353,0,0q�$	��Top=�$��26��$��Right=�$��2���� -6   $ comboBoxestatus_Copy��$��3��$��	0,353,0,0q�$	��Top=�$ descripcion��$��26��$��23������ *Lbanco+ �� *TrabajadorActual.bancos+$ TwoWay=��� -7   $
 label_Copy25��$��Tipo de Cuenta:��$��	1,416,0,0q�$	��Top=�$��25��$��Right=�$ 
0.517,0.56&�$��2���� -8   $ comboBoxestatus_Copy1��$��3��$��	0,416,0,0q�$	��Top=�$ descripcion��$��26��$��26������ *Ltipoc+ �� *TrabajadorActual.tipocuenta+$ TwoWay=��� -9   $
 label_Copy26��$��
Conceptos:��$��59,0,240,136q�$��Right=�$ 
0.517,0.56&�$��2��$��28��$��Bottom=��� -:   $
 label_Copy27��$��Campos:��$��124,0,65,136q�$��Right=�$ 
0.517,0.56&�$��1��$��25��$��Bottom=��� -;    ��Name$ listBox_Copy��$��124,0,116,31q�
����� �$��1q�   TextHintingMode$ Animated=�  �� SelectionMode$  Single=�$��1��$��2��$	��105��$��Bottom=�$ nombrecampo������ *CamposViewList.ListaCampos+$ TwoWay=�$ PropertyChanged=��� -<   $
 label_Copy28��$��Datos de la Nomina��$��	1,426,0,0q�$	��Top=�$��26��$
��Left=�$��2��$
��Bold"�$
��Left=�$	��372���� -=   ! ��Name$! CommandNuevo_Copy1��$
��Left=�$��35��  MetroCircleButtonStyle#���  " � ToolTip$" Modificar Campo��$��
10,0,0,101q�$��2��$��35��$��Bottom=����� *#!CamposViewList.ChangeValueCommand+���� *SelectedValue+# �� ElementName$# listBox_Copy��.���� $��15��$��15��
����� �$ J� OpacityMask$ !� % j� Stretch$
% Fill=�  appbar_folder_open& !� Visual#& �  �� ->   $ listBox��$��59,0,165,31q�
����� �$��1q�' �� SelectedValuePath$' codigo��$ nombre��$ Animated=�$��Disabled=�$	��105��$��Bottom=�$��2������ * ConceptosViewList.FullConcepts+$ TwoWay=�$ PropertyChanged=�( �� SelectedIndex( �� *ConceptosViewList.ItemActual+�� -?   $! CommandNuevo_Copy2��$
��Left=�$��35��#���  $" Mover Arriba��$��
82,0,0,108q�$��1��$��35��$��Bottom=����� *!ConceptosViewList.MoveUpCommand+���� *SelectedValue+$# listBox��.���� $��15��$��15��
����� �$ !� $
% Fill=�  appbar_arrow_up#& �  �� -@   $! CommandNuevo_Copy3��$
��Left=�$��35��#���  $" Mover Abajo��$��	82,0,0,80q�$��1��$��35��$��Bottom=����� *#!ConceptosViewList.MoveDownCommand+���� *SelectedValue+$# listBox��.���� $��15��$��15��
����� �$ !� $
% Fill=�  appbar_arrow_down#& �  �� -A   $! CommandNuevo��$
��Left=�$��35��#���  $" Agregar Concepto��$��	82,0,0,52q�$��1��$��35��$��Bottom=����� *%#ConceptosViewList.AddConceptCommand+.���� $��15��$��15��
����� �$ !� $
% Fill=�  
appbar_add#& �  �� -B   $! CommandNuevo_Copy��$
��Left=�$��35��#���  $" Eliminar Concepto��$��	82,0,0,24q�$��1��$��35��$��Bottom=����� *(&ConceptosViewList.RemoveConceptCommand+���� *SelectedValue+$# listBox��.���� $��15��$��15��
���  ��$ 0.5,0.5&�z�V� .~��� �� �� ) �� Angle$) -44.838Q�T� $ !� $
% Fill=�#& �  
   M S B A M L   `   `   `  ���� D  @Nomina1.0, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Nomina1._0
Nomina1._0  ;"clr-namespace:Nomina1._0.ViewModelNomina1._0.ViewModel       Nomina1._0.WinCambioCampos   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     *localclr-namespace:Nomina1._0     T PMahApps.Metro, Version=1.2.4.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4f;Controls,http://metro.mahapps.com/winfx/xaml/controls  +vm"clr-namespace:Nomina1._0.ViewModel    � Title$  Cambiar Campos en General��$	��156��$	��354�� � DataContext ,  &Nomina1._0.ViewModel.CamposGenViemodel   � 	Resources !  Nomina1._0.MyMultiConverter   mymulticonverter��%   &	          .��� .+��� -    ��Name$ comboBox��$
��Left=�$��	10,30,0,0q�$	��Top=�$	��120�� �� DisplayMemberPath$ nombre�� �� SelectedValuePath$ descripcion������ *campos+�� -    ��Name$ label��$
��Left=�$��	10,61,0,0q�$	��Top=�$	��320��$��26������ *SelectedValue+ �� ElementName$ comboBox���� -   $ 
label_Copy��$��Campo��$
��Left=�$��10,4,0,0q�$	��Top=�$	��120���� -   $ label_Copy1��$��Valor��$
��Left=�$��	135,4,0,0q�$	��Top=�$	��120���� -    ��Name$ button��$��Procesar��$
��Left=�$��
255,92,0,0q�$	��Top=�$��75������ *CambiarCamposCommand+��`� 	 `� 	Converter#	 [  .1��� 
 �� Path$

 Text�$ textBox���� $

 Text�$ comboBox���� -    ��Name$ textBox��$
��Left=�$��23��$��
135,30,0,0q� �� TextWrapping$
 Wrap=�$	��Top=�$	��201������ *Valor+ �� Mode$ TwoWay=� �� StringFormat$ N��
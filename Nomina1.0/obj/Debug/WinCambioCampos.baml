   M S B A M L   `   `   `  ����D  @Nomina1.0, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Nomina1._0
Nomina1._0  5   	   ;"clr-namespace:Nomina1._0.ViewModelNomina1._0.ViewModel  5   	        Nomina1._0.WinCambioCampos   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:Nomina1._0     5   	   T PMahApps.Metro, Version=1.2.4.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4f;Controls,http://metro.mahapps.com/winfx/xaml/controls  5   	   +vm"clr-namespace:Nomina1._0.ViewModel  5   	     � Title$  Cambiar Campos en General��5
   	   $	��156��6+   $	��354��68    � DataContext 5      ,  &Nomina1._0.ViewModel.CamposGenViemodel  5   
    � 	Resources 5      !  Nomina1._0.MyMultiConverter   mymulticonverter��%   &	          5   
   6"   5      .��5      � .+�5   
   �� -   5         ��Name$ comboBox��5      $
��Left=�6%   $��	10,30,0,0q�6@   $	��Top=�6S   $	��120��6k    �� DisplayMemberPath$ nombre��6w    �� SelectedValuePath$ descripcion��6�   ��6�   �� *campos+6�   �� 5   
   -   5         ��Name$ label��5      $
��Left=�6W   $��	10,61,0,0q�6r   $	��Top=�6�   $	��320��6�   $��26��6�   ��6   �� *SelectedValue+ �� ElementName$ comboBox��6�   �� 5   
   -   5        $ 
label_Copy��5      $��Campo��6$   $
��Left=�64   $��10,4,0,0q�6O   $	��Top=�6a   $	��120��6y   �� 5   
   -   5        $ label_Copy1��5      $��Valor��6%   $
��Left=�65   $��	135,4,0,0q�6P   $	��Top=�6c   $	��120��6{   �� 5   
   -   5         ��Name$ button��5      $��Procesar��6!   $
��Left=�64   $��
255,92,0,0q�6O   $	��Top=�6c   $��75��6{   ��6�   �� *CambiarCamposCommand+��5      `� 5      	 `� 	Converter#	 [  6   .1�5      �� 
 �� Path$

 Text�6   $ textBox��6*   �� 5      $

 Text�6   $ comboBox��6*   5      5      �� 5   
   -   5         ��Name$ textBox��5      $
��Left=�6#   $��23��6>   $��
135,30,0,0q�6J    �� TextWrapping$
 Wrap=�6^   $	��Top=�6�   $	��201��6�   ��6r   �� *Valor+ �� Mode$ TwoWay=� �� StringFormat$ N��6�   5!      5"      
   M S B A M L   `   `   `  ����D  @Nomina1.0, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Nomina1._0
Nomina1._0  5   	   ;"clr-namespace:Nomina1._0.ViewModelNomina1._0.ViewModel  5          Nomina1._0.WinAsistencia   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:Nomina1._0     5   	   1vm"clr-namespace:Nomina1._0.ViewModel     5        � Title$  Reporte de inasitencias��5	   	   $	��211��6)   $	��389��66    � DataContext 5
      0  *Nomina1._0.ViewModel.InasistenciaViewModel  5   
   .��5      � $��0,0,2,0q�6   .+�5   
   �� -   5         ��Name$ comboBox��5      $
��Left=�6%   $��	21,40,0,0q�6@   $	��Top=�6S   $	��348��6k    �� DisplayMemberPath$ descripcion��6�   ��6w   �� *	Nominas+ �� SelectedItem 6�   �� *Nomina+�� 5   
   -   5         ��Name$ label��5      $��Seleccionar Nomina��6   $
��Left=�6<   $��	17,10,0,0q�6W   $	��Top=�6j   $	��120��6�   (  "System.Windows.Controls.DatePicker  5   
   $
��Left=�6   $��
21,100,0,0q�60   $	��Top=�6D   $	��159��6\      SelectedDate 6h   �� *Desde+�� 5   
   -   5        $ 
label_Copy��5      $��Desde��6$   $
��Left=�64   $��	21,71,0,0q�6O   $	��Top=�6b   $	��120��6z     5   
   $
��Left=�6   $��210,100,0,0q�60   $	��Top=�6E   $	��159��6]    6i   �� *hasta+�� 5   
   -   5        $ label_Copy1��5      $��Hasta��6%   $
��Left=�65   $��
210,71,0,0q�6P   $	��Top=�6d   $	��120��6|   �� 5   
   -   5         ��Name$ button��5      $��Reporte��6!   $
��Left=�63   $��294,146,0,0q�6N   $	��Top=�6c   $��75��6{   ��6�   �� *ProcInsCommand+5      5      
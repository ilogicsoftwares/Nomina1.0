   M S B A M L   `   `   `  ����D  @Nomina1.0, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Nomina1._0
Nomina1._0  5   	   ;"clr-namespace:Nomina1._0.ViewModelNomina1._0.ViewModel  5   	       Nomina1._0.WinAsistDiaria   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:Nomina1._0     5   	   1vm"clr-namespace:Nomina1._0.ViewModel     5   	   $   Nomina1._0.MetroToolWindowBase    Closed$   MetroToolWindowBase_Closed��5	   A    � Title$ WinAsistDiaria��6	   $��456.897��6    $��854.231��61    � DataContext 5
      ,  &Nomina1._0.ViewModel.AsistDiaViewModel  5   
   .��5      � .+�5   
   (  "System.Windows.Controls.DatePicker  $
��Left=�6   $��	10,10,0,0q�60   $	��Top=�6C   $	��223��6[      SelectedDate 6g   �� *Fecha+&   System.Windows.Controls.DataGrid  5   
   -   5          Name$ dataGrid��5      $	��355��6T   $��
10,41,10,0q�6a   $	��Top=�6u      AutoGenerateColumns .  
����� �$��3q�6�   ��6%   �� *
ControlDia+ �� Mode$ TwoWay=�   Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Fecha��6%   1  +System.Windows.Controls.DataGridBoundColumn	   Binding	 64   �� *date+
 �� StringFormat$
 d��  5      $ Cedula��6%   	 65   �� *trabajador.cedula+  5      $ Nombres��6%   	 66   �� *trabajador.nombres+  5      $ 	Apellidos��6%   	 68   �� *trabajador.apellidos+  5      $ Entradas��6%   	 67   �� *
Entradas+  5      $ Salidas��6%   	 66   �� *	Salidas+  5      $	 Dia��6%   	 62   �� *Dia+  5      $ Horas��6%   	 64   �� *HorasD+  5      $ Retraso��6%   	 66   �� *	Retraso+5      �� 5   
   -   5         ��Name$ label��5      $��Right=�6D   $��
0,399,11,0q�6`   $	��Top=�6t   $��30��6�   $��26��6�   ��6   �� *ControlDia.Count+6�   �� 5   
   -   5        $ 
label_Copy��5      $��Total Trabajadores:��6$   $��Right=�6B   $��
0,399,46,0q�6^   $	��Top=�6r   5       5!      
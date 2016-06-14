using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace Nomina1._0.ViewModel
{
  public  class LogingViewModel
    {
       static nominaEntities userContext = Datos.Micontexto;
       public static Menu UserMenu=new Menu();
      
      public static RoutedCommand CustomRoutedCommand = new RoutedCommand();
        public LogingViewModel()
        {
            CargarUsuarios();

            
         }
        private void CargarUsuarios()
        {
            this.usuarios = userContext.users.ToList();
        }

        private List<users> _usuarios;
        public List<users> usuarios
        {
            get
            {
                return _usuarios;
            }
            set
            {
                _usuarios = value;
               

            }


        }
        private users _UsuarioActual;
        public  users UsuarioActual
        {
            get
            {
                return _UsuarioActual;
            }
            set
            {
                _UsuarioActual = (users)value;

               
            }

        }
        private static users _UsuarioActivo;
        public static users UsuarioActivo
        {
            get
            {
                return _UsuarioActivo;
            }
            set
            {
                _UsuarioActivo = (users)value;


            }

        }
        public static void userMenu()
        {

            var Topmenu = userContext.usermenu.Where(x => x.idusuario == UsuarioActivo.idusuario)
                                           .Where(x => x.Tipo == 0)
                                           .OrderBy(q=>q.id)
                                           .ToList();
            

            //cargar encabezados e hijos
            CargarMenuItems(Topmenu,UserMenu.Items);
            

            

        }

        private static void CargarMenuItems(List<usermenu> Querylist,ItemCollection ElementColection)
        {
            foreach (var row in Querylist)
            {
                
               MenuItem nuevoitem = new MenuItem();
               Separator nuevosep = new Separator();

                CommandBinding customCommandBinding = new CommandBinding(
         CustomRoutedCommand, ExecutedCustomCommand, CanExecuteCustomCommand);

                
                nuevoitem.CommandBindings.Add(customCommandBinding);
                nuevoitem.Command = CustomRoutedCommand;


                nuevoitem.Uid = row.id;
                var mheader = row.Nombre;
                if (mheader != @"\-")
                {
                    nuevoitem.Header = mheader;
                    ElementColection.Add(nuevoitem);
                }
                else { ElementColection.Add(nuevosep); }
                    if (row.hijos==1)
                {
var Hijos = userContext.usermenu.Where(x => x.idusuario == UsuarioActivo.idusuario)
                                           .Where(x=>x.Pariente ==row.id)
                                           .OrderBy(q=>q.id)
                                           .ToList();
                    CargarMenuItems(Hijos, nuevoitem.Items);  
                }

            }

        }
   public static void ExecutedCustomCommand(object sender,
  ExecutedRoutedEventArgs e)
        {
            try
            {

            
            var esto = sender as MenuItem;
            var uid =esto.Uid;
            var Item =userContext.usermenu.Where(x => x.idusuario == UsuarioActivo.idusuario)
                                           .Where(x => x.id == uid)
                                           .OrderBy(q => q.id)
                                           .ToList();
                if (Item[0].Accion == "AbrirWindow")
                {
                    Datos.EjecutarFuncion(Item[0].Accion, Item[0].Nombre + "," + Item[0].Parametros);
                }else
                {
                    Datos.EjecutarFuncion(Item[0].Accion,Item[0].Parametros);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Exception caught: "+ ex.ToString());
            }
        }

       

        public static void CanExecuteCustomCommand(object sender,
    CanExecuteRoutedEventArgs e)
        {
            Control target = e.Source as Control;

            if (target != null)
            {
                e.CanExecute = true;
            }
            else
            {
                e.CanExecute = false;
            }
        }
    }
}

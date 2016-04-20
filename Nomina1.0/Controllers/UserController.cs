using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;

namespace Nomina1._0.Controllers
{
  public  class UserController
    {
        nominaEntities userContext = new nominaEntities();
        public static Menu UserMenu=new Menu();
        public UserController()
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
            nominaEntities MenuContext = new nominaEntities();
            var Topmenu = MenuContext.usermenu.Where(x => x.idusuario == UsuarioActivo.idusuario)
                                           .Where(x=>x.Tipo ==0)
                                           .ToList();
              
        }
       

    }
}

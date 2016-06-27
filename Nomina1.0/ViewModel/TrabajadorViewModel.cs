﻿using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Data.Entity.Validation;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;

namespace Nomina1._0.ViewModel
{
    class TrabajadorViewModel:trabajador,INotifyPropertyChanged
    {

        public static List<departamentos> Ldepart { get { return Datos.Micontexto.departamentos.ToList();}}
        public static List<estatus> Lestatus { get { return Datos.Micontexto.estatus.ToList();}}
        public static List<cargo> Lcargo { get { return Datos.Micontexto.cargo.ToList(); }}
        public static List<nominatype> Lnomina { get { return Datos.Micontexto.nominatype.ToList(); } }
        public static List<nacionalidad> Lnac {get { return Datos.Micontexto.nacionalidad.ToList(); }}
        public static List<gradointruc> Lgrado { get { return Datos.Micontexto.gradointruc.ToList(); }}
        public static List<bancos> Lbanco { get { return Datos.Micontexto.bancos.ToList();}}
        public static List<tipocuenta> Ltipoc { get { return Datos.Micontexto.tipocuenta.ToList(); } }


        nominaEntities bd = Datos.Micontexto;
        
        public TrabajadorViewModel()
        {
            Nuevo();

        }

     
        private trabajador _TrabajadorActual;
        public trabajador TrabajadorActual
        {
            get { return _TrabajadorActual; }
            set { _TrabajadorActual = value;
                ConceptosViewList = new ConceptosListViewModel(TrabajadorActual);
                
            }
            
        }


        private ConceptosListViewModel _ConceptosViewList;
        public ConceptosListViewModel ConceptosViewList
        {
            get { return _ConceptosViewList; }
            set
            {
                _ConceptosViewList = value;
                NotifyPropertyChanged("ConceptosViewList");
            }
        }


        public void Guardar()
        {
            try
            {
             
                bd.trabajador.Add(TrabajadorActual);
                bd.SaveChanges();
                Datos.Guardado();
                Nuevo();
            }catch(Exception exc)
            {
                MessageBox.Show(exc.ToString()); 
            }
        }

        public void Nuevo()
        {
            TrabajadorActual = new trabajador();
           
           
                    
            NotifyPropertyChanged("TrabajadorActual");
            PrincipalViewModel.EstatusNuevo = true;
        }

       public  void Editar()

        {
            bd.SaveChanges();
            Datos.Actualizado();

        }

        public void Buscar(string cedulax)
        {
           
            var bt = bd.trabajador.FirstOrDefault(x => x.cedula == cedulax);
            if (bt != null)
            {
                TrabajadorActual = bt;
                PrincipalViewModel.EstatusNuevo = false;
                NotifyPropertyChanged("TrabajadorActual");
            }
            else
            {
                TrabajadorActual = new trabajador {cedula=cedulax };
                PrincipalViewModel.EstatusNuevo = true;
                NotifyPropertyChanged("TrabajadorActual");
                
            }
        }

        public void Filtro(string id)
        {
           
            int esto = Int32.Parse(id);
            var bt = bd.trabajador.FirstOrDefault(x=>x.idtrabajador==esto);
            bd.Entry(bt).Reload(); // cargar sin cambios

            TrabajadorActual = bt;
            PrincipalViewModel.EstatusNuevo = false;
            NotifyPropertyChanged("TrabajadorActual");


        }
        public event PropertyChangedEventHandler PropertyChanged;
        public void NotifyPropertyChanged([CallerMemberName] String propertyName = "")
        {
            if (PropertyChanged != null)
            {
                PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
            }
        }


    }
}
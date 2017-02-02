using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;

namespace Nomina1._0.ViewModel
{
    class AsigConceptoViewModel:INotifyPropertyChanged
    {
        nominaEntities BD = new nominaEntities();
        public class Trabs
        {
            public string Nombre { get; set; }
            public int ID { get; set; }
        }
       
        public RelayCommand MoveTrabCommand { get; set; }
        public RelayCommand MoveBackCommand { get; set; }
   
       
        public RelayCommand AsignarAllCommad { get; set; }
        public List<nominatype> Nominas { get; set; }
        public TrabajadorViewModel trabajador { get; set; }

        public AsigConceptoViewModel()
        {
            MoveTrabCommand = new RelayCommand(MoveTrab);
            MoveBackCommand = new RelayCommand(MoveBack);
            AsignarAllCommad = new RelayCommand(AsignarAll);
            conceptos = BD.conceptos.ToList();
            buscarTrabs(0);
            TrabajadoresS = new ObservableCollection<Trabs>();
            var noms = BD.nominatype.ToList();
            nominatype newtodo = new nominatype { descripcion = "TODOS",idnomina=0 };
            noms.Add(newtodo);
            Nominas = noms.OrderBy(x => x.idnomina).ToList();
        }
        private void AsignarAll(object obj)
        {
            if (conceptosSelected != null)
            {
                foreach (var trab in TrabajadoresS)
                {
                    asignarConcepto(trab.ID);
                }
                trabajador.Editar();
            }
        }
        private void asignarConcepto(int idtrabajador)
        {
            trabajador = new TrabajadorViewModel();
            trabajador.Filtro(idtrabajador.ToString());
            if (Nomina.tipo == 1)
            {
                trabajador.ConceptosViewList.Filtro(conceptosSelected.idconcepto.ToString());
            }
            else
            {
                trabajador.BonosConceptosViewList.Filtro(conceptosSelected.idconcepto.ToString());
            }
      
        }
        private void MoveTrab(object obj)
        {
           
            ListBox listbox = obj as ListBox;
            foreach (var trab in listbox.SelectedItems.OfType<Trabs>().ToList())
            {
                TrabajadoresS.Add(trab);
                Trabajadoresx.Remove(trab);

            }

          
        }
        private List<conceptos> _conceptos;
        public List<conceptos> conceptos
        {
            get { return _conceptos; }
            set { _conceptos = value; }
        }
        private conceptos _conceptoSelected;
        public conceptos conceptosSelected
        {
            get { return _conceptoSelected; }
            set { _conceptoSelected = value; }
        }

        private nominatype _Nomina;
        public nominatype Nomina
        {
            get { return _Nomina; }
            set { _Nomina = value;
                buscarTrabs(value.idnomina);
                TrabajadoresS = new ObservableCollection<Trabs>();
                NotifyPropertyChanged();

            }
        } 

        public void buscarTrabs(int nominaid)
        {
            if (nominaid != 0)
            {
                Trabajadoresx = new ObservableCollection<Trabs>(BD.trabajador.Where(x => x.idstatus == 1).Where(x => x.nominatype.idnomina == nominaid || x.nominatype1.idnomina==nominaid).Select(x => new Trabs { Nombre = x.nombres.Trim() + " " + x.apellidos.Trim(), ID = x.idtrabajador }).ToList());
            }else
            {
                Trabajadoresx = new ObservableCollection<Trabs>(BD.trabajador.Where(x => x.idstatus == 1).Select(x => new Trabs { Nombre = x.nombres.Trim() +" "+ x.apellidos.Trim(), ID = x.idtrabajador }).ToList());
            }
        }
        private void MoveBack(object obj)
        {

            ListBox listbox = obj as ListBox;
            foreach (var trab in listbox.SelectedItems.OfType<Trabs>().ToList())
            {
                Trabajadoresx.Add(trab);
                TrabajadoresS.Remove(trab);

            }

     
          
            
        }

       
        private  ObservableCollection <Trabs> _Trabajadoresx;
        public  ObservableCollection<Trabs> Trabajadoresx
        {
            get { return _Trabajadoresx; }

            set
            {
                _Trabajadoresx = value;
                NotifyPropertyChanged();
            }

        }

        private ObservableCollection<Trabs> _TrabajadoresS;
        public ObservableCollection<Trabs> TrabajadoresS
        {
            get { return _TrabajadoresS; }

            set
            {
                _TrabajadoresS = value;
                NotifyPropertyChanged("TrabajadoresS");
            }

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

﻿using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace Nomina1._0.ViewModel
{
   public class ConceptosListViewModel: INotifyPropertyChanged
    {

        private dynamic objeto { get; set; }
        public RelayCommand RemoveConceptCommand { get; set; }
        public RelayCommand AddConceptCommand { get; set; }
        public RelayCommand MoveUpCommand { get; set; }
        public RelayCommand MoveDownCommand { get; set; }
        public int ListTipo  { get; set; }
    public ConceptosListViewModel(dynamic objeto,int Tipo=1)
        {
            ListTipo = Tipo;
            this.objeto = objeto;
              if (objeto.conceptos != string.Empty && objeto.conceptos != null)
               {
                if (Tipo == 1)

                {
                    this.Concepts = new ObservableCollection<string>(objeto.conceptos.Trim().Split(','));
                   
                }else
                {
                    this.Concepts = new ObservableCollection<string>(objeto.conceptosbonos.Trim().Split(','));
                }
                obtenernombres();
                NotifyPropertyChanged("Concepts");
            } else
               {
                   this.Concepts = new ObservableCollection<string>();
               }
       
            RemoveConceptCommand = new RelayCommand(removeConcepto);
            AddConceptCommand = new RelayCommand(AddNew);
            MoveDownCommand = new RelayCommand(MoveDown);
            MoveUpCommand = new RelayCommand(MoveUp);
         
        }
        private int _ItemActual;
        public int ItemActual {
            get { return _ItemActual; }

            set { _ItemActual = value;

                NotifyPropertyChanged("ItemActual");
            }

        }

        private ObservableCollection<string> _Concepts;
        public ObservableCollection<string> Concepts
        {
            get
            {

                return _Concepts;



            }
            set
            {
                _Concepts = value;

                if (ListTipo == 1)
                {
                  
                    if (value != null)
                    {
                        objeto.conceptos = string.Join(",", value);
                    }
                    else
                    {
                        objeto.conceptos = string.Empty;
                    }
                }
                else
                {
                 
                    if (value != null)
                    {
                        objeto.conceptosbonos = string.Join(",", value);
                    }
                    else
                    {
                        objeto.conceptosbonos = string.Empty;
                    }
                }
              
               
                NotifyPropertyChanged("Concepts");

            }
        }

        public void removeConcepto(object concepto)
        {
            if (concepto != null)
            {
                Concepts.Remove(concepto.ToString());
                obtenernombres();
                ItemActual = 0;
                NotifyPropertyChanged("Concepts");
                GurdarEn(ListTipo);
            }
        }
        private void GurdarEn(int listTipo)
        {
            if (listTipo == 1)
            {
                if (Concepts != null)
                {
                    objeto.conceptos = string.Join(",", Concepts);
                }
                else
                {
                    objeto.conceptos = string.Empty;
                }
            }
            else
            {
                if (Concepts != null)
                {
                    objeto.conceptosbonos = string.Join(",", Concepts);
                }
                else
                {
                    objeto.conceptosbonos = string.Empty;
                }
            }
        }

        public void AddNew(object nulo)
        {
            PrincipalViewModel.ObjetoActual = this;
            WinBusqueda buscarconcepto = new WinBusqueda("Agregar Concepto", "conceptos", "new(idconcepto as ID, codigo as Codigo, nombre as Nombre, variante as Campo, tipo as Tipo,Valor as Formula)");
            buscarconcepto.ShowDialog();
        }
        public void MoveUp(object item)
        {
            if(item==null)
            { return; }
            int ind = Concepts.IndexOf(item.ToString());

            if (ind != 0)
            {
                Concepts.RemoveAt(ind);
                Concepts.Insert(ind-1,item.ToString());
                obtenernombres();
                NotifyPropertyChanged("Concepts");
            }
            ItemActual = ind - 1;
            GurdarEn(ListTipo);
        }
        public void MoveDown(object item)
        {
            if (item == null)
            { return; }
            int ind = Concepts.IndexOf(item.ToString());

            if (ind != Concepts.Count()-1)
            {
                Concepts.RemoveAt(ind);
                Concepts.Insert(ind + 1, item.ToString());
                obtenernombres();
                NotifyPropertyChanged("Concepts");
            }
            ItemActual = ind + 1;
            GurdarEn(ListTipo);

        }
        public void Filtro(string concepto) //AddObject
        {
            var elem=Concepts.FirstOrDefault(x=>x==concepto);
            if (elem!=null)
            {
                MessageBox.Show("El Concepto ya existe en la lista","Error",MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }
            Concepts.Add(concepto);
            ItemActual = Concepts.IndexOf(concepto);
            obtenernombres();
            NotifyPropertyChanged("Concepts");
            GurdarEn(ListTipo);

        }

        private void obtenernombres()
        {
         var q = (from con in Concepts
                    join names in Datos.Micontexto.conceptos
                    on con equals names.idconcepto.ToString()
                    select new xconcepto
                    {
                     codigo= con, 
                     nombre=names.nombre,
                     formula=names.Valor
                    
                    });

            FullConcepts = new ObservableCollection<xconcepto>(q);

        }
        private ObservableCollection<xconcepto> _FullConcepts;
        public ObservableCollection<xconcepto>  FullConcepts
        {
            get
            {

                return _FullConcepts;



            }
            set
            {
                _FullConcepts = value;
              
                NotifyPropertyChanged("FullConcepts");

            }
        }

        public void CargaPorNomina(nominatype nomina)
        {
           
            if (nomina != null) { 
            nominatype conceptosNom = Datos.Micontexto.nominatype.FirstOrDefault(x=>x.idnomina==nomina.idnomina);
            this.Concepts = new ObservableCollection<string>(conceptosNom.conceptos.Split(','));
            obtenernombres();
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
    public class xconcepto
    {
        public string codigo { get; set; }
        public string nombre { get; set; }
        public string formula { get; set; }
        public int? tipo { get; set; }

    }
  
}

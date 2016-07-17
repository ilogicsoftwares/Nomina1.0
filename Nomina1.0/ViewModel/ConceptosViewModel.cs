using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace Nomina1._0.ViewModel
{
    class ConceptosViewModel:conceptos, INotifyPropertyChanged
    {
    nominaEntities bd = Datos.Micontexto;
   
    #region Builder
    public ConceptosViewModel()
    {
        Nuevo();
        
    }

    #endregion


    #region EntidadActual

    private conceptos _ConceptoActual;
    public conceptos ConceptoActual
        {
        get { return _ConceptoActual; }
        set
        {
                _ConceptoActual = value;
            NotifyPropertyChanged();
        }
    }

    #endregion

    #region Editores
    public void Guardar()
    {
        try
        {
            bd.conceptos.Add(ConceptoActual);
            bd.SaveChanges();
            Datos.Guardado();
            Nuevo();
        }
        catch (Exception ex)
        {
            MessageBox.Show(ex.ToString());
        }
    }

    public void Nuevo()
    {
        ConceptoActual = new conceptos();

        PrincipalViewModel.EstatusNuevo = true;
    }

    public void Editar()

    {
        bd.SaveChanges();
            Datos.Actualizado();

    }

    public void Buscar(string texto)
    {

        var bt = bd.conceptos.FirstOrDefault(x => x.codigo == texto);
        if (bt != null)
        {
            ConceptoActual = bt;
            PrincipalViewModel.EstatusNuevo = false;
                
        }
        else
        {
            ConceptoActual = new conceptos { codigo = texto };
            PrincipalViewModel.EstatusNuevo = true;


        }
    }
        public void Eliminar()
        {
            try
            {
                Datos.Micontexto.conceptos.Remove(ConceptoActual);
                Datos.Micontexto.SaveChanges();
                Datos.Msg("Item eliminado", "Eliminado", "I");
                Nuevo();
            }
            catch (Exception es)
            {
                Datos.Msg("No se puede eliminar el Item, Se han generado procesos con el mismo" , "Error", "E");
            }
        }
        #endregion
        public void Filtro(string id)
        {
         
            int esto = Int32.Parse(id);
            var bt = bd.conceptos.FirstOrDefault(x => x.idconcepto == esto);
            bd.Entry(bt).Reload();

            ConceptoActual = bt;
            PrincipalViewModel.EstatusNuevo = false;
            NotifyPropertyChanged("ConceptoActual");


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

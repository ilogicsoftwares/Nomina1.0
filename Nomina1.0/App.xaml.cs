using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace Nomina1._0
{
    /// <summary>
    /// Interaction logic for App.xaml
    /// </summary>
    public partial class App : Application
    {
        
        protected override void OnStartup(StartupEventArgs e)
        {
          /*  //works for tab into textbox
            EventManager.RegisterClassHandler(typeof(TextBox),
                TextBox.GotFocusEvent,
                new RoutedEventHandler(TextBox_GotFocus));
            //works for click textbox
            EventManager.RegisterClassHandler(typeof(Window),Window.GotMouseCaptureEvent,new RoutedEventHandler(Window_MouseCapture));*/
            /// hacer override al evento PreviewKeyDownEvent de los grid del proyecto para colocar enter como tab
            EventManager.RegisterClassHandler(typeof(Grid),Grid.PreviewKeyDownEvent, new KeyEventHandler(Grid_PreviewKeyDown));
            base.OnStartup(e);

            ////
        }
       //seleccionar todo el contenido del texbox
      //  private void TextBox_GotFocus(object sender, RoutedEventArgs e)
       // {
           // (sender as TextBox).SelectAll();
       // }

        private void Window_MouseCapture(object sender, RoutedEventArgs e)
        {
            var textBox = e.OriginalSource as TextBox;
            if (textBox != null)
                textBox.SelectAll();
        }
        /// hacer override al evento PreviewKeyDownEvent para colocar enter como tab
        private void Grid_PreviewKeyDown(object sender, System.Windows.Input.KeyEventArgs e)
        {
            var uie = e.OriginalSource as UIElement;

            if (e.Key == Key.Enter)
            {
                e.Handled = true;
                uie.MoveFocus(
                new TraversalRequest(
                FocusNavigationDirection.Next));
            }
        }
      

    }
    public static class Extensions
    {
        public static IEnumerable<IEnumerable<T>> Split<T>(this IEnumerable<T> source, int parts)
        {
            var list = new List<T>(source);
            int defaultSize = (int)((double)list.Count / (double)parts);
            int offset = list.Count % parts;
            int position = 0;

            for (int i = 0; i < parts; i++)
            {
                int size = defaultSize;
                if (i < offset)
                    size++; // Just add one to the size (it's enough).

                yield return list.GetRange(position, size);

                // Set the new position after creating a part list, so that it always start with position zero on the first yield return above.
                position += size;
            }
        }
    }
}

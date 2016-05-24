using System;
using System.Globalization;
using System.Windows.Data;

namespace Nomina1._0
{
    class RadioBoolToIntConverter : IValueConverter
            {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value==null)
            {
                value = 0;
            }
            int integer = (int)value;
            if (integer == int.Parse(parameter.ToString()))
                return true;
            else
                return false;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            return parameter;
        }
    }
}


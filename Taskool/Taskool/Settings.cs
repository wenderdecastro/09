using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Taskool
{
    public static class Settings
    {
        public static Color corDeFundo;

        public static void mudarTodosOsFundos()
        {
            foreach (Form form in Application.OpenForms)
            {
                form.BackColor = corDeFundo;
            }
        }
        public static void mudarTodosOsFundos(Color cor)
        {
            corDeFundo = cor;
            foreach (Form form in Application.OpenForms)
            {
                form.BackColor = corDeFundo;
            }
        }
    }
}

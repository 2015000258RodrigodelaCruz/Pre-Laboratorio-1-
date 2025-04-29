using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

namespace Laboratorio_1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (textBox1.Text == "pepe123")
            {
                MessageBox.Show("Contraseña Correcta"); //El if evalua si la contraseña esta correcta
                Form2 crud = new Form2();               //Si es correcta se muestra la ventana 2
                crud.ShowDialog();
            }
            else
            {
                MessageBox.Show("Contraseña Incorrecta"); //En caso que no, se muestra este mensaje
                textBox1.Clear();
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Form3 cred = new Form3();                    //Ventana de Creditos
            cred.ShowDialog();
        }
    }
}

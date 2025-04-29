using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Laboratorio_1
{
    public partial class Form2 : Form
    {
        int codigo = 1;
        static int selecFila;
        public Form2()
        {
            InitializeComponent();
        }

        private void Form2_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            object[] datos = {
                textBox1.Text,
                textBox2.Text,
                textBox3.Text,
                textBox4.Text,
                textBox5.Text,                           //Se extraen los datos de los text box
                textBox6.Text,
                textBox7.Text,
                textBox8.Text,
                textBox9.Text,
                textBox10.Text,
                textBox11.Text,
            };

            dataGridView1.Rows.Add(datos);               //Se Agregan al Data Grid View
            codigo++;


            MessageBox.Show("Registrado", "colegio salesiano don bosco", MessageBoxButtons.OK, MessageBoxIcon.Information);

                                                       //Se muestra este mensaje para confirmar el registro
        }

        private void button2_Click(object sender, EventArgs e)
        {
            if (dataGridView1.RowCount != 0)
            {
                int indice = dataGridView1.CurrentRow.Index;
                dataGridView1.Rows[indice].Cells[0].Value = textBox1.Text;
                dataGridView1.Rows[indice].Cells[1].Value = textBox2.Text;
                dataGridView1.Rows[indice].Cells[2].Value = textBox3.Text;
                dataGridView1.Rows[indice].Cells[3].Value = textBox4.Text;             
                dataGridView1.Rows[indice].Cells[4].Value = textBox5.Text;         //Esta parte del codigo se encarga de la mofificacion
                dataGridView1.Rows[indice].Cells[5].Value = textBox6.Text;
                dataGridView1.Rows[indice].Cells[6].Value = textBox7.Text;
                dataGridView1.Rows[indice].Cells[7].Value = textBox8.Text;
                dataGridView1.Rows[indice].Cells[8].Value = textBox9.Text;
                dataGridView1.Rows[indice].Cells[9].Value = textBox10.Text;
                dataGridView1.Rows[indice].Cells[10].Value = textBox11.Text;

                MessageBox.Show("Modificado");                                //Se muestra este mensaje para confirmar la modificacion
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            try
            {
                if (selecFila >= 0)
                    dataGridView1.Rows.RemoveAt(selecFila);
                else
                    MessageBox.Show("Eliminado", "Colegio Don Bosco", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            catch (Exception)
            {
                MessageBox.Show("No hay nada seleccionado", "Colegio Don Bosco", MessageBoxButtons.OK, MessageBoxIcon.Error);

            }
        }
    }
    }

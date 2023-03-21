using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Loteria_wf.Classes;
using Loteria_wf.Models;

namespace Loteria_wf
{
    public partial class CardCreation : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                
            }
        }

        protected void btncreartablas_Click(object sender, EventArgs e)
        {
            // Guardamos el numero de tablas ingresada por el usuario
            int numberOfTables = Convert.ToInt32(numerotablas.Text);

            
            LotteryTableGenerator ltg = new LotteryTableGenerator();

            // Llamamos al metodo para generar las tablas de loteria
            List<AspNetLotteryTables> tables  = ltg.GenerateTables(numberOfTables);


            lblmsg.Text = "creado correctamente";

        }


    }
}
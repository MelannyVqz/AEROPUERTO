using AEROPUERTO.Logica;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AEROPUERTO.Tabs
{
    public partial class Salidas : System.Web.UI.Page
    {
        ManejoDatos manejodatos = new ManejoDatos();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Entradas_click(object sender, EventArgs e)
        {
            Dictionary<string, string> dic = new Dictionary<string, string>();
            dic.Add("FechaEntrada", Datebox.Text);
            dic.Add("NoVuelo", Vuelobox.Text);
            dic.Add("Cod_aeropuerto", codbox.Text);
            manejodatos.InsertarDato("Entradas", dic);
            Response.Redirect("Inicio.aspx");
        }
    }
}
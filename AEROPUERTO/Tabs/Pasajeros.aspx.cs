using AEROPUERTO.Logica;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AEROPUERTO.Tabs
{
    public partial class Pasajeros : System.Web.UI.Page
    {
        ManejoDatos manejodatos = new ManejoDatos();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void pasajero_click(object sender, EventArgs e)
        {
            Dictionary<string, string> dic = new Dictionary<string, string>();
            dic.Add("NumPasaporte", Numpasaportebox.Text);
            dic.Add("Nombre", Nombrebox.Text);
            dic.Add("Apellidos", Apellidosbox.Text);
            dic.Add("Nacionalidad", Nacionalidadbox.Text);
            manejodatos.InsertarDato("Pasajeros", dic);
            pasajeromensaje.Text = "Usuario registrado con exito";
            string cedula = Session["Cedula"] as string;
            pasajeromensaje.Visible = true;
            Thread.Sleep(3000);
            Response.Redirect("Inicio.aspx");
        }

    }
}
using System;
using AEROPUERTO.Logica;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AEROPUERTO.Tabs
{
    public partial class Login : System.Web.UI.Page
    {
        ManejoDatos manejodatos = new ManejoDatos();

        protected void Page_Load(object sender, EventArgs e)

        {

        }
        //probar con Cedula 117700250 Password 123
        protected void Entrar_click(object sender, EventArgs e)
        {
            bool existendatos = manejodatos.checkear_credenciales(cedula_box.Text, password_box.Text);
            if (existendatos)
            {
                Session["Cedula"] = cedula_box;
                Response.Redirect("Inicio.aspx");
            }
            else
            {
                login_mensaje.Text = "Usuario invalido";
            }

        }

    }
}
using AEROPUERTO.Logica;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AEROPUERTO.Tabs
{
    public partial class Signin : System.Web.UI.Page
    {
        ManejoDatos manejodatos = new ManejoDatos();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Registrar_click(object sender, EventArgs e)
        {
            try
            {

                if (password_sign.Text == password2_sign.Text & password_sign.Text != "")
                {
                    Dictionary<string, string> dic = new Dictionary<string, string>();
                    dic.Add("Cedula", cedula_sign.Text);
                    dic.Add("Password", password_sign.Text);
                    manejodatos.InsertarDato("LOGIN", dic);
                    Sign_mensaje.Text = "Usuario registrado con exito";
                    Session["Cedula"] = cedula_sign;
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    Sign_mensaje.Text = "Datos no coinciden, favor reintentar";

                }

            }
            catch (Exception ex) { Sign_mensaje.Text = "Usuario ya existe"; }
        }
    }
}
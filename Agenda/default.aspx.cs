using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Dominio;

namespace Agenda
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {


            if (txtNumero.Text=="" || txtEmail.Text =="" || txtNombre.Text=="" )
            {
                lblAlerta.Text = "";
                lblAlerta.Text = "Todos los campos son obligaorios";
                lblAlerta.CssClass = "";
                lblAlerta.CssClass = "h6 alert alert-danger";
                lblAlerta.Visible = true;
            }
            else
            {

                Contacto nuevo = new Contacto();
                nuevo.nombre = txtNombre.Text;
                nuevo.numero = txtNumero.Text;
                nuevo.email = txtEmail.Text;


                ContactoNegocio negocio = new ContactoNegocio();
                negocio.agregar(nuevo);

                txtEmail.Text = "";
                txtNombre.Text = "";
                txtNumero.Text = "";

                lblAlerta.Text = "";
                lblAlerta.Text = "Contacto agregado con exito";
                lblAlerta.CssClass = "";
                lblAlerta.CssClass = "h6 alert alert-success";
                lblAlerta.Visible = true;
            }
        }

        protected void btnLista_Click(object sender, EventArgs e)
        {
            Response.Redirect("lista.aspx",false);
        }
    }
}
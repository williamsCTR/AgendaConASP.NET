using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace Agenda
{
    public partial class lista : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ContactoNegocio negocio = new ContactoNegocio();
            dgvContactos.DataSource = negocio.listar();
            dgvContactos.DataBind();
        }

        protected void dgvAutos_SelectedIndexChanged(object sender, EventArgs e)
        {
            var id = dgvContactos.SelectedDataKey.Value.ToString();

            ContactoNegocio negocio = new ContactoNegocio();
            negocio.elimnar(int.Parse(id));
            Response.Redirect("notificacion.aspx",false);
        }
    }
}
using BD_Hotel;
using BD_Hotel.BBL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ListaTipoHabitacion : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
            CargarLista();
    }
    private void CargarLista()
    {
        try
        {
            List<TipoHabitacion> tipoHabitacion = TipoHabitacionBLL.GetTipoHabitacion();
            TipoHabitacionGridView.DataSource = tipoHabitacion;
            TipoHabitacionGridView.DataBind();
        }
        catch (Exception ex)
        {

        }
    }
    protected void TipoHabitacionGridView_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Eliminar")
        {
            try
            {
                int tipoHabitacionId = Convert.ToInt32(e.CommandArgument);
                TipoHabitacionBLL.EliminarTipoHabitacion(tipoHabitacionId);
                CargarLista();
            }
            catch (Exception ex)
            {
                ;
            }
        }

        if (e.CommandName == "Editar")
        {
            Response.Redirect("~/FormularioTipoHabitacion.aspx?id=" + e.CommandArgument.ToString());
        }
    }
}
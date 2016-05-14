using BD_Hotel;
using BD_Hotel.BBL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ListaHabitacion : System.Web.UI.Page
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
            List<Habitacion> habitacion = HabitacionBLL.GetHabitacion();
            HabitacionGridView.DataSource = habitacion;
            HabitacionGridView.DataBind();
        }
        catch (Exception ex)
        {

        }
    }
    protected void HabitacionGridView_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Eliminar")
        {
            try
            {
                int habitacionId = Convert.ToInt32(e.CommandArgument);
                HabitacionBLL.EliminarHabitacion(habitacionId);
                CargarLista();
            }
            catch (Exception ex)
            {
                ;
            }
        }

        if (e.CommandName == "Editar")
        {
            Response.Redirect("~/FormularioHabitacion.aspx?id=" + e.CommandArgument.ToString());
        }
    }
}
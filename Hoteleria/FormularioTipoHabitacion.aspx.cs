using BD_Hotel;
using BD_Hotel.BBL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FormularioTipoHabitacion : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
            return;

        string strId = Request.QueryString["id"];
        if (string.IsNullOrEmpty(strId))
            return;
        try
        {
            int habitacionId = Convert.ToInt32(strId);
            TipoHabitacion obj = TipoHabitacionBLL.GetTipoHabitacionById(habitacionId);

            nombreTextBox.Text = obj.nombre;
            descripcionTextBox.Text = obj.descripcion;   
            TipoHabitacionIdHiddenField.Value = strId;
        }
        catch (Exception ex)
        {

        }
    }

    protected void SaveButtonn_Click(object sender, EventArgs e)
    {
        try
        {
            ErrorPanel.Visible = false;
            int habitacion = Convert.ToInt32(TipoHabitacionIdHiddenField.Value);
            TipoHabitacion obj = new TipoHabitacion()
            {
                tipoHabitacionId=habitacion,
                nombre=nombreTextBox.Text,
                descripcion=descripcionTextBox.Text

            };

            if (habitacion == 0)
                TipoHabitacionBLL.InsertarTipoHabitacion(obj);
            else
                TipoHabitacionBLL.ActualizarTipoHabitacion(obj);
        }
        catch (Exception ex)
        {
            ErrorPanel.Visible = true;
            return;
        }

        Response.Redirect("~/ListaTipoHabitacion.aspx");
    }
}
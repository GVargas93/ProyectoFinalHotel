using BD_Hotel;
using BD_Hotel.BBL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FormularioHabitacion : System.Web.UI.Page
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
            Habitacion obj = HabitacionBLL.GetHabitacionById(habitacionId);

            precioTextBox.Text = Convert.ToString(obj.precio);
            numeroCamasTextBox.Text = obj.numeroCamas;
            estadoTextBox.Text = obj.estado;
            observacionTextBox.Text = obj.observacion;
            TipoTextBox.Text = Convert.ToString(obj.tipoHabitacion);
            HotelTextBox.Text = Convert.ToString(obj.hotel);

            //DropDownListTipoHabitacion.SelectedValue = Convert.ToString(obj.tipoHabitacion);
            //DropDownListHotel.SelectedValue = Convert.ToString(obj.hotel);

            HabitacionIdHiddenField.Value = strId;
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
            int habitacion = Convert.ToInt32(HabitacionIdHiddenField.Value);
            Habitacion obj = new Habitacion()
            {
                habitacionId=habitacion,
                precio = Convert.ToInt32(precioTextBox.Text),
                numeroCamas=numeroCamasTextBox.Text,
                estado=estadoTextBox.Text,
                observacion = observacionTextBox.Text,
                tipoHabitacion=Convert.ToInt32(TipoTextBox.Text),
                hotel=Convert.ToInt32(HotelTextBox.Text)
                //,
                //tipoHabitacion = Convert.ToInt32(DropDownListTipoHabitacion.SelectedValue),
                //hotel = Convert.ToInt32(DropDownListHotel.SelectedValue)

            };

            if (habitacion == 0)
                HabitacionBLL.InsertarHabitacion(obj);
            else
                HabitacionBLL.ActualizarHabitacion(obj);
        }
        catch (Exception ex)
        {
            ErrorPanel.Visible = true;
            return;
        }

        Response.Redirect("~/ListaHabitacion.aspx");
    }


}
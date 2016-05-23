
using BD_Hotel;
using BD_Hotel.BBL;
using System;
using System.Collections.Generic;
using System.Web.UI.WebControls;

public partial class Estadia : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)


            if (IsPostBack)
                return;
        string stringid = Request.QueryString["id"];
        if (string.IsNullOrEmpty(stringid))
            return;
        try
        {
            int estadia_id = Convert.ToInt32(stringid);
            Estadias obj = EstadiaBLL.getEstadiaById(estadia_id);
            llegada.SelectedDate = Convert.ToDateTime(obj.fechaLlegada);
            salida.SelectedDate = Convert.ToDateTime(obj.fechaSalida);


            estadiaidhiddenfield.Value = stringid;
        }
        catch (Exception ex)
        {

        }

    }
    private void CargarLista()
    {
        try
        {
            List<Estadias> cliente = EstadiaBLL.GetData();
            EstadiaGridView.DataSource = cliente;
            EstadiaGridView.DataBind();


        }
        catch (Exception ex)
        {

        }
    }
    protected void botonguardar_Click(object sender, EventArgs e)
    {
        try
        {
            Error.Visible = false;

            int estadia_id = Convert.ToInt32(estadiaidhiddenfield.Value);
            Estadias obj = new Estadias()
            {

                ///  Calendar1.SelectedDate = Convert.ToDateTime(obj.fechaHora);

                estadia_id = estadia_id,
                fechaLlegada = llegada.SelectedDate.ToString("dd/MM/yyyy"),
                fechaSalida = salida.SelectedDate.ToString("dd/MM/yyyy"),
                fkClienteiD = Convert.ToInt32(DropDownList1.SelectedValue)





            };
            if (estadia_id == 0)
                EstadiaBLL.Ins_Estadia(obj);
            else
                EstadiaBLL.Upd_Estadia(obj);
        }
        catch (Exception ex)
        {
            Error.Visible = true;
            return;
        }
        Response.Redirect("~/Estadia.aspx");
    }

    protected void EstadiaGridView_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Eliminar")
        {
            try
            {
                int estadia_id = Convert.ToInt32(e.CommandArgument);
                EstadiaBLL.Drop_Estadias(estadia_id);
                CargarLista();
            }
            catch (Exception ex)
            {

            }
        }
        if (e.CommandName == "Editar")
        {
            Response.Redirect("~/Estadia.aspx?id=" + e.CommandArgument.ToString());

        }
    }


}

















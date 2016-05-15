using BD_Hotel;
using BD_Hotel.BBL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cliente : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            CargarLista();

        if (IsPostBack)
            return;
        string stringid = Request.QueryString["id"];
        if (string.IsNullOrEmpty(stringid))
            return;
        try
        {
            int cliente_id = Convert.ToInt32(stringid);
            Clientes obj = ClienteBBL.GetDataByCliente(cliente_id);
            NombreCliente.Text = obj.nombre;
            Apellido.Text = obj.apellido;
            Direccio.Text = obj.direccion;
            TelefonoTextbox.Text = obj.telefono;
            

            clienteidhiddenfield.Value = stringid;
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

            int cliente_id = Convert.ToInt32(clienteidhiddenfield.Value);
            Clientes obj = new Clientes()
            {
                clientes_id = cliente_id,
                nombre = NombreCliente.Text,
                apellido = Apellido.Text,
                direccion = Direccio.Text,
                telefono = TelefonoTextbox.Text,
                tipocliente = Convert.ToInt32(DropDownList1.SelectedValue)



            };
            if (cliente_id == 0)
                ClienteBBL.Ins_Cliente(obj);
            else
                ClienteBBL.Upd_Cliente(obj);
        }
        catch (Exception ex)
        {
            Error.Visible = true;
            return;
        }
        Response.Redirect("~/Cliente.aspx");
    }
    private void CargarLista()
    {
        try
        {
            List<Clientes> cliente = ClienteBBL.GetData();
            ClienteGridView.DataSource = cliente;
            ClienteGridView.DataBind();


        }
        catch (Exception ex)
        {

        }
    }
    protected void ClienteGridView_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Eliminar")
        {
            try
            {
                int cliente_id = Convert.ToInt32(e.CommandArgument);
                ClienteBBL.Drop_Cliente(cliente_id);
                CargarLista();
            }
            catch (Exception ex)
            {

            }
        }
        if (e.CommandName == "Editar")
        {
            Response.Redirect("~/Cliente.aspx?id=" + e.CommandArgument.ToString());

        }
    }
}
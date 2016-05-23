<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FormularioTipoHabitacion.aspx.cs" Inherits="FormularioTipoHabitacion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">

    <section class="row">
        <div class="col-md-6">

            <asp:Panel ID="ErrorPanel" runat="server" Visible="false"
                CssClass="alert alert-danger" role="alert">
                Error al Guardar el tipo de Habitacion
            </asp:Panel>


            <div class="form-group">
                <label>nombre</label>
                <asp:TextBox ID="nombreTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server"
                    ControlToValidate="nombreTextBox"
                    Display="Dynamic"
                    ForeColor="Red"
                    ValidationGroup="tipoHabitacion"
                    ErrorMessage="Debe ingresar el nombre">
                </asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <label>descripcion</label>
                <asp:TextBox ID="descripcionTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server"
                    ControlToValidate="descripcionTextBox"
                    Display="Dynamic"
                    ForeColor="Red"
                    ValidationGroup="tipoHabitacion"
                    ErrorMessage="Debe ingresar el descripcion">
                </asp:RequiredFieldValidator>
            </div>


            <br />


            <asp:LinkButton ID="SaveButtonn" runat="server"
                CssClass="btn btn-primary"
                ValidationGroup="tipoHabitacion"
                OnClick="SaveButtonn_Click">
                Guardar
            </asp:LinkButton>
            <asp:HyperLink runat="server" CssClass="btn"
                NavigateUrl="~/ListaTipoHabitacion.aspx">
                Cancelar
            </asp:HyperLink>

            <asp:HiddenField ID="TipoHabitacionIdHiddenField" runat="server"
                Value="0" />
        </div>
    </section>

</asp:Content>


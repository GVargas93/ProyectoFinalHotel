<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ListaTipoHabitacion.aspx.cs" Inherits="ListaTipoHabitacion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">


        <section class="row">
            <div class="col-md-12">

                <asp:HyperLink runat="server" NavigateUrl="~/FormularioTipoHabitacion.aspx"
                    CssClass="btn btn-primary">
                    Crear Tipo Habitacion
                </asp:HyperLink>
           
                <br /><br />

                <asp:GridView ID="TipoHabitacionGridView" runat="server"
                    CssClass="table" GridLines="None"
                    AutoGenerateColumns="false"
                    OnRowCommand="TipoHabitacionGridView_RowCommand">

                    <Columns>

                        <asp:TemplateField HeaderText="Editar">
                            <ItemTemplate>
                                <asp:LinkButton ID="EditButton" runat="server" CommandName="Editar"
                                    CommandArgument='<%# Eval("tipoHabitacionId") %>'>
                                    <i class="glyphicon glyphicon-pencil"></i>
                                </asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Eliminar">
                            <ItemTemplate>
                                <asp:LinkButton ID="DeleteButton" runat="server" CommandName="Eliminar"
                                    OnClientClick="return confirm('Esta seguro que desea eliminar el tipo de habitacion seleccionado?')"
                                    CommandArgument='<%# Eval("tipoHabitacionId") %>'>
                                    <i class="glyphicon glyphicon-remove"></i>
                                </asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>

                    <asp:BoundField DataField="nombre" HeaderText="nombre" />
                    <asp:BoundField DataField="descripcion" HeaderText="descripcion" />
                    
                </Columns>
            </asp:GridView>
        </div>
    </section>

</asp:Content>


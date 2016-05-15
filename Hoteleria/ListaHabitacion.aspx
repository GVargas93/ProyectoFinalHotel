<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ListaHabitacion.aspx.cs" Inherits="ListaHabitacion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">

    <section class="row">
            <div class="col-md-12">

                <asp:HyperLink runat="server" NavigateUrl="~/FormularioHabitacion.aspx"
                    CssClass="btn btn-primary">
                    Crear Habitacion
                </asp:HyperLink>
           
                <br /><br />

                <asp:GridView ID="HabitacionGridView" runat="server"
                    CssClass="table" GridLines="None"
                    AutoGenerateColumns="false"
                    OnRowCommand="HabitacionGridView_RowCommand">

                    <Columns>

                        <asp:TemplateField HeaderText="Editar">
                            <ItemTemplate>
                                <asp:LinkButton ID="EditButton" runat="server" CommandName="Editar"
                                    CommandArgument='<%# Eval("habitacionId") %>'>
                                    <i class="glyphicon glyphicon-pencil"></i>
                                </asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Eliminar">
                            <ItemTemplate>
                                <asp:LinkButton ID="DeleteButton" runat="server" CommandName="Eliminar"
                                    OnClientClick="return confirm('Esta seguro que desea eliminar el habitacion seleccionado?')"
                                    CommandArgument='<%# Eval("habitacionId") %>'>
                                    <i class="glyphicon glyphicon-remove"></i>
                                </asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>

                    <asp:BoundField DataField="precio" HeaderText="precio" />
                    <asp:BoundField DataField="numeroCamas" HeaderText="numeroCamas" />
                    <asp:BoundField DataField="estado" HeaderText="estado" />
                    <asp:BoundField DataField="observacion" HeaderText="observacion" />
                    <asp:BoundField DataField="tipoHabitacion" HeaderText="tipoHabitacion" />
                    <asp:BoundField DataField="hotel" HeaderText="hotel" />
                    


                </Columns>
            </asp:GridView>
        </div>
    </section>


</asp:Content>


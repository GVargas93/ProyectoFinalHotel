<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Estadia.aspx.cs" Inherits="Estadia" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <section class="row">
        <div class="col-md-6" itemid="u">
            <asp:Panel ID="Error" runat="server" Visible="false" CssClass="alert alert-danger" role="alert">
            </asp:Panel>
            <div class="form-group">
                <asp:Label ID="clientes" runat="server" Text="Cliente" ForeColor="Red"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="nombre" DataValueField="Cliente_iD">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BD_HotelConnectionString %>" SelectCommand="SELECT [Cliente_iD], [nombre] FROM [DML].[Tbl_Cliente]"></asp:SqlDataSource>
            </div>

            <div class="form-group">
                <label>Fecha llegada</label>
                <asp:Calendar ID="llegada" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                    <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                    <TodayDayStyle BackColor="#CCCCCC" />
                </asp:Calendar>
            </div>
            <div class="form-group">
                <label>Fecha salida</label>
                <asp:Calendar ID="salida" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                    <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                    <TodayDayStyle BackColor="#CCCCCC" />
                </asp:Calendar>
            </div>


            <div class="col-md-12">
                <asp:GridView ID="EstadiaGridView" runat="server"
                    CssClass="table" GridLines="None"
                    AutoGenerateColumns="false"
                    OnRowCommand="EstadiaGridView_RowCommand">
                    <Columns>
                        <asp:TemplateField HeaderText="Editar">
                            <ItemTemplate>
                                <asp:LinkButton ID="EditButton" runat="server" CommandName="Editar"
                                    CommandArgument='<%# Eval("estadia_id") %>'>
                                <i class="glyphicon glyphicon-pencil"></i>
                                </asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Eliminar">
                            <ItemTemplate>
                                <asp:LinkButton ID="DeleteButton" runat="server" CommandName="Eliminar"
                                    CommandArgument='<%# Eval("estadia_id") %>'>
                                <i class="glyphicon glyphicon-remove"></i>
                                </asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="fechaLlegada" HeaderText="fecha de llegada" />
                        <asp:BoundField DataField="fechaSalida" HeaderText="fecha final " />
                        <asp:BoundField DataField="fkClienteiD" HeaderText="cliente" />

                    </Columns>

                </asp:GridView>
            </div>

            <asp:LinkButton ID="botonguardar" runat="server"
                CssClass="btn btn-primary"
                ValidationGroup="Estadia"
                OnClick="botonguardar_Click">
                
                guardar
            </asp:LinkButton>
            <asp:HyperLink runat="server" CssClass="btn btn-primary"
                NavigateUrl="Estadia.aspx">
                cancelar
            </asp:HyperLink>
            <asp:HiddenField ID="estadiaidhiddenfield" runat="server"
                Value="0" />

        </div>
    </section>
</asp:Content>


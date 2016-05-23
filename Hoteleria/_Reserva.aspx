<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="_Reserva.aspx.cs" Inherits="_Reserva" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">







    <!-- content -->
    <div id="content">
        <div class="wrapper">
            <div class="aside maxheight">
                <!-- box begin -->
                <div class="box maxheight">
                    <div class="inner">
                        <!-- xxxxxxxxxxxxxxxxxxxxxxxxx fecha xxxxxxxxxxxxxxxxxxxxxxxxx  -->
                        <h3>Reserva:</h3>
                        <form action="#" id="reservation-form">
                            <fieldset>
                                <div class="field">
                                    <label>Registrarse:</label>
                                    <select class="select1">
                                        <option>17</option>
                                    </select>
                                    <select class="select2">
                                        <option>de mayo de 2016</option>
                                    </select>
                                </div>
                                <div class="field">
                                    <label>Revisa:</label>
                                    <select class="select1">
                                        <option>18</option>
                                    </select>
                                    <select class="select2">
                                        <option>de mayo de 2016</option>
                                    </select>
                                </div>
                                <br>
                                <div class="field">
                                    Personas: &nbsp;
                <input type="text" value="1" />
                                    &nbsp; &nbsp; &nbsp; &nbsp; Habitaciones:&nbsp;
                <input type="text" value="1" />
                                </div>
                                <div class="button"><span><span><a href="#">VER DISPONIBILIDAD</a></span></span></div>
                            </fieldset>
                        </form>
                        <!-- xxxxxxxxxxxxxxxxxxxxxxxxx fecha xxxxxxxxxxxxxxxxxxxxxxxxx  -->
                    </div>
                </div>
                <!-- box end -->
            </div>
            <div class="content">
                <div class="indent">
                    <h2>Nuestra ubicación</h2>
                    <img class="img-indent png" alt="" src="images/5page-img1.png" />
                    <div class="extra-wrap">
                        <p class="alt-top">Nuestro hotel está situado en la parte más espectacular de Praga - rodeado de tiendas, restaurantes y tiendas de lujo.</p>
                        <p>Por favor, siéntase libre de venir a visitarnos en la siguiente dirección:</p>


                        <h3>DIRECCIÓN</h3>
                        <p>AV. SAN MARTÍN Y 4TO. ANILLO. EQUIPETROL NORTE., AVENIDA SAN MARTIN, SANTA CRUZ DE LA SIERRA.</p>
                        <dl class="contacts-list">
                            <dt>E-MAIL:</dt>
                            <dd>HOTEL@CAMINOREAL.COM.BO</dd>
                            <dt>TELEFONOS</dt>
                            <dd>(+591) 33-56-23-23</dd>
                            <dd>(+591) 33-54-34-23</dd>
                        </dl>


                    </div>
                    <div class="clear"></div>
                </div>
            </div>
        </div>
    </div>





</asp:Content>


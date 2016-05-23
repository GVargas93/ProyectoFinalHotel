<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="_Inicio.aspx.cs" Inherits="_Inicio" %>

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
                    </div>
                </div>
                <!-- box end -->
            </div>
            <div class="content">
                <div class="indent">
                    <h2>Hotel Siles está feliz de darle la bienvenida!</h2>
                    <img class="img-indent png" alt="" src="images/1page-img1.png" />
                    <p class="alt-top">
                        Venga solo o traer a su familia con usted, quédese aquí por una noche o por semana, estancia aquí en viaje de negocios o en algún tipo de conferencia - en cualquier caso, nuestro hotel es la mejor variante posible.
                    </p>
                    No dude en ponerse en contacto con nosotros en cualquier momento en caso de tener alguna pregunta o preocupación.
          <div class="clear"></div>
                    <div class="line-hor"></div>
                    <div class="wrapper line-ver">
                        <div class="col-1">
                            <h3>Ofertas especiales</h3>
                            <ul>
                                <li>GRATIS televisor de pantalla panorámica</li>
                                <li>50% de descuento para el servicio de Restaurante</li>
                                <li>30% de descuento por 3 días + pedidos</li>
                                <li>Bebidas gratis y bebidas en las habitaciones</li>
                                <li>recuerdos exclusivos</li>
                            </ul>
                            <div class="button"><span><span><a href="#">¡ORDENAR AHORA!</a></span></span></div>
                        </div>
                        <div class="col-2">
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
                    </div>
                </div>
            </div>
        </div>
    </div>


</asp:Content>


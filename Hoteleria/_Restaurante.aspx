<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="_Restaurante.aspx.cs" Inherits="_Restaurante" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">





    <div id="content">
        <div class="gallery">
            <ul>
                <li><a href="#">
                    <img alt="" src="images/2page-img1.jpg" /></a></li>
                <li><a href="#">
                    <img alt="" src="images/2page-img2.jpg" /></a></li>
                <li><a href="#">
                    <img alt="" src="images/2page-img3.jpg" /></a></li>
                <li><a href="#">
                    <img alt="" src="images/2page-img4.jpg" /></a></li>
                <li><a href="#">
                    <img alt="" src="images/2page-img5.jpg" /></a></li>
                <li><a href="#">
                    <img alt="" src="images/2page-img6.jpg" /></a></li>
            </ul>
        </div>
        <div class="container">
            <div class="aside maxheight">
                <!-- box begin -->
                <div class="box maxheight">
                    <div class="inner">
                        <h3>Menú</h3>
                        <ul class="list3">
                            <li><a href="#">Promociones especiales</a></li>
                            <li><a href="#">Desayuno</a></li>
                            <li><a href="#">Almuerzo</a></li>
                            <li><a href="#">Cena</a></li>
                            <li><a href="#">Bebida</a></li>
                            <li><a href="#">Postre</a></li>
                            <li><a href="#">Italiano</a></li>
                            <li><a href="#">Francés</a></li>
                            <li><a href="#">Alemán</a></li>

                        </ul>
                        <div class="button"><span><span><a href="#">HACER RESERVACION</a></span></span></div>
                    </div>
                </div>
                <!-- box end -->
            </div>
            <div class="content">
                <div class="indent">
                    <h2>Menú destacados de hoy</h2>
                    <img class="img-indent png alt" alt="" src="images/4page-img1.png" />
                    <div class="extra-wrap">
                        <h5>Foie gras!</h5>
                        <ul class="list2">
                            <li>Agradable y sabroso!</li>
                            <li>A base de ingredientes franceses!</li>
                            <li>Cocinado por el chef italiano!</li>
                            <li>Otorgado por asociación del chef Mark!</li>
                            <li>Demostrado ser bueno para su salud!</li>
                        </ul>
                        <div class="aligncenter"><strong class="txt2">SÓLO AL POR MAYOR $ 19!</strong></div>
                    </div>
                </div>
            </div>
            <div class="clear"></div>
        </div>
    </div>



</asp:Content>


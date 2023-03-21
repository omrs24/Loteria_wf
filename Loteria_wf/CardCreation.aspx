<%@ Page Title="¡Loteria!" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CardCreation.aspx.cs" Inherits="Loteria_wf.CardCreation" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <header class="header">
        <section id="landing" class="vh-100 d-flex align-items-center justify-content-center" data-bs-parallax-bg="true" data-bs-parallax-bg-speed="10">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <h1 class="display-3">Bienvenido a la Lotería</h1>
                        <p class="lead">La lotería es un juego de azar muy popular en México y en todo el mundo. ¡Crea tus propias tablas de lotería y diviértete con tus amigos y familiares!</p>
                        <a href="#form" class="btn btn-primary btn-lg mt-3">Crear Tablas</a>
                    </div>
                </div>
            </div>
        </section>
    </header>

    <main class="container my-5">
      <!-- Título principal -->
      <h1 class="display-3 text-center mb-5">¡Juega a la lotería!</h1>
      <!-- Imagen de la lotería -->
      <img src="/Content/Images/1loteria.jpg" alt="Lotería" class="img-fluid mb-5">
      <!-- Información importante -->
      <p class="lead text-center">La lotería es un juego de azar muy popular en México. Consiste en un bonche de 54 cartas y un número indefinido de tablas con 16 de dichas cartas escogidas aleatoriamente. ¿Te animas a jugar?</p>
      <!-- Formulario para crear tablas -->
      
        <div class="col-md-6">
          <label for="numero-tablas" class="form-label">Número de tablas</label>
          <asp:TextBox  runat="server" ID="numerotablas" TextMode="Number" 
              ClientIDMode="Static" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-md-6 d-flex align-items-center justify-content-center">
            <asp:Button runat="server" ID="btncreartablas"  Text="Crear tablas"
                CssClass="btn btn-primary" OnClick="btncreartablas_Click"/>
        </div>

        <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
    </main>

</asp:Content>


<%@ Page Title="Registro de Cartas" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CardRegister.aspx.cs" Inherits="Loteria_wf._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <section class="row" aria-labelledby="cardform">
            <div class="container mt-4">
                <div class="mb-3">
                    <label for="nombreCarta" class="form-label">Nombre de la carta</label>
                    <input type="text" class="form-control" id="nombreCarta" name="nombreCarta" required>
                </div>
                <div class="mb-3">
                    <label for="descripcionCarta" class="form-label">Descripción de la carta</label>
                    <textarea class="form-control" id="descripcionCarta" name="descripcionCarta" rows="3" required></textarea>
                </div>
                <div class="mb-3">
                    <label for="imagenCarta" class="form-label">Imagen de la carta</label>
                    <input class="form-control" type="file" id="imagenCarta" name="imagenCarta" accept="image/*" required>
                    <img id="preview" style="max-width: 200px; margin-top: 10px;">
                </div>
                <div class="mb-3">
                    <label for="imagenExistente" class="form-label">Seleccionar imagen existente</label>
                    <select class="form-select" id="imagenExistente" name="imagenExistente">
                        <option value="">Seleccione una imagen</option>
                        <option value="img1.jpg">Imagen 1</option>
                    </select>
                </div>
                <button type="submit" class="btn btn-primary">Registrar</button>


                <script>
                    const imagenCarta = document.querySelector('#imagenCarta');
                    const preview = document.querySelector('#preview');

                    imagenCarta.addEventListener('change', () => {
                        const file = imagenCarta.files[0];
                        const reader = new FileReader();

                        reader.addEventListener('load', () => {
                            preview.setAttribute('src', reader.result);
                        });

                        reader.readAsDataURL(file);
                    });
                </script>
            </div>
        </section>

    </main>

</asp:Content>


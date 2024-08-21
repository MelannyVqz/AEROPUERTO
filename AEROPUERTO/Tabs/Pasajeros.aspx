<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pasajeros.aspx.cs" Inherits="AEROPUERTO.Tabs.Pasajeros" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registro de Pasajeros</title>
    <style>
        body {
            background-color: #1b1b1b; /* Fondo oscuro */
            color: #ffffff; /* Texto blanco */
            font-family: Arial, sans-serif;
            padding: 20px;
        }

        h2 {
            color: #00ffcc; /* Tono neón */
            text-align: center;
        }

        label {
            color: #ffcc00; /* Otro tono neón */
            font-weight: bold;
        }

        input[type="text"] {
            border: 2px solid #00ffcc; /* Borde neón */
            padding: 10px;
            margin-top: 5px;
            margin-bottom: 15px;
            width: 300px;
            background-color: #333333; /* Fondo oscuro para las cajas de texto */
            color: #ffffff; /* Texto blanco */
            transition: border-color 0.3s;
        }

        input[type="text"]:focus {
            border-color: #ff00ff; /* Color de borde al enfocar */
            outline: none; /* Sin contorno al enfocar */
        }

        .btn {
            background-color: #ff00ff; /* Botón neón */
            color: #ffffff; /* Texto blanco */
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            transition: background-color 0.3s, box-shadow 0.3s;
            border-radius: 5px; /* Bordes redondeados */
            font-size: 1em; /* Tamaño de fuente */
            margin-top: 15px; /* Margen superior */
        }

        .btn:hover {
            background-color: #00ccff; /* Cambia el color al pasar el mouse */
            box-shadow: 0 0 15px #00ffcc; /* Sombra al pasar el mouse */
        }

        #pasajeromensaje {
            margin-top: 15px;
            color: #ffcc00; /* Color del mensaje */
            font-weight: bold;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Por favor registre los datos de los pasajeros</h2>
            <label for="Numpasaportebox">Número de pasaporte</label>
            <br />
            <asp:TextBox ID="Numpasaportebox" runat="server"></asp:TextBox>
            <br />
            <label for="Nombrebox">Nombre</label>
            <br />
            <asp:TextBox ID="Nombrebox" runat="server"></asp:TextBox>
            <br />
            <label for="Apellidosbox">Apellidos</label>
            <br />
            <asp:TextBox ID="Apellidosbox" runat="server"></asp:TextBox>
            <br />
            <label for="Nacionalidadbox">Nacionalidad</label>
            <br />
            <asp:TextBox ID="Nacionalidadbox" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" CssClass="btn" Text="Registrar entrada" OnClick="pasajero_click" />
            <br />
            <asp:Label ID="pasajeromensaje" runat="server" Text="" Visible="true"></asp:Label>
        </div>
    </form>
</body>
</html>

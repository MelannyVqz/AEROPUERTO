<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Entradas.aspx.cs" Inherits="AEROPUERTO.Tabs.Entradas" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registrar Entrada</title>
    <style>
        body {
            background-color: #1b1b1b; /* Fondo oscuro */
            color: #ffffff; /* Texto blanco */
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        div {
            text-align: center;
            background-color: #222222;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 0px 20px rgba(0, 255, 255, 0.6);
        }

        h1 {
            color: #00ffcc;
            font-size: 2em;
            margin-bottom: 20px;
            text-shadow: 0 0 10px #00ffcc;
        }

        label {
            color: #ffcc00;
            font-weight: bold;
        }

        input[type="text"] {
            width: 80%;
            padding: 10px;
            margin: 10px 0;
            border: none;
            border-radius: 5px;
            background-color: #333333;
            color: #ffffff;
            font-size: 1em;
            text-shadow: 0 0 5px #00ffcc;
            box-shadow: 0 0 10px rgba(0, 255, 255, 0.3);
            transition: box-shadow 0.3s ease-in-out;
        }

        input[type="text"]:focus {
            outline: none;
            box-shadow: 0 0 20px #00ffcc;
        }

        .btn {
            background-color: #ff00ff;
            color: #ffffff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            font-size: 1em;
            cursor: pointer;
            text-shadow: 0 0 5px #ff00ff;
            box-shadow: 0 0 15px rgba(255, 0, 255, 0.7);
            transition: background-color 0.3s ease-in-out, box-shadow 0.3s ease-in-out;
        }

        .btn:hover {
            background-color: #ff66ff;
            box-shadow: 0 0 20px #ff00ff;
        }

        .btn:active {
            background-color: #cc00cc;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Registrar Entrada</h1>
            <label for="Datebox">Fecha:</label>
            <asp:TextBox ID="Datebox" runat="server"></asp:TextBox>
            <br />
            <label for="Vuelobox">NoVuelo:</label>
            <asp:TextBox ID="Vuelobox" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" CssClass="btn" Text="Registrar entrada" OnClick="Entradas_click" />
        </div>
    </form>
</body>
</html>

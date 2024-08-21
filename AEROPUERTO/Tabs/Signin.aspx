<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signin.aspx.cs" Inherits="AEROPUERTO.Tabs.Signin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registro</title>
    <link href="../CSS/LOG.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="signup-container">
            <h1 class="title">REGISTRAR</h1>
            <label for="cedula_sign">ID Empleado</label>
            <asp:TextBox ID="cedula_sign" runat="server" CssClass="input-box"></asp:TextBox>
            <label for="password_sign">Password</label>
            <asp:TextBox ID="password_sign" runat="server" CssClass="input-box" TextMode="Password"></asp:TextBox>
            <label for="password2_sign">Confirmar Password</label>
            <asp:TextBox ID="password2_sign" runat="server" CssClass="input-box" TextMode="Password"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" CssClass="btn" Text="Registrarme" OnClick="Registrar_click"/>
            <asp:Label ID="Sign_mensaje" runat="server" CssClass="message" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>

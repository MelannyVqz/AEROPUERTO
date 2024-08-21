<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AEROPUERTO.Tabs.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="../CSS/LOG.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-container">
            <h1 class="title">AEROPUERTO DE DUBAI</h1>
            <label for="cedula_box">ID Empleado</label>
            <asp:TextBox ID="cedula_box" runat="server" CssClass="input-box"></asp:TextBox>
            <label for="password_box">Password</label>
            <asp:TextBox ID="password_box" runat="server" CssClass="input-box" TextMode="Password"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" CssClass="btn" Text="Entrar" OnClick="Entrar_click"/>
            <asp:Label ID="login_mensaje" runat="server" CssClass="message" Text=""></asp:Label>
            <p>Registrar un nuevo empleado <asp:HyperLink ID="HyperLink1" runat="server" CssClass="link" NavigateUrl="~/Tabs/Signin.aspx">Registrar</asp:HyperLink></p>
        </div>
    </form>
</body>
</html>

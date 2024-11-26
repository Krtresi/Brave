<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Brave.User.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../UserTemplate/css/login.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="wrapper">
        <div id="message"></div>
        <form id="loginForm" action="/login" method="POST" enctype="multipart/form-data">
            <h1>Вхід</h1>
            <div class="input-box">
                <input type="text" name="username" placeholder="username" required>
                <i class="bx bxs-user"></i>
            </div>
            <div class="input-box">
                <input type="password" name="password" placeholder="Пароль" required>
                <i class="bx bxs-lock-alt"></i>
            </div>
            <div class="remember-forgot">
                <label><input type="checkbox">Запам'ятати мене</label>
                <a href="#">забули пароль?</a>
            </div>
            <button type="submit" class="btn">Вхід</button>
            <div class="register-link">
                <p>У вас ще немає акаунта? <a href="./registration.aspx">Реєстрація</a></p>
            </div>
        </form>
    </div>
</asp:Content>

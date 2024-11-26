<%@ Page Title="Registration" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="Brave.User.registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <!-- Якщо потрібно, можна додати стилі або інші мета-теги -->
    <link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../UserTemplate/css/register.css">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="wrapper">
        <form id="registrationForm" action="registration.aspx" method="POST" enctype="multipart/form-data">
            <h1>Реєстрація</h1>

            <div class="input-box">
                <div class="input-field">
                    <input type="text" name="fullName" id="nameInput" placeholder="Ім'я" required>
                    <i class="bx bxs-user"></i>
                </div>
            </div>

            <div class="input-box">
                <div class="input-field">
                    <input type="text" name="username" id="usernameInput" placeholder="Username" required>
                    <i class="bx bxs-user"></i>
                </div>
            </div>

            <div class="input-box">
                <div class="input-field">
                    <input type="tel" name="phone" id="phoneInput" placeholder="Номер телефону" required>
                    <i class="bx bxs-phone"></i>
                </div>
            </div>

            <div class="input-box">
                <div class="input-field">
                    <input type="email" name="email" id="emailInput" placeholder="Пошта" required>
                    <i class="bx bxs-envelope"></i>
                </div>
            </div>

            <div class="input-box">
                <div class="input-field">
                    <input type="password" name="password" id="passwordInput" placeholder="Пароль" required>
                    <i class="bx bxs-lock-alt"></i>
                </div>
            </div>

            <input type="submit" id="registBtn" value="Зареєструватися">
            <label><a href="./login.aspx">Already have an account?</a></label>
        </form>
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="pets.aspx.cs" Inherits="Brave.User.pets" %>
<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
       <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/824591db64.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="../UserTemplate/css/zboru.css">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="fond1">
    <div class="Levu">
        <img class="profile-pic" src="../UserTemplate/images/bla.jpg" alt="Зображення поста">
        <div class="na">
            <div class="post-header">
               
                <div class="username">URSA</div>
                <div class="post-footer" style="margin-left: auto;">
                    <span>06.04.2024</span>
                </div>
            </div>
            <p>Наша місія:  Формування у суспільстві етичного відношення до тварин, гуманне вирішення проблеми безпритульних тварин в Україні, дієві закони у сфері захисту тварин.</p>
            <a class="donate-btn" href="https://www.ursaua.com.ua/?gad_source=1&gclid=CjwKCAiA3ZC6BhBaEiwAeqfvyurxT7qGddjUhBRQafrcFrD03AHhztz9NN0iQwozKLFual4weM-GnBoCs2MQAvD_BwE">Перейти</a>
        </div>
    </div>
</div>

<div class="fond2">
    <div class="Comeback">
        <img class="profile-pic" src="../UserTemplate/images/em.jpg" alt="Зображення поста">
        <div class="na">
            <div class="post-header">
                
                <div class="username">"ДОМІВКА ВРЯТОВАНИХ ТВАРИН"</div>
                <div class="post-footer" style="margin-left: auto;">
                    <span>12.03.2024</span>
                </div>
            </div>
            <p>Їм час знайти дім
Прихистити це просто. Не лякайся тварин з притулку. Не купуй, прихисти, адже справжня дружба не продається!</p>
            <a class="donate-btn" href="https://send.monobank.ua/jar/9jGZi2UHSF">Перейти</a>
        </div>
    </div>
</div>

<div class="fond3">
    <div class="Prutyla">
        <img class="profile-pic" src="../UserTemplate/images/pet.jpg" alt="Зображення поста">
        <div class="na">
            <div class="post-header">
                
                <div class="username">ЛКП "ЛЕВ"</div>
                <div class="post-footer" style="margin-left: auto;">
                    <span>12.04.2024</span>
                </div>
            </div>
            <p>ВОНИ ТАКІ Ж, ЯК МИ – ПРИХИСТІТЬ ЇХ!</p>
            <a class="donate-btn" href="https://lkplev.com/">Перейти</a>
        </div>
    </div>
</div>
</asp:Content>

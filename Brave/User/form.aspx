<%@ Page Title="form" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="form.aspx.cs" Inherits="Brave.User.form" %>


<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="../UserTemplate/css/form.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&display=swap">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="Container">
        
            <h2> Розміщення оголошення</h2>
            <div class="content">
                <!-- Поля для категорії, назви, опису, фото та суми -->
                <div>
        <label for="category">Категорія</label>
        <select id="category" name="category" required onchange="toggleSumField()">
            <option value="Збір">Збір</option>
            <option value="Притулок для тварин">Притулок для тварин</option>
            <option value="Домівка для людей">Домівка для людей</option>
        </select>
    </div>

                <div class="content">
                    <div class="input-box">
                        <label for="name">Заголовок оголошення</label>
                        <input type="text" placeholder="Напишіть назву для оголошення" name="назва" required>
                    </div>

                    

                    <div class="input-box">
                        <label for="photos">Фото</label>
                        <input type="file" id="photos" name="фото" accept="image/*" required>
                    </div>

                    <div class="input-box">
                        <label for="name">Додайте опис</label>
                        <input type="text" placeholder="Опис" name="опис" required>
                    </div>
                    <div class="input-box sumField" id="sumField">
                        <label for="name">Необхідна сума</label>
                        <input type="text" placeholder="сума" name="сума">
                    </div>
                </div>
                <div class="button-container">
                    <asp:Button ID="SubmitButton" runat="server" Text="Розмістити" OnClick="SubmitButton_Click" />

                </div>
            </div>
        
    </div>
</asp:Content>



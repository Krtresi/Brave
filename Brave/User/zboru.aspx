<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="zboru.aspx.cs" Inherits="Brave.User.zboru" %>
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
        <img class="profile-pic" src="../UserTemplate/images/ss.jpg" alt="Зображення поста">
        <div class="na">
            <div class="post-header">
               
                <div class="username">Допоможи котикам!</div>
                <div class="post-footer" style="margin-left: auto;">
                    <span>06.04.2024</span>
                </div>
            </div>
            <p>Поруч з кожним героєм стоїть сім'я, і поруч з кожною сім'єю - ми, як спільнота, що віддає шану та підтримує тих, хто
                віддав своє життя за нашу свободу. Наш фонд - це джерело підтримки та вдячності для воїнів, які жертвують своїм
                комфортом для захисту нашого краю. Приєднуйтеся до нашої місії, допоможіть нам збирати кошти, які допоможуть забезпечити
                наших героїв всім необхідним у їхньому шляху до відновлення.</p>
            <a class="donate-btn" href="https://send.monobank.ua/jar/9jGZi2UHSF">Монобанк</a>
        </div>
    </div>
</div>

<div class="fond2">
    <div class="Comeback">
        <img class="profile-pic" src="../UserTemplate/images/aa.jpg" alt="Зображення поста">
        <div class="na">
            <div class="post-header">
                
                <div class="username">Збір на дрони!</div>
                <div class="post-footer" style="margin-left: auto;">
                    <span>12.03.2024</span>
                </div>
            </div>
            <p>Наші воїни - це незламні стовпи нації, які вирушають на передову, готові ризикувати всім заради нашої безпеки. Ми, в
                свою чергу, обіцяємо не залишати їх у самотності. Наш фонд - це обійма співчуття та підтримки, що огортають наших героїв
                у їхньому шляху до повноцінного відновлення. Разом ми зможемо зробити набагато більше, допомагаючи тим, хто завдав
                глибоких ран у ім'я нашої свободи.</p>
            <a class="donate-btn" href="https://send.monobank.ua/jar/9jGZi2UHSF">Монобанк</a>
        </div>
    </div>
</div>

<div class="fond3">
    <div class="Prutyla">
        <img class="profile-pic" src="../UserTemplate/images/9.jpeg" alt="Зображення поста">
        <div class="na">
            <div class="post-header">
                
                <div class="username">На помсту!</div>
                <div class="post-footer" style="margin-left: auto;">
                    <span>12.04.2024</span>
                </div>
            </div>
            <p>Відважність, сила та безкомпромісна відданість - це характеристики наших воїнів, які стоять на захисті нашої країни. У
                нашому фонді ми віддячуємо їм за ці якості, забезпечуючи необхідну допомогу та підтримку. З вашою допомогою ми можемо
                зробити більше: від відновлення поранених до надання психологічної підтримки. Приєднуйтеся до нас у великому ділі
                великих сердець.</p>
            <a class="donate-btn" href="https://send.monobank.ua/jar/9jGZi2UHSF">Монобанк</a>
        </div>
    </div>
</div>
    <asp:Repeater ID="RepeaterAdvertisements" runat="server">
    <ItemTemplate>
        <div class="advertisement">
            <img class="advertisement-photo" src="<%# Eval("PhotoPath") %>" alt="Фото">
            <h3 class="advertisement-title"><%# Eval("Title") %></h3>
            <p class="advertisement-description"><%# Eval("Description") %></p>
            <p class="advertisement-category">Категорія: <%# Eval("Category") %></p>
            
        </div>
    </ItemTemplate>
</asp:Repeater>




</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="psyco.aspx.cs" Inherits="Brave.User.psyco" %>
<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
        <link rel="stylesheet" type="text/css" href="mental.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&display=swap">
    <link rel="stylesheet" type="text/css" href="../layout/_Layout.css">
    
    <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Paytone+One&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
        rel="stylesheet">
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    
    <link rel="stylesheet" href="~/lib/bootstrap/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="~/css/site.css" asp-append-version="true" />
    <link rel="stylesheet" href="~/Rule.UI.styles.css" asp-append-version="true" />
    
    <link href='https://fonts.googleapis.com/css?family=Lato:100' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="font-awesome-4.6.3/css/font-awesome.min.css">
    <script src="https://kit.fontawesome.com/0c08b70a26.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../UserTemplate/css/mental.css">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    
    <div class="container">
    <section class="home" id="home">
        <div class="home-text">
            <h1> Психологічна допомога</h1>
            <p>Відновлюємо мир у серцях:</p>
            <p>психологічна допомога для тих, хто відчув наслідки війни.</p>
            
        </div>
    </section>

<section class="doctors" id="doctors">
    <div class="psyco">
        <img class="profile-pic" src="../UserTemplate/images/t.jpg" alt="Profile Picture">
        <div class="doctor-info">
            <h1>Марія Ковальчук</h1>
            <a>Я пропоную допомогу вашим дітям у розвитку емоційного та психічного благополуччя. Моя робота заснована на глибокому
            розумінні дитячої психології та використанні ефективних методів та технік, які допомагають дітям подолати стрес,
            розвивати емоційну інтелігенцію та зберігати психічне здоров'я.</a>
            <p>Спеціалізація: </p> 
            <a>дитячий психолог</a>
            <p>Номер телефону: </p>
            <a>+380967891647</a>
            <p>Вулиця: </p>
            <a>Вулиця Психологічна, 1</a>
        </div>
    </div>

    <div class="psyco">
        <img class="profile-p" src="../UserTemplate/images/d.jpg" alt="Profile Picture">
        <div class="doctor-in">
            <h1>Олександр Кравченко</h1>
            <a>Запрошую вас на сімейні консультації, де ми разом вивчимо динаміку вашої родини та знайдемо конструктивні способи
            вирішення конфліктів та підтримки кожного члена сім'ї. Моя мета - створити безпечне простір для відкритого спілкування
            та сприяти розвитку розуміння та взаємоповаги всередині сімейного кола.</a>
            <p>Спеціалізація: </p>
            <a>сімейний психолог</a>
            <p>Номер телефону: </p>
            <a>+380964792617</a>
            <p>Вулиця: </p>
            <a>Вулиця Психологічна, 1</a>
        </div>
    </div>

    <div class="psyco">
        <img class="profile-pi" src="../UserTemplate/images/tt.jpg" alt="Profile Picture">
        <div class="doctor-inf">
            <h1>Ірина Литвиненко</h1>
            <a>Я пропоную психологічну підтримку та консультації для військовослужбовців та їхніх родин. Моя робота спрямована на
            допомогу з вирішення психологічних труднощів, що виникають внаслідок служби, а також на розвиток стресостійкості,
            відновлення психічного здоров'я та підтримку адаптації до цивільного життя після служби.</p>
            <p>Спеціалізація: </p>
            <a>військовий психолог</a>
            <p>Номер телефону: </p>
            <a>+380652984714</a>
            <p>Вулиця: </p>
            <a>Вулиця Психологічна, 1</a>
        </div>
    </div>

   
</section>

<section class="newletter">
    <div class=" news-text">
        <h2>Гаряча лінія психологічної допомоги</h2>
        <p>Залиш свій номер і ми тобі зателефонуємо</p>
    </div>

    <div class="send">
        
            <input type="text" placeholder="Напишіть свій номер телефону" required>
            <input type="submit" value="Надіслати">
        
    </div>
</section>
    </div>

</asp:Content>

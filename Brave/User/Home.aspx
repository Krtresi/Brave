<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Brave.User.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="home" id="home">
        <div class="home-text">
            <h1>BRAVE<br /> Courage in Action</h1>
            <p>BRAVE: Сміливість допомагати. Сила змінювати.</p>
            <a href="./form.aspx" class="home-btn">Створити пост</a>
        </div>
    </section>

    <!-- Destination Section -->
    <section class="destination" id="destination">
        <div class="destination-content">
            <div class="col-content col-11">
                <a href="fonds.aspx">
                    <img src="../UserTemplate/images/sup.png" />
                    <h5>Фонди</h5>
                </a>
            </div>
            <div class="col-content col-11">
                <a href="pets.aspx">
                    <img src="../UserTemplate/images/prut.png" alt="Притулки для тварин">
                    <h5>Притулки для тварин</h5>
                </a>
            </div>

            <div class="col-content col-11">
                <a href="house.aspx">
                    <img src="../UserTemplate/images/house.png" alt="Домівки">
                    <h5>Домівки</h5>
                </a>
            </div>

            <div class="col-content col-11">
                <a href="zboru.aspx">
                    <img src='../UserTemplate/images/money.png'>
                    <h5>Збори</h5>
                </a>
            </div>

            <div class="col-content col-11">
                <a href="psyco.aspx">
                    <img src='../UserTemplate/images/hepl.png'>
                    <h5>Психологічна допомога</h5>
                </a>
            </div>
        </div>
    </section>

    <section class="newletter">
        <div class="news-text col-6">
            <h2>Хочеш доєднатись до нашої команди?</h2>
            <p>Залиш свою пошту і дочекайся листа</p>
        </div>
        <div class="send col-5">
            <form>
                <input type="email" placeholder="Впиши Email" required>
                <input type="submit" value="Надіслати">
            </form>
        </div>
    </section>

    <section id="contact">
        <div class="footer">
            <div class="main">
                <div class="list col-content col-4">
                    <h4>Quick Links</h4>
                    <ul>
                        <li><a href="#">About us</a></li>
                        <li><a href="#">Privacy Policy</a></li>
                    </ul>
                </div>

                <div class="list col-content col-4">
                    <h4>Contact Info</h4>
                    <ul>
                        <li><a href="#">50 Dragonmanova Street</a></li>
                        <li><a href="#">Lviv 79007</a></li>
                        <li><a href="#">+ 380 (96) 056 79</a></li>
                        <li><a href="#">nekleeva@gmail.com</a></li>
                    </ul>
                </div>

                <div class="list col-content col-4">
                    <h4>Connect</h4>
                    <div class="social">
                        <a href="#"><i class='bx bxl-telegram'></i></a>
                        <a href="#"><i class='bx bxl-instagram'></i></a>
                    </div>
                </div>
            </div>
        </div>
    </section>

</asp:Content>

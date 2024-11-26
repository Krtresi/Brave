<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Brave.User.Profile" %>

<asp:Content ID="Content4" ContentPlaceHolderID="head" runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../UserTemplate/css/profile.css">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager runat="server" />
    <asp:UpdatePanel runat="server">
        <ContentTemplate>
            <div class="container light-style flex-grow-1 container-p-y">
                <h4 class="font-weight-bold py-3 mb-4">
                    Налаштування акаунту
                </h4>
                <div class="card overflow-hidden">
                    <div class="row no-gutters row-bordered row-border-light">
                        <div class="col-md-12">
                            <div class="card-body">
                                <form id="account-form">
                                    <div class="form-group">
                                        <label class="form-label">Місто</label>
                                        <asp:TextBox ID="city" runat="server" CssClass="form-control mb-1" />
                                    </div>
                                    <div class="form-group">
                                        <label class="form-label">Фото</label>
                                        <asp:FileUpload ID="profilePhoto" runat="server" CssClass="form-control mb-1" />
                                    </div>

                                    <!-- Додаємо контроль для відображення зображення -->
                                   
                                    <asp:Image ID="userProfileImage" runat="server" />

                                    <div class="text-right mt-3">
                                        <asp:Button ID="Button1" runat="server" CssClass="btn btn-secondary" Text="Зберегти зміни" OnClick="SaveButton_Click" />
                                        <asp:Label ID="saveConfirmation" runat="server" CssClass="text-success ml-3" Text="" />
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>


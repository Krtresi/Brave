using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Brave.User
{
    public partial class registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                // Якщо форма була надіслана, обробіть реєстрацію
                RegisterUser();
            }
        }

        private void RegisterUser()
        {
            // Отримуємо введені дані
            string fullName = Request.Form["fullName"];
            string username = Request.Form["username"];
            string phone = Request.Form["phone"];
            string email = Request.Form["email"];
            string password = Request.Form["password"];

            // Хешуємо пароль для безпеки
            string passwordHash = GetPasswordHash(password);

            // Рядок підключення з Web.config
            string connectionString = ConfigurationManager.ConnectionStrings["MyDbContext"].ToString();

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                try
                {
                    conn.Open();

                    // Перевірка наявності користувача з таким ім'ям або email
                    string checkQuery = "SELECT COUNT(*) FROM Users WHERE Username = @Username OR Email = @Email";
                    using (SqlCommand checkCmd = new SqlCommand(checkQuery, conn))
                    {
                        checkCmd.Parameters.AddWithValue("@Username", username);
                        checkCmd.Parameters.AddWithValue("@Email", email);
                        int userExists = (int)checkCmd.ExecuteScalar();
                        if (userExists > 0)
                        {
                            Response.Write("Користувач з таким ім'ям або email вже існує.");
                            return;
                        }
                    }

                    // SQL запит для вставки користувача в таблицю
                    string query = "INSERT INTO Users (FullName, Username, Phone, Email, PasswordHash) VALUES (@FullName, @Username, @Phone, @Email, @PasswordHash)";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@FullName", fullName);
                        cmd.Parameters.AddWithValue("@Username", username);
                        cmd.Parameters.AddWithValue("@Phone", phone);
                        cmd.Parameters.AddWithValue("@Email", email);
                        cmd.Parameters.AddWithValue("@PasswordHash", passwordHash);

                        // Виконати запит
                        cmd.ExecuteNonQuery();
                    }

                    // Отримуємо ID нового користувача для збереження в сесії
                    string userIdQuery = "SELECT Id FROM Users WHERE Username = @Username";
                    using (SqlCommand cmd = new SqlCommand(userIdQuery, conn))
                    {
                        cmd.Parameters.AddWithValue("@Username", username);
                        int userId = (int)cmd.ExecuteScalar();

                        // Зберігаємо дані користувача в сесії
                        Session["UserId"] = userId;
                        Session["FullName"] = fullName;
                        Session["Email"] = email;
                        Session["Phone"] = phone;
                    }

                    // Перенаправлення на сторінку профілю після реєстрації
                    Response.Redirect("profile.aspx");
                }
                catch (Exception ex)
                {
                    // Якщо сталася помилка, вивести повідомлення
                    Response.Write("Error: " + ex.Message);
                }
            }
        }

        private string GetPasswordHash(string password)
        {
            // Для простоти, використовуємо стандартний хешування пароля
            // Ви можете використовувати більш складні методи хешування для більшої безпеки
            using (var sha256 = System.Security.Cryptography.SHA256.Create())
            {
                byte[] hashBytes = sha256.ComputeHash(System.Text.Encoding.UTF8.GetBytes(password));
                return Convert.ToBase64String(hashBytes);
            }
        }
    }
}

using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security; // Для аутентифікації користувачів через форми

namespace Brave.User
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                // Якщо форма була надіслана, обробимо логін
                LoginUser();
            }
        }

        private void LoginUser()
        {
            // Отримуємо введені дані
            string username = Request.Form["username"];
            string password = Request.Form["password"];

            // Хешуємо пароль для порівняння з тим, що збережено в базі даних
            string passwordHash = GetPasswordHash(password);

            // Рядок підключення з Web.config
            string connectionString = ConfigurationManager.ConnectionStrings["MyDbContext"].ToString();

            // SQL запит для перевірки користувача
            string query = "SELECT COUNT(1) FROM Users WHERE Username = @Username AND PasswordHash = @PasswordHash";

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        // Додавання параметрів до запиту
                        cmd.Parameters.AddWithValue("@Username", username);
                        cmd.Parameters.AddWithValue("@PasswordHash", passwordHash);

                        // Виконання запиту і отримання результату
                        int userExists = Convert.ToInt32(cmd.ExecuteScalar());

                        // Якщо користувач знайдений, перенаправити на сторінку налаштувань акаунту
                        if (userExists > 0)
                        {
                            // Використовуємо FormsAuthentication для створення кукі аутентифікації
                            FormsAuthentication.SetAuthCookie(username, false);

                            // Перенаправляємо на сторінку налаштувань акаунту
                            Response.Redirect("Profile.aspx");
                        }
                        else
                        {
                            // Якщо користувача не знайдено, вивести повідомлення
                            Response.Write("Невірне ім'я користувача або пароль.");
                        }
                    }
                }
                catch (Exception ex)
                {
                    // Якщо сталася помилка під час з'єднання з БД
                    Response.Write("Error: " + ex.Message);
                }
            }
        }

        private string GetPasswordHash(string password)
        {
            // Для хешування пароля використовуємо SHA256
            using (var sha256 = System.Security.Cryptography.SHA256.Create())
            {
                byte[] hashBytes = sha256.ComputeHash(System.Text.Encoding.UTF8.GetBytes(password));
                return Convert.ToBase64String(hashBytes);
            }
        }
    }
}

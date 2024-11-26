using System;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Web;

namespace Brave.User
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadUserProfile();
            }
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            string userId = "1"; // Замініть на реальне значення ID користувача (можливо, витягнуте з сесії)
            string cityValue = city.Text;
            string photoPath = null;

            // Завантаження фото, якщо файл був вибраний
            if (profilePhoto.HasFile)
            {
                string uploadFolder = Server.MapPath("~/Uploads/"); // Папка для завантаження файлів
                if (!Directory.Exists(uploadFolder))
                {
                    Directory.CreateDirectory(uploadFolder);
                }

                string fileName = Path.GetFileName(profilePhoto.FileName);
                photoPath = "~/Uploads/" + fileName;
                profilePhoto.SaveAs(Path.Combine(uploadFolder, fileName));

                // Оновлюємо відображення зображення
                userProfileImage.ImageUrl = photoPath;
            }

            // Збереження в базу даних
            SaveToDatabase(userId, cityValue, photoPath);

            // Підтвердження успіху
            saveConfirmation.Text = "Зміни успішно збережено!";
        }

        private void SaveToDatabase(string userId, string city, string photoPath)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["MyDbContext"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();

                string query = @"
                    UPDATE UserProfiles
                    SET City = @City, 
                        ProfilePhotoPath = CASE WHEN @PhotoPath IS NOT NULL THEN @PhotoPath ELSE ProfilePhotoPath END,
                        UpdatedAt = GETDATE()
                    WHERE UserId = @UserId";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@UserId", userId);
                    cmd.Parameters.AddWithValue("@City", city);
                    cmd.Parameters.AddWithValue("@PhotoPath", (object)photoPath ?? DBNull.Value);

                    cmd.ExecuteNonQuery();
                }
            }
        }

        private void LoadUserProfile()
        {
            string userId = "1"; // Замініть на реальне значення ID користувача
            string connectionString = ConfigurationManager.ConnectionStrings["MyDbContext"].ConnectionString;


            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();

                string query = "SELECT City, ProfilePhotoPath FROM UserProfiles WHERE UserId = @UserId";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@UserId", userId);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            city.Text = reader["City"]?.ToString();

                            string profilePhotoPath = reader["ProfilePhotoPath"]?.ToString();
                            if (!string.IsNullOrEmpty(profilePhotoPath))
                            {
                                userProfileImage.ImageUrl = profilePhotoPath;
                            }
                        }
                    }
                }
            }
        }
    }
}

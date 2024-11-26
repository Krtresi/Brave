using System;
using System.Data.SqlClient;
using System.Web.Configuration; // Додайте це для доступу до конфігурації
using System.Web.UI;

namespace Brave.User
{
    public partial class form : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            string category = Request.Form["category"];
            string title = Request.Form["назва"];
            string description = Request.Form["опис"];
            string photoPath = SavePhoto();

            // Замість отримання UserId, ставимо фіксоване значення
            int userId = 1; // Ставимо конкретне значення UserId

            string connectionString = WebConfigurationManager.ConnectionStrings["MyDbContext"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO Advertisements (Category, Title, Description, PhotoPath, CreatedAt, UserId) " +
                               "VALUES (@Category, @Title, @Description, @PhotoPath, GETDATE(), @UserId)";

                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Category", category);
                cmd.Parameters.AddWithValue("@Title", title);
                cmd.Parameters.AddWithValue("@Description", description);
                cmd.Parameters.AddWithValue("@PhotoPath", photoPath);
                cmd.Parameters.AddWithValue("@UserId", userId); // Підставляємо фіксоване значення UserId

                conn.Open();
                cmd.ExecuteNonQuery();


            }

            Response.Redirect("zboru.aspx");
        }




        // Метод для збереження фото на сервері та повернення шляху до файлу
        private string SavePhoto()
        {
            string filePath = "";
            if (Request.Files["фото"] != null)
            {
                var file = Request.Files["фото"];
                string fileName = file.FileName;
                string savePath = Server.MapPath("~/Images/" + fileName);
                file.SaveAs(savePath);
                filePath = "~/Images/" + fileName;
            }
            return filePath;
        }
    }
}

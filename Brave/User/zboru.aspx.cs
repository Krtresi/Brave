using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;


namespace Brave.User
{
    public partial class zboru : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadAdvertisements();
            }
        }

        private void LoadAdvertisements()
        {
            string connectionString = WebConfigurationManager.ConnectionStrings["MyDbContext"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "SELECT * FROM Advertisements";
                SqlCommand cmd = new SqlCommand(query, conn);
                conn.Open();

                SqlDataReader reader = cmd.ExecuteReader();
                var advertisements = new List<dynamic>();

                while (reader.Read())
                {
                    advertisements.Add(new
                    {
                        Category = reader["Category"].ToString(),
                        Title = reader["Title"].ToString(),
                        Description = reader["Description"].ToString(),
                        PhotoPath = reader["PhotoPath"].ToString(),
                        
                    });
                }

                RepeaterAdvertisements.DataSource = advertisements;
                RepeaterAdvertisements.DataBind();
            }
        }

    }
}

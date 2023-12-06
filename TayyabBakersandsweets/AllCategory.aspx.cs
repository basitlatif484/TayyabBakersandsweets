using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace TayyabBakersandsweets
{
    public partial class AllCategory : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                getcategory();
            }
        }
        protected void getcategory()
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    string ctyg = "SELECT DISTINCT ct_name FROM category";
                    using (SqlCommand command = new SqlCommand(ctyg, connection))
                    {
                        using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                        {
                            DataTable dtFloorname = new DataTable();
                            adapter.Fill(dtFloorname);

                            // Bind the floorname data to the DropDownList
                          

                            // Optionally, you can add a default item at the top of the DropDownList.
                           
                        }
                    }
                    connection.Close();
                }

            }
            catch (Exception ex)
            {

            }



        }
    }
}
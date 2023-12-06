using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace TayyabBakersandsweets
{
    public partial class Addcategory : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            getcategory();
        }
        protected void getcategory()
        {
            try
            {
                
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    string ctyg = "SELECT * FROM category";
                    using (SqlCommand command = new SqlCommand(ctyg, connection))
                    {
                        using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                        {
                            DataTable dtFloorname = new DataTable();
                            adapter.Fill(dtFloorname);
                            ctg_repeater.DataSource = dtFloorname;
                            ctg_repeater.DataBind();
                        }
                    }
                    connection.Close();
                }
            }
            catch (Exception ex)
            {

            }
        }
        protected void getcategory(string catgeroyid)
        {
            try
            {

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    string ctyg = "SELECT * FROM category where ct_id='"+catgeroyid+"'";
                    using (SqlCommand command = new SqlCommand(ctyg, connection))
                    {
                        using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                        {
                            DataTable dtcatg = new DataTable();
                            adapter.Fill(dtcatg);
                            if (dtcatg.Rows.Count > 0)
                            {
                                // You can access the data from the DataTable
                                DataRow row = dtcatg.Rows[0];  
                                txtCategoryName.Text = row["ct_name"].ToString();   
                                imgExistingItemPicture.ImageUrl = row["image"].ToString();
                                hiddenimgurl.Value = row["image"].ToString();
                                imgExistingItemPicture.Visible = true;
                                hidden_catg.Value = row["ct_id"].ToString();

                                string script = "<script type=\"text/javascript\">openEditModal();</script>";
                                ClientScript.RegisterStartupScript(this.GetType(), "openEditModal", script);
                            }
                        
                            else
                            {

                                Response.Write("Item not found.");
                            }

                        }
                    }
                    connection.Close();
                }
            }
            catch (Exception ex)
            {

            }
        }
        protected void btn_editClick(object sender, EventArgs e)
        {
            Button btnEdit = (Button)sender;
            string itemId = btnEdit.CommandArgument.ToString();
            getcategory(itemId);
        }
        protected void btn_deleteitem(object sender, EventArgs e)
        {
          
            Button btnDelete = (Button)sender;
            string itemId = btnDelete.CommandArgument.ToString();
            DeleteItem(itemId);
            getcategory();        
        }
        // Method to delete an item based on its ID
        private void DeleteItem(string itemId)
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    string query = "Delete from category where ct_id='" + itemId + "'";

                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.ExecuteNonQuery();
                    }
                    connection.Close();
                }

            }
            catch (Exception ex)
            {

            }
        }
        protected void btnAdd_Click(object sender, EventArgs e)
        {

            // Validate the page
            if (Page.IsValid)
            {
                // Check if the file upload control has a file
                if (fileUpload.HasFile)
                {
                    // Check if the file meets the specified dimensions
                    if (IsValidImageSize(fileUpload.PostedFile.InputStream, 500, 350))
                    {
                        
                        // Save the file to the server (you might want to customize the path)
                        string filePath = (HttpContext.Current.Server.
                                   MapPath("~/Uplaodedimages/") + fileUpload.FileName);
                        fileUpload.SaveAs(filePath);
                        string relativePath = "~/Uplaodedimages/" + fileUpload.FileName;
                        // Insert data into the category table (replace with your database logic)
                        string categoryName = txtCategoryName.Text;
                        string imageFilePath = relativePath;
                        InsertDataIntoCategoryTable(categoryName, imageFilePath);

                        // Optionally, you can display a success message or redirect the user
                       
                    }
                    else
                    {
                        Response.Write("<script>alert('Invalid image dimensions. Please upload an image with dimensions 500x350.');</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Please select an image file.');</script>");
                }
            }
        }

        // Helper method to check image dimensions
        private bool IsValidImageSize(Stream imageStream, int maxWidth, int maxHeight)
        {
            using (System.Drawing.Image img = System.Drawing.Image.FromStream(imageStream))
            {
                return img.Width == maxWidth && img.Height == maxHeight;
            }
        }

        // Helper method to insert data into the category table (replace with your database logic)
        private void InsertDataIntoCategoryTable(string categoryName, string imageFilePath)
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    string query = "INSERT INTO category (ct_name, image) VALUES (@CategoryName, @ImageFilePath)";

                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@CategoryName", categoryName);
                        command.Parameters.AddWithValue("@ImageFilePath", imageFilePath);

                        int rowsAffected = command.ExecuteNonQuery();

                        if (rowsAffected > 0)
                        {
                            // Insert successful
                            Response.Write("<script>alert('Category added successfully!');</script>");
                            getcategory();
                        }
                        else
                        {
                            // Insert failed
                            Response.Write("<script>alert('Something went wrong!');</script>");
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // Handle exceptions
                Console.WriteLine("Error: " + ex.Message);
            }
        }

    }
}
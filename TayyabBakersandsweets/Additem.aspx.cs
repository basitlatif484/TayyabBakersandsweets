using System;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace TayyabBakersandsweets
{
    public partial class Additem : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                getcategory();
            }    
        }
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // Check if the file upload control has a file
                if (fileItemPicture.HasFile)
                {
                    // Check if the file meets the specified dimensions
                    if (IsValidImageSize(fileItemPicture.PostedFile.InputStream, 150, 150))
                    {

                        // Save the file to the server (you might want to customize the path)
                        string filePath = (HttpContext.Current.Server.
                                   MapPath("~/Uplaodedimages/") + fileItemPicture.FileName);
                        fileItemPicture.SaveAs(filePath);
                        string relativePath = "~/Uplaodedimages/" + fileItemPicture.FileName;
                        // Insert data into the category table (replace with your database logic)
                       // string categoryName = txtCategoryName.Text;
                       // string imageFilePath = relativePath;
                        InsertDataIntoCategoryTable(relativePath);

                        // Optionally, you can display a success message or redirect the user

                    }
                    else
                    {
                        Response.Write("<script>alert('Invalid image dimensions. Please upload an image with dimensions 150x150.');</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Please select an image file.');</script>");
                }
            }
            
        }
        private bool IsValidImageSize(Stream imageStream, int maxWidth, int maxHeight)
        {
            using (System.Drawing.Image img = System.Drawing.Image.FromStream(imageStream))
            {
                return img.Width == maxWidth && img.Height == maxHeight;
            }
        }

        // Helper method to insert data into the category table (replace with your database logic)
        private void InsertDataIntoCategoryTable(string imagepath)
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    string query = "INSERT INTO items(categoryname, itemname, itemprice,itemimage) VALUES (@Category, @ItemName, @ItemPrice,@itemimage)";

                    using (SqlCommand cmd = new SqlCommand(query, connection))
                    {
                        cmd.Parameters.AddWithValue("@Category", ddl_category.SelectedValue);
                        cmd.Parameters.AddWithValue("@ItemName", txtItemName.Text.Trim());
                        cmd.Parameters.AddWithValue("@ItemPrice", txtItemPrice.Text);
                        cmd.Parameters.AddWithValue("@itemimage", imagepath);

                        int rowsAffected = cmd.ExecuteNonQuery();

                        if (rowsAffected > 0)
                        {
                            // Insert successful
                            Response.Write("<script>alert('Item added successfully!');</script>");
                        }
                        else
                        {
                            // Insert failed
                            Response.Write("<script>alert('Something went wrong!');</script>");
                        }
                    }
                }

                // Clear form fields after sucessful insertion
                ddl_category.SelectedIndex = -1;
                txtItemName.Text = string.Empty;
                txtItemPrice.Text = string.Empty;
            }
            catch (Exception ex)
            {
                // Handle exceptions
                Response.Write("<script>alert('Something went wrong!');</script>");
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
                            ddl_category.DataSource = dtFloorname;
                            ddl_category.DataTextField = "ct_name".Trim(); // Display this column in the DropDownList
                            ddl_category.DataValueField = "ct_name".Trim(); // Value associated with each item
                            ddl_category.DataBind();

                            // Optionally, you can add a default item at the top of the DropDownList.
                            ddl_category.Items.Insert(0, new ListItem("Select a Category", "-1"));
                        }
                    }
                    connection.Close();
                }

            }
            catch(Exception ex)
            {

            }
           
            
          
        }
    }
}
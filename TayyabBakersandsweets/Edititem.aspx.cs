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
    public partial class Edititem : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                getcategory();
                if (Request.QueryString["itemid"] != null)
                {
                    // Get the value of the "itemid" parameter from the URL
                    string itemId = Request.QueryString["itemid"];
                    getitem(itemId);
                }
                else
                {

                }
              
               
            }    
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string imagePath;

                // Check if the file upload control has a file
                if (fileItemPicture.HasFile)
                {
                    // Check if the file meets the specified dimensions
                    if (IsValidImageSize(fileItemPicture.PostedFile.InputStream, 150, 150))
                    {
                        // Save the file to the server
                        string filePath = (HttpContext.Current.Server.MapPath("~/Uplaodedimages/") + fileItemPicture.FileName);
                        fileItemPicture.SaveAs(filePath);
                        imagePath = "~/Uplaodedimages/" + fileItemPicture.FileName;
                    }
                    else
                    {
                        Response.Write("<script>alert('Invalid image dimensions. Please upload an image with dimensions 150x150.');</script>");
                        return;
                    }
                }
                else
                {
                    // Use the existing image URL
                    imagePath = hiddenimgurl.Value;
                }

                UpdateDataInCategoryTable(imagePath);
             
                // Optionally, you can display a success message or redirect the user
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
        private void UpdateDataInCategoryTable(string imagepath)
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    string query = "UPDATE items SET categoryname = @Category, itemname = @ItemName, itemprice = @ItemPrice, itemimage = @itemimage WHERE itemid='"+hidden_itemid.Value+"'";

                    using (SqlCommand cmd = new SqlCommand(query, connection))
                    {
                        // Replace 'your_condition_here' with the appropriate WHERE clause to identify the record you want to update.

                        cmd.Parameters.AddWithValue("@Category", ddl_category.SelectedValue);
                        cmd.Parameters.AddWithValue("@ItemName", txtItemName.Text.Trim());
                        cmd.Parameters.AddWithValue("@ItemPrice", txtItemPrice.Text);
                        cmd.Parameters.AddWithValue("@itemimage", imagepath);

                        int rowsAffected = cmd.ExecuteNonQuery();

                        if (rowsAffected > 0)
                        {
                            // Update successful
                            Response.Write("<script>alert('Item updated successfully!');</script>");
                            Response.Redirect("Allitems.aspx");
                        }
                        else
                        {
                            // Update failed
                            Response.Write("<script>alert('Something went wrong!');</script>");
                        }
                    }
                }
                
                // Clear form fields after successful update
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

        protected void getitem(string itemid)
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    string ctyg = "SELECT * FROM items where itemid = '" + itemid + "'";
                    using (SqlCommand command = new SqlCommand(ctyg, connection))
                    {
                        using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                        {
                            DataTable dtitems = new DataTable();
                            adapter.Fill(dtitems);
                            if (dtitems.Rows.Count > 0)
                            {
                                // You can access the data from the DataTable
                                DataRow row = dtitems.Rows[0];
                                string itemName = row["itemname"].ToString();
                                string category = row["categoryname"].ToString();
                                txtItemName.Text = itemName;
                                txtItemPrice.Text = row["itemprice"].ToString();
                                imgExistingItemPicture.ImageUrl = row["itemimage"].ToString();
                                hiddenimgurl.Value = row["itemimage"].ToString();
                                imgExistingItemPicture.Visible = true;
                                hidden_itemid.Value = row["itemid"].ToString();
                                ListItem selectedItem = ddl_category.Items.FindByText(category);
                                if (selectedItem != null)
                                {
                                    // Set the found ListItem as the selected item
                                    selectedItem.Selected = true;
                                }
                                else
                                {
                                }
                              
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
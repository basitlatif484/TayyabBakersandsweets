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
    public partial class Allitems : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getitems("all","allitems");
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
            catch (Exception ex)
            {

            }



        }
        protected void ddlcategoryselectchange(object sender, EventArgs e)
        {
            getitems(ddl_category.SelectedItem.Text,"catagory");
        }
        protected void btn_Searchitem_click(object sender, EventArgs e)
        {
            getitems(txt_itemname.Text,"Items");
        }
        private void getitems(string catg, string items)
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    string ctyg = "";
                    if (catg == "all" && items == "allitems")
                    {
                        ctyg = "SELECT *  FROM items;";
                    }
                    else if (items == "catagory")
                    {
                        ctyg = "SELECT *  FROM items where categoryname='" + catg + "'";
                    }
                    else
                    {
                        ctyg = "SELECT *  FROM items where itemname='" + catg + "'";
                    }
                    using (SqlCommand command = new SqlCommand(ctyg, connection))
                    {
                        using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                        {
                            DataTable dtFloorname = new DataTable();
                            adapter.Fill(dtFloorname);
                            itemsRepeater.DataSource = dtFloorname;
                            itemsRepeater.DataBind();
                            // Bind the floorname data to the DropDownList

                        }
                    }
                    connection.Close();
                }

            }
            catch (Exception ex)
            {

            }
        }
        protected void btn_Edititem(object sender, EventArgs e)
        {
            // Get the item ID from the CommandArgument
            Button btnEdit = (Button)sender;
            string itemId = btnEdit.CommandArgument.ToString();
           
            // Redirect to the edit page, passing the item ID as a parameter
            Response.Redirect("Edititem.aspx?itemid="+itemId+"");
        }

        protected void btn_deleteitem(object sender, EventArgs e)
        {
            // Get the item ID from the CommandArgument
            Button btnDelete = (Button)sender;
            string itemId = btnDelete.CommandArgument.ToString();

            // Call a method to delete the item with the specified ID
            DeleteItem(itemId);
            getitems("all", "allitems");
            // Rebind your data (call the method that binds the data to the grid again)
            // BindData();
        }

        // Method to delete an item based on its ID
        private void DeleteItem(string itemId)
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    string query = "Delete from items where itemid='" + itemId + "'";
                  
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

    }
}
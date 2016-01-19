using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CeeLearnAndDo.Admin
{
    public partial class Categories : System.Web.UI.Page
    {
        protected string pageTitle;
        protected string contentTitle;
        protected string breadCrumb;

        protected SqlConnection c = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            pageTitle = "Manage Categories - CeeLearnAndDo Admin Panel";
            contentTitle = "Categories <small>Manage all categories</small>";
            breadCrumb = "<li class='active'>Categories</li>";

            Panel1.Visible = false;
        }

        protected void btnNewCat_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
        }

        protected void btnAddCat_Click(object sender, EventArgs e)
        {
            c.Open();
            string query = "INSERT INTO Categories VALUES(@CatName, @Content)";
            SqlCommand cmd = new SqlCommand(query, c);
            cmd.Parameters.AddWithValue("@CatName", txtCatTitle.Text);
            cmd.Parameters.AddWithValue("@Content", "");
            cmd.ExecuteNonQuery();
            c.Close();
            Response.Redirect("~/Admin/Categories.aspx");
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            c.Open();
            GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
            string Id = row.Cells[1].Text;

            string query = "DELETE FROM Categories WHERE Id=" + Id;

            SqlCommand cmd = new SqlCommand(query, c);
            cmd.ExecuteNonQuery();

            c.Close();
            Response.Redirect("~/Admin/Categories.aspx");
        }
    }
}
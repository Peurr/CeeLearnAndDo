using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CeeLearnAndDo.Admin
{
    public partial class References : System.Web.UI.Page
    {
        protected string pageTitle;
        protected string contentTitle;
        protected string breadCrumb;

        protected int idEdit;
        public string editContent;

        protected SqlConnection c = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            switch (Request.QueryString["action"])
            {
                case "new":
                    pageTitle = "Add a new Reference - CeeLearnAndDo Admin Panel";
                    contentTitle = "New <small>Add a new reference</small>";
                    breadCrumb = "<li class='active'>References</li><li class='active'>New</li>";
                    break;
                case "overview":
                    pageTitle = "Overview of all References - CeeLearnAndDo Admin Panel";
                    contentTitle = "Overview <small>View all references</small>";
                    breadCrumb = "<li class='active'>References</li><li class='active'>Overview</li>";
                    break;
                case "edit":
                    pageTitle = "Edit an existing Reference - CeeLearnAndDo Admin Panel";
                    contentTitle = "Edit <small>Edit an References</small>";
                    breadCrumb = "<li class='active'>References</li><li class='active'>Edit</li>";
                    idEdit = Convert.ToInt32(Request.QueryString["Id"]);

                    showEditData();

                    break;
            }
        }

        protected void showEditData()
        {
            c.Open();

            string query = "SELECT * FROM [Article] WHERE Id=" + idEdit.ToString();
            SqlCommand cmd = new SqlCommand(query, c);

            SqlDataReader r = cmd.ExecuteReader();

            while (r.Read())
            {
                EditTitle.Text = r["Title"].ToString();
                editContent = r["Content"].ToString();
            }

            c.Close();
        }

        protected void butPublish_Click(object sender, EventArgs e)
        {
            c.Open();

            string titleInput = txtTitle.Text;
            string contentInput = HiddenField1.Value;
            string dateInput = Convert.ToString(DateTime.Now);

            string query = "INSERT INTO Reference VALUES(@Title, @Content, @DateAdded)";
            SqlCommand cmd = new SqlCommand(query, c);
            cmd.Parameters.AddWithValue("@Title", titleInput);
            cmd.Parameters.AddWithValue("@Content", contentInput);
            cmd.Parameters.AddWithValue("@DateAdded", dateInput);


            cmd.ExecuteNonQuery();
            c.Close();
            Response.Redirect("~/Admin/References.aspx?action=overview");
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            c.Open();

            string titleEditInput = EditTitle.Text;
            string contentEditInput = HiddenField2.Value;
            //int categoryInput = Convert.ToInt32(categoryList.SelectedValue);

            string query = "UPDATE Reference SET Title = @Title, Content = @Content WHERE Id=@Id";

            SqlCommand cmd = new SqlCommand(query, c);
            cmd.Parameters.AddWithValue("@Id", Convert.ToInt32(idEdit));
            cmd.Parameters.AddWithValue("@Title", titleEditInput);
            cmd.Parameters.AddWithValue("@Content", contentEditInput);
            cmd.ExecuteNonQuery();
            showEditData();
            c.Close();
            Response.Redirect("~/Admin/References.aspx?action=overview");
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            c.Open();
            GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
            string Id = row.Cells[1].Text;

            string query = "DELETE FROM Reference WHERE Id=" + Id;

            SqlCommand cmd = new SqlCommand(query, c);
            cmd.ExecuteNonQuery();

            c.Close();
            Response.Redirect("~/Admin/References.aspx?action=overview");
        }
    }
}
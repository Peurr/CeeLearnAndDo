using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;

namespace CeeLearnAndDo.Admin
{
    public partial class Articles : System.Web.UI.Page
    {
        protected string pageTitle;
        protected string contentTitle;
        protected string breadCrumb;

        protected SqlConnection c = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);

        protected int idEdit;

        public string editContent;

        protected void Page_Load(object sender, EventArgs e)
        {
            switch (Request.QueryString["action"])
            {
                case "new":
                    pageTitle = "Add a new Article - CeeLearnAndDo Admin Panel";
                    contentTitle = "New <small>Add a new article</small>";
                    breadCrumb = "<li class='active'>Articles</li><li class='active'>New</li>";
                    break;
                case "overview":
                    pageTitle = "Overview of all Articles - CeeLearnAndDo Admin Panel";
                    contentTitle = "Overview <small>View all articles</small>";
                    breadCrumb = "<li class='active'>Articles</li><li class='active'>Overview</li>";
                    break;
                case "edit":
                    pageTitle = "Edit an existing Article - CeeLearnAndDo Admin Panel";
                    contentTitle = "Edit <small>Edit an article</small>";
                    breadCrumb = "<li class='active'>Articles</li><li class='active'>Edit</li>";
                    idEdit = Convert.ToInt32(Request.QueryString["Id"]);

                        showEditData();

                    break;
            }

            displayCategories();
        }

        protected void displayCategories()
        {
            DataTable dt = new DataTable();

            string query = "SELECT * FROM Categories";
            SqlDataAdapter adpt = new SqlDataAdapter(query, c);
            adpt.Fill(dt);

            categoryList.DataSource = dt;
            categoryList.DataBind();
            categoryList.DataTextField = "CatName";
            categoryList.DataValueField = "Id";
            categoryList.DataBind();
        }

        protected void showEditData()
        {
            c.Open();

            string query = "SELECT * FROM [Article] WHERE Id=" + idEdit.ToString();
            SqlCommand cmd = new SqlCommand(query, c);

            SqlDataReader r = cmd.ExecuteReader();

            while(r.Read())
            {
                EditTitle.Text = r["Title"].ToString();
                editContent = r["Content"].ToString();
                editTags.Text = r["Tags"].ToString();
            }

            c.Close();
        }

        protected void butPublish_Click(object sender, EventArgs e)
        {
            c.Open();

            string titleInput = txtTitle.Text;
            string pictureInput = "NONE";
            string tagsInput = txtTags.Text;
            string contentInput = HiddenField1.Value;
            int categoryInput = Convert.ToInt32(categoryList.SelectedValue);
            string authorInput = User.Identity.GetUserId();
            string dateInput = Convert.ToString(DateTime.Now);
            string fileInput = "NONE";

            Response.Write(categoryInput);

            string query = "INSERT INTO Article VALUES(@AuthorId, @Title, @Picture, @Content, @CategoryId, @Tags, @File, @DateAdded)";
            SqlCommand cmd = new SqlCommand(query, c);
            cmd.Parameters.AddWithValue("@AuthorId", authorInput);
            cmd.Parameters.AddWithValue("@Title", titleInput);
            cmd.Parameters.AddWithValue("@Picture", pictureInput);
            cmd.Parameters.AddWithValue("@Content", contentInput);
            cmd.Parameters.AddWithValue("@CategoryId", categoryInput);
            cmd.Parameters.AddWithValue("@Tags", tagsInput);
            cmd.Parameters.AddWithValue("@File", fileInput);
            cmd.Parameters.AddWithValue("@DateAdded", dateInput);


            cmd.ExecuteNonQuery();
            Response.Write("Record Added.");
            c.Close();
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            c.Open();

            string titleEditInput = EditTitle.Text;
            string tagsEditInput = editTags.Text;
            string contentEditInput = HiddenField2.Value;
            //int categoryInput = Convert.ToInt32(categoryList.SelectedValue);

            string query = "UPDATE Article SET Title = @Title, Content = @Content, Tags = @Tags WHERE Id=@Id";

            SqlCommand cmd = new SqlCommand(query, c);
            cmd.Parameters.AddWithValue("@Id", Convert.ToInt32(idEdit));
            cmd.Parameters.AddWithValue("@Title", titleEditInput);
            cmd.Parameters.AddWithValue("@Content", contentEditInput);
            //cmd.Parameters.AddWithValue("@CategoryId", categoryInput);
            cmd.Parameters.AddWithValue("@Tags", tagsEditInput);

            cmd.ExecuteNonQuery();
            showEditData();
            c.Close();
        }
    }
}
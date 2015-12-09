using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CeeLearnAndDo
{
    public partial class rss : System.Web.UI.Page
    {
        public static string constring = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        SqlConnection con = new SqlConnection(constring);

        protected void Page_Load(object sender, EventArgs e)
        {
            string query = "SELECT TOP 10 Title, DateAdded, Content, AuthorName.Author FROM Article INNER JOIN AuthorName ON Article.AuthorId=AuthorName.AuthorId";
            SqlCommand cmd = new SqlCommand(query, con);

            con.Open();
            repeaterRSS.DataSource = cmd.ExecuteReader();
            repeaterRSS.DataBind();
            con.Close();
        }
    }
}
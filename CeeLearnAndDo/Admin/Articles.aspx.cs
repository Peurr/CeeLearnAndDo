using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CeeLearnAndDo.Admin
{
    public partial class Articles : System.Web.UI.Page
    {

        public string pageTitle;
        public string contentTitle;
        public string breadCrumb;

        protected void Page_Load(object sender, EventArgs e)
        {
            switch(Request.QueryString["action"])
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
                    break;
            }
        }
    }
}
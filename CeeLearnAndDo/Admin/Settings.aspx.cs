using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CeeLearnAndDo.Admin
{
    public partial class Settings : System.Web.UI.Page
    {
        public string pageTitle;
        public string contentTitle;
        public string breadCrumb;

        protected void Page_Load(object sender, EventArgs e)
        {
            switch(Request.QueryString["action"])
            {
                case "general":
                    pageTitle = "General Settings - CeeLearnAndDo Admin Panel";
                    contentTitle = "General<small>Adjust general settings</small>";
                    breadCrumb = "<li class='active'>Settings</li><li class='active'>General</li>";
                    break;
                case "discussion":
                    pageTitle = "Discussion Settings - CeeLearnAndDo Admin Panel";
                    contentTitle = "Discussion<small>Adjust discussion settings</small>";
                    breadCrumb = "<li class='active'>Settings</li><li class='active'>Discussion</li>";
                    break;
            }
        }
    }
}
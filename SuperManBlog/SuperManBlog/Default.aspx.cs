using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace SuperManBlog
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            XmlDocument xml_doc = new XmlDocument();
            xml_doc.XmlResolver = null;
            xml_doc.Load(Server.MapPath("XML files/SuperPosts.xml"));
            XmlNodeList items = xml_doc.GetElementsByTagName("post");
            foreach (XmlNode x in items)
            {
                post.Text += "<div id = \"displaypost\">" +
                             "<a href = ShowPost/ShowPost.aspx?id=" + x.Attributes[0].Value + "><h3>" +
                             x.Attributes[1].Value + "</h3></a><br />" + "</div>";
            }
            if (!User.IsInRole("Administrator")) add.Visible = false;
            else { add.Visible = true; add.Text = "<p align = \"center\"><a href = AddPost/AddPost.aspx> AddPost </a></p>"; } 
        }
    }
}

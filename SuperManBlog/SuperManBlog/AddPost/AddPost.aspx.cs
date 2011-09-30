using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace AddPost
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int max = 0;
            XmlDocument xml_doc = new XmlDocument();
            xml_doc.Load(Server.MapPath("../XML files/SuperPosts.xml"));



            XmlNodeList items = xml_doc.GetElementsByTagName("post");
            foreach (XmlNode x in items)
                if (max < Convert.ToInt32(x.Attributes[0].Value))
                    max = Convert.ToInt32(x.Attributes[0].Value);

            XmlNode newNode = xml_doc.DocumentElement.FirstChild;
            XmlElement newElem = xml_doc.CreateElement("post");

            newElem.SetAttribute("id", (max + 1).ToString());
            newElem.SetAttribute("topic", topic.Text);
            newElem.InnerText = txtNotes.Text;

            xml_doc.DocumentElement.InsertBefore(newElem, newNode);
            xml_doc.Save(Server.MapPath("../XML files/SuperPosts.xml"));
            
            Response.Redirect("../ShowPost/ShowPost.aspx?id=" + (max + 1).ToString());
            
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtNotes.Text = "";
            topic.Text = "";
        }
    }
}
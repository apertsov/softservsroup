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

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (topic.Text == "") Response.Write("Введіть назву суперпосту");
            
            else
            {
                XmlDocument xml_doc = new XmlDocument();
                xml_doc.Load(Server.MapPath("../SuperPosts.xml"));

                XmlNode newNode = xml_doc.DocumentElement.FirstChild;

                XmlElement newElem = xml_doc.CreateElement("post");
                newElem.SetAttribute("topic", topic.Text);
                newElem.InnerText = txtNotes.Text;
               
                xml_doc.DocumentElement.InsertBefore(newElem, newNode);

                xml_doc.Save(Server.MapPath("../SuperPosts.xml"));
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            txtNotes.Text = "";
            topic.Text = "";
        }
    }
}
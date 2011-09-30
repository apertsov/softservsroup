using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace SuperManBlog.ShowPost
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            XmlDocument xml_doc = new XmlDocument();
            xml_doc.XmlResolver = null;
            xml_doc.Load(Server.MapPath("../XML files/SuperPosts.xml"));
           string str = Request.QueryString["id"];
            XmlNodeList items = xml_doc.GetElementsByTagName("post");
            foreach (XmlNode x in items)
                if (x.Attributes[0].Value.ToString() == str) {
                    topic.Text = "<div id = \"wrapper\"><div id = \"head\"><h3>" + x.Attributes[1].Value + "</h3></div>";
                    text.Text = "<div id = \"text\">" + x.InnerText + "</div>";
                    break; 
                }
        }

        protected void send_Click(object sender, EventArgs e)
        {
            
            XmlDocument xml_doc = new XmlDocument();
            xml_doc.Load(Server.MapPath("../XML files/SuperComments.xml"));
            
            XmlNode newNode = xml_doc.DocumentElement.FirstChild;
            XmlElement newElem = xml_doc.CreateElement("comment");

            newElem.SetAttribute("id", Request.QueryString["id"]);
            newElem.SetAttribute("nickname", name.Text);
            newElem.InnerText = txtComment.Text;

            xml_doc.DocumentElement.InsertAfter(newElem, newNode);

            xml_doc.Save(Server.MapPath("../XML files/SuperComments.xml"));
           

            xml_doc = new XmlDocument();
            xml_doc.XmlResolver = null;
            xml_doc.Load(Server.MapPath("../XML files/SuperComments.xml"));
            
            string str = Request.QueryString["id"];
            XmlNodeList items = xml_doc.GetElementsByTagName("comment");
            comm.Text = "";
            foreach (XmlNode x in items)
                if (x.Attributes[0].Value.ToString() == str)
                {
                    comm.Text += "<br />" + x.Attributes[1].Value +"<br /><br />" + x.InnerText + "<hr />";
                }
            
        }
    }
}
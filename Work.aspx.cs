using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_A
{
    public partial class Work : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-NSPMDBGL\\SQLEXPRESS;Initial Catalog=hkpvt;Integrated Security=True");
        }

        protected void bttnpdf_Click(object sender, EventArgs e)
        {
            string FilePath = Server.MapPath("view/SEO.pdf");
            WebClient User = new WebClient();
            Byte[] FileBuffer = User.DownloadData(FilePath);
            if (FileBuffer != null)
            {
                Response.ContentType = "application/pdf";
                Response.AddHeader("content-length", FileBuffer.Length.ToString());
                Response.BinaryWrite(FileBuffer);
            }
        }
    }
}
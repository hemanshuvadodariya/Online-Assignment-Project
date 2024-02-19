using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_A
{
    public partial class upload_work : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("Data Source=LAPTOP-NSPMDBGL\\SQLEXPRESS;Initial Catalog=hkpvt;Integrated Security=True");

        protected System.Web.UI.HtmlControls.HtmlInputFile File1;
        protected System.Web.UI.HtmlControls.HtmlInputButton Submit1;
        private string constr;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["hkpvtConnectionString"].ConnectionString);
            con.Open();
            string log1 = "SELECT * from addtopic ";
            SqlDataAdapter da = new SqlDataAdapter(log1, con);
            DataTable dt = new DataTable();

            da.Fill(dt);

           

            String st = dt.Rows[dt.Rows.Count - 1][2].ToString();
            dat.Text = st;

            String stream = dt.Rows[dt.Rows.Count - 1][1].ToString();
            txtstream.Text = stream;

            String add = dt.Rows[dt.Rows.Count - 1][0].ToString();
            txtUsername.Text = add;



        }

        protected void dat_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
                try
                {
                    //In SaveAs you need to specify the path where you want to save the file on server
                    FileUpload1.SaveAs(Server.MapPath("~/view/") + FileUpload1.FileName);
                    label.Text = "File Uploaded Sucessfully !!";
                }
                catch (Exception ex)
                {
                    //Log Exception Message
                    label.Text = "File Upload Failed!!";
                }
            else
            {
                label.Text = "Please Select File to Upload";
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-NSPMDBGL\\SQLEXPRESS;Initial Catalog=hkpvt;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[fileupload] ([topicnm],[date],[upload]) VALUES('" + txtUsername.Text + "','" + dat.Text + "','" + Button1.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            //Response.Write("<script>alert('user successfully registered')</script>");
            Response.Redirect("Homepage.aspx");

            con.Close();
        }
    }
}
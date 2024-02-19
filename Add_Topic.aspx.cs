using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_A
{
    public partial class Add_Topic : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-NSPMDBGL\\SQLEXPRESS;Initial Catalog=hkpvt;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[addtopic] ([name] ,[branch],[enddate],[selectstudent]) VALUES ('" + assignment.Text + "','" + DropDownList1.Text + "','" + enddate.Text + "','"+ DropDownList2.Text+"')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('successfully updeted ')</script>");
            Response.Redirect("/admin/adminl.aspx");
        }
    }
}
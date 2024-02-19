using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Diagnostics;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Project_A
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-NSPMDBGL\\SQLEXPRESS;Initial Catalog=hkpvt;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[signup1] ([username],[email id],[password]) values ('" + txtUsername.Text+ "','"+ txtEmail.Text+ "','"+ txtPassword.Text+ "')",con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('user successfully registered')</script>");
            Response.Redirect("userlogin.aspx");

        }
    }
}
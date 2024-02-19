using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace Project_A
{
    public partial class student_list : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
            show();
        }
        private void show()
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-NSPMDBGL\\SQLEXPRESS;Initial Catalog=hkpvt;Integrated Security=True");
            string strSQL = "Select * from signup1";
            SqlDataAdapter dt = new SqlDataAdapter(strSQL, con);
            DataSet ds = new DataSet();
            dt.Fill(ds, "UserDetail");
            con.Close();
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }
}
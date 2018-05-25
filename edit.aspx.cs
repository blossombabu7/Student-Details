using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace studentdetails
{
    public partial class edit : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=BLOSSOM\MSSQLSERVER1;Initial Catalog=SMS;User ID=sa;Password=admin123;");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand sql = new SqlCommand("select * from tbl_reg where  add_no='" + txtname.Text.Trim() + "' ", con);
            SqlDataAdapter da = new SqlDataAdapter(sql);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                hdempid.Value = dt.Rows[0][0].ToString();
                txtclass.Text = dt.Rows[0][5].ToString();
                txtdivision.Text = dt.Rows[0][6].ToString();
                txtcontact.Text = dt.Rows[0][8].ToString();
                txtmail.Text = dt.Rows[0][1].ToString();
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('No Data Found ')", true);
            }
            con.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Open();
            string sql = "delete from tbl_reg where id='" + hdempid.Value + "'";
            //Response.Write(sql);
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();

            Response.Redirect("edit.aspx");
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            string sql = "update tbl_reg set class = '" + txtclass.Text + "', division = '" + txtdivision.Text + "', contact = '" + txtcontact.Text + "', email = '" + txtmail.Text + "'  where id='" + hdempid.Value + "'"; // Updating tbl_stud
            //Response.Write(sql);
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();
            Response.Redirect("edit.aspx");
            con.Close();

        }
    }

}
    

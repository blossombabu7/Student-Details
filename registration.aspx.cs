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
    
    public partial class registration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=BLOSSOM\MSSQLSERVER1;Initial Catalog=SMS;User ID=sa;Password=admin123;");
        public string gender;    
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
              if (male.Checked)
                    {
                        gender = "M";
                    }
                    else if (female.Checked)
                    {
                        gender = "F";
                    }
            string sql = "insert into tbl_reg(add_no,name,class,division,gender,address,contact,email) values('" + txtaddno.Text + "','" + txtname.Text + "','" + txtclass.Text + "','" + txtdivsion.Text + "','" + gender + "','" + txtaddress.Text + "','" + txtcontact.Text + "', '" + txtmail.Text+ "')";
                    //Response.Write(sql);
                  SqlDataAdapter adptt = new SqlDataAdapter(sql, con);
                    SqlCommand cmd = new SqlCommand(sql, con);
                   
                    cmd.ExecuteNonQuery();

                    string display = "Registration Successful ";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display + "');", true);  // Allert Box
                    con.Close();

                    Response.Redirect("Registration.aspx");
                }
               
        }
    }

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AspNet;
using System.Data.SqlClient;
using System.Data.OleDb;
using System.Data;
using System.Web.Services.Description;

namespace WebApplication1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        string connectionString = "Data Source =essql1.walton.uark.edu;" + "Initial Catalog = PROJECTF2038;" + "User ID = PROJECTF2038; Password =JY20yxm$";



        SqlConnection connection;
        //allows communication
        SqlCommand command;
        //allows sql commands
        SqlDataReader dataReader;
        //fills dataviews

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if(Request.Cookies["username"] != null && Request.Cookies["password"] !=null)
                {
                    Textbox1.Text = Request.Cookies["username"].Value;
                    Textbox2.Text = Request.Cookies["password"].Value;

                }
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        { ///SIGN IN
            SqlConnection con = new SqlConnection(connectionString);

            var sql = "select username, password from OB_USER where USERNAME=@username and PASSWORD=@password";

            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@username", Textbox1.Text.ToString());
            cmd.Parameters.AddWithValue("@password", Textbox2.Text.ToString());

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            con.Close();
            if (dt.Rows.Count > 0)
            {

                Label1.Text = "Success!";

                if (CheckBox1.Checked)
                {
                    Response.Cookies["username"].Value = Textbox1.Text;
                    Response.Cookies["password"].Value = Textbox2.Text;
                }
                else
                {
                    Response.Cookies["username"].Expires = DateTime.Now.AddMinutes(-1);
                    Response.Cookies["password"].Expires = DateTime.Now.AddMinutes(-1);
                }
                Session["ID"] = Textbox1.Text;
                ///  Response.Redirect(DASHBOARD LINK.aspx) ***CREATE DASHBOARD LINK
                Session.RemoveAll();
                
            }
            else
            {
                Label1.Text = "Check Your Credentials";
            }
          
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateAccount.aspx");
        }
    }
}

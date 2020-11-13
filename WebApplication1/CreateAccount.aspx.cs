using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.OleDb;
using System.Data;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
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

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connectionString);

            var sql = "insert into OB_USER (USER_L_NAME, USER_F_NAME, PASSWORD,USERNAME, DOB, COUNTRY, STATE_REGION, EMAIL," +
                "STREET, CITY, ZIP_CODE, MOBILE_PHONE) VALUES" +
                "(@User_L_Name, @USER_F_Name, @password, @username, @DOB, @country," +
                "@State_Region, @email, @Street, @City, @Zip_Code, @Mobile_Phone)"; // INSERTS CREATE ACCOUNT DATA
            
          

 

            if (Textbox3.Text != null && 
                Textbox4.Text != null && 
                Textbox5.Text != null 
                && Textbox6.Text != null
                && Textbox7.Text != null
              && Textbox8.Text != "01/01/2020"
                && Textbox9.Text != null
                && Textbox10.Text != null
                && Textbox11.Text != null
                && Textbox12.Text != null
                && Textbox13.Text != null
                && Textbox14.Text != null
                ) //Checks for missing values
            { 
                
                   DateTime Bdate = DateTime.Parse(Textbox8.Text); //Date of Birth -> Check for 18 and older    
                    DateTime today = DateTime.Today;
                    int age = today.Year - Bdate.Year; //Calculates if 18 years or younger 



                    if (age >= 18)
                    {

                       int answer; 
                        con.Open();

                         SqlCommand cmd = new SqlCommand(sql, con);
                    
                        
                        //Creates new Account
                    cmd.Parameters.AddWithValue("@username", Textbox6.Text.ToString());
                    cmd.Parameters.AddWithValue("@password", Textbox7.Text.ToString());
                    
                  
                    cmd.Parameters.AddWithValue("@email", Textbox3.Text.ToString());
                    cmd.Parameters.AddWithValue("@USER_F_Name", Textbox4.Text.ToString());
                    cmd.Parameters.AddWithValue("@User_L_Name", Textbox5.Text.ToString());
                    cmd.Parameters.AddWithValue("@DOB", Textbox8.Text.ToString());
                    cmd.Parameters.AddWithValue("@Country", Textbox9.Text.ToString());
                    cmd.Parameters.AddWithValue("@State_Region", Textbox10.Text.ToString());
                    cmd.Parameters.AddWithValue("@Street", Textbox11.Text.ToString());
                    cmd.Parameters.AddWithValue("@City", Textbox12.Text.ToString());
                    cmd.Parameters.AddWithValue("@Zip_code", Textbox13.Text.ToString());
                    cmd.Parameters.AddWithValue("@Mobile_Phone", Textbox14.Text.ToString());


                    answer = cmd.ExecuteNonQuery();

                    cmd.Dispose();
                    con.Close();


                }
                else { Label5.Text = "You must be 18 years or older to register."; }

            } 
            else { Label5.Text = "Missing Information"; }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace student
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetStudentInfo();
            }
        }
        SqlConnection connection = new SqlConnection("Data Source=DESKTOP-69NDHQE\\SQLEXPRESS;Initial Catalog=student_db;Integrated Security=True");

        protected void submit_Click(object sender, EventArgs e)
        {
            string first_name = txtfname.Text;
            string last_name = txtlname.Text;
            string gender = RadioButtonList1.Text;
            string age = txtage.Text;
            

            connection.Open();
            SqlCommand command = new SqlCommand("Insert into student values ('" + first_name + "','" + last_name + "','" + gender + "','"+age+"')",connection);
            command.ExecuteNonQuery();
            connection.Close();
            GetStudentInfo();
        }
        void GetStudentInfo()
        {
            SqlCommand command = new SqlCommand("Select student_id, first_name, last_name, gender, age from student", connection);
            SqlDataAdapter sd = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }
    }
}
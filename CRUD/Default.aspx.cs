using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CRUD
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            { loadrecord(); }
        }
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-LJ3P5GO\\SQLEXPRESS;Initial Catalog=programmingdb;Integrated Security=True");
        protected void Button1_Click(object sender, EventArgs e)
        {
           
            con.Open();
            SqlCommand comm=new SqlCommand("Insert into studentinfotable values('"+int.Parse(TextBox1.Text)+"','"+TextBox2.Text+"','"+DropDownList1.SelectedValue+"','"+double.Parse(TextBox3.Text)+"','"+TextBox4.Text+"')" , con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Inserted');", true);
            loadrecord();
        }
       

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("Update studentinfotable set StudentName='" + TextBox2.Text + "', Address='" + DropDownList1.SelectedValue + "', Age='" + double.Parse(TextBox3.Text) + "', contact='" + TextBox4.Text + "' Where StudentID='" + int.Parse(TextBox1.Text) + "'", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Updated');", true);
            loadrecord();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("Delete studentinfotable where StudentID='"+int.Parse(TextBox1.Text)+"'",con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Deleted');", true);
            loadrecord();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

            SqlCommand comm = new SqlCommand("select * from studentinfotable where StudentID='" + int.Parse(TextBox1.Text) + "'", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            con.Open();
            string query="select * from studentinfotable where StudentID='" + int.Parse(TextBox1.Text) + "'";
            SqlCommand comm = new SqlCommand(query, con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
           
            if(dt.Rows.Count>0)
            {
                TextBox2.Text = dt.Rows[0]["StudentName"].ToString();
                DropDownList1.SelectedValue = dt.Rows[0]["Address"].ToString();
                TextBox3.Text = dt.Rows[0]["Age"].ToString();
                TextBox4.Text =dt.Rows[0]["Contact"].ToString();
            }
        }
        void loadrecord()
        {
            SqlCommand comm = new SqlCommand("select * from studentinfotable", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        
    }
}
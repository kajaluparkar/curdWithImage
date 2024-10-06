using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Drawing;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace curdWithImage
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
          
        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection connection = new SqlConnection(cs);
                string filePPath = Server.MapPath("Images/");
                string fileName = Path.GetFileName(FileUpload1.FileName);
                string extension = Path.GetExtension(fileName);
                //HttpPostedFile postedFile = FileUpload1.PostedFile;
                //int size = postedFile.ContentLength;

                int size = FileUpload1.PostedFile.ContentLength;


                if (FileUpload1.HasFile == true)
                {
                    if (extension.ToLower() == ".jpg" || extension.ToLower() == ".jpeg" || extension.ToLower() == ".png")
                    {
                        if (size <= 2000000)
                        {
                            FileUpload1.SaveAs(filePPath + fileName);
                            string path2 = "Images/" + fileName;

                            string query = "Insert into Emp values(@id,@name,@age,@gender,@desig,@salary,@img)";
                            SqlCommand cmd = new SqlCommand(query, connection);
                            cmd.Parameters.AddWithValue("@id", TxtID.Text);
                            cmd.Parameters.AddWithValue("@name", TxtNamr.Text);
                            cmd.Parameters.AddWithValue("@age", TxtAge.Text);
                            cmd.Parameters.AddWithValue("@gender", GenderDB.SelectedItem.Value);
                            cmd.Parameters.AddWithValue("@desig", DeginationDB.SelectedItem.Value);
                            cmd.Parameters.AddWithValue("@salary", TxtSalary.Text);
                            cmd.Parameters.AddWithValue("@img", path2);

                            connection.Open();
                            int a = cmd.ExecuteNonQuery();

                            if (a > 0)
                            {
                                Response.Write("<script> alert('Data Inserted Succesfully !!!') </script>");
                            }
                            else
                            {
                                Response.Write("<script> alert(' Inserted Failed !!!') </script>");

                            }

                            connection.Close();
                        }
                        else
                        {
                            Label1.Text = "Length should be 2mb or less than";
                            Label1.Visible = true;
                            Label1.ForeColor = Color.Red;
                        }
                    }
                    else
                    {
                        Label1.Text = "Format Not Supported please upload jpg,png,jpeg";
                        Label1.Visible = true;
                        Label1.ForeColor = Color.Red;

                    }

                }
                else
                {
                    Label1.Text = "Please Upload an image";
                    Label1.Visible = true;
                    Label1.ForeColor = Color.Red;
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script> alert('Error "+ex.Message.ToString() +"')</script>");


            }
           
        }
    }
}
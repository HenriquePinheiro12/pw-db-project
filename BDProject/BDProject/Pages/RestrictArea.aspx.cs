using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.InteropServices;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BDProject.Pages
{
    public partial class RestrictArea : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void HandleRegister(object sender, EventArgs e)
        {
            string username = usernameInput.Text;
            string password = passwordInput.Text;
            string confirmedPass = confirmPasswordInput.Text;

            if (!password.Equals(confirmedPass))
            {
                messageLbl.Text = "As senhas devem ser iguais";
                return;
            }
            else {
                ClasseConexao con = new ClasseConexao();
                string com =
                    "INSERT INTO Users(username, senha) VALUES(@username, @senha); \n" +
                    "SELECT username, senha FROM Users WHERE username = @username AND senha = @senha";


                SqlCommand command = new SqlCommand(com);
                command.Parameters.Add("@username", SqlDbType.NVarChar, 40).Value = username;
                command.Parameters.Add("@senha", SqlDbType.NVarChar, 40).Value = password;

                DataTable dt = con.exSQLParameters(command);

                if (dt.Rows.Count > 0) {
                    messageLbl.Text = "Inserção realizada com sucesso!";
                    displayGridView.DataSource = dt;
                    displayGridView.DataBind();
                }
            }
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            Response.Redirect("./Login.apx");
        }

        protected void Unnamed_Click1(object sender, EventArgs e)
        {
            Response.Redirect("DataQuery.aspx");
        }
    }
}
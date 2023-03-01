using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;
using System.Data.SqlClient;

namespace BDProject
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void HandleLogin(object sender, EventArgs e)
        {
            string username = usernameInput.Text;
            string password = passwordInput.Text;

            ClasseConexao con = new ClasseConexao();
            string com =
                "SELECT * FROM Users WHERE username = @username AND senha = @senha";

            SqlCommand command = new SqlCommand(com);
            command.Parameters.Add("@username", SqlDbType.NVarChar, 40).Value = username;
            command.Parameters.Add("@senha", SqlDbType.NVarChar, 40).Value = password;

            DataTable dt = con.exSQLParameters(command);

                //con.manutencaoDB_Parametros(command);

            if (dt.Rows.Count > 0)
                Response.Redirect("./RestrictArea.aspx");
            else
                messageLbl.Text = "Credenciais inválidas!";
        }

        protected void Unnamed_Click(object sender, EventArgs e) => 
            Response.Redirect("./Login.aspx");
        
    }
}
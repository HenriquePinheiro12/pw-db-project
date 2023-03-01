using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BDProject.Pages
{
    public partial class DataQuery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ClasseConexao con = new ClasseConexao();
            string com =
                "SELECT f.* FROM Funcionarios f INNER JOIN Pedidos p ON f.CodFun = p.CodFun WHERE YEAR(p.DataPed)= @year AND MONTH(p.DataPed)= @month";


            SqlCommand command = new SqlCommand(com);
            command.Parameters.Add("@month", SqlDbType.Int, 40).Value = 5;
            command.Parameters.Add("@year", SqlDbType.Int, 40).Value = 1998;

            DataTable dt = con.exSQLParameters(command);
            gridView.DataSource = dt;
            gridView.DataBind();
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            Response.Redirect("./Login.aspx");
        }

        protected void Unnamed_Click1(object sender, EventArgs e)
        {
            Response.Redirect("./RestrictArea.aspx");
        }
    }
}
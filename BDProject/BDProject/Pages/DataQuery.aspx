<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataQuery.aspx.cs" Inherits="BDProject.Pages.DataQuery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../global.css" rel="stylesheet" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Data Query</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <header>
                <h1>Querying</h1>
                <nav>
                    <ul>
                        <li>
                            <asp:Button Text="Login" OnClick="Unnamed_Click"  runat="server" />
                        </li>
                        <li>
                            <asp:Button OnClick="Unnamed_Click1" Text="Register" runat="server" />
                            
                        </li>
                        <li class="unavailable">About us</li>
                    </ul>
                </nav>
            </header>
            <main>
                <section class="query-dashboard">
                    <h2>Exiba todos os dados dos funcionários que participaram dos pedidos de maio de 1998</h2>
                    <code>
                        <span>CREATE PROC</span> usp_queryFuncByOrderDate  <br />
                        &nbsp;&nbsp;@year <span>INT</span>, @month <span>INT</span> <br />
                        <span>AS <br />
                        &nbsp;&nbsp;		SELECT</span> f.* <span>FROM</span> Funcionarios f <span>INNER JOIN</span> Pedidos p <span>ON</span> f.CodFun = p.CodFun <br />
                        &nbsp;&nbsp;		<span>WHERE YEAR</span>(p.DataPed)=@year <span>AND MONTH</span>(p.DataPed)=@month
                        <br />
                        <br />

                        <span>EXEC</span> usp_queryFuncByOrderDate 1998, 5
                    </code>
                    <asp:GridView runat="server" ID="gridView"></asp:GridView>
                </section>
            </main>
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RestrictArea.aspx.cs" Inherits="BDProject.Pages.RestrictArea" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../global.css" rel="stylesheet" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Registration</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <header>
                <h1>Anything</h1>
                <nav>
                    <ul>
                        <li>
                            <asp:Button Text="Login" OnClick="Unnamed_Click"  runat="server" />
                        </li>
                        <li>
                            <asp:Button Text="Querying" OnClick="Unnamed_Click1" runat="server" />

                        </li>  
                        <li class="unavailable">About us</li>
                    </ul>
                </nav>
            </header>
            <main> 
                <section class="register-dashboard">
                    <h2>Register</h2>

                    <div class="inputs-container">
                        <asp:TextBox CssClass="text-input" placeholder="Username" ID="usernameInput" runat="server" />
                        <asp:TextBox CssClass="text-input" placeholder="Password" ID="passwordInput" runat="server" />
                        <asp:TextBox CssClass="text-input" placeholder="Confirm Password" ID="confirmPasswordInput" runat="server" />
                    </div>

                    <asp:Button CssClass="register-btn" OnClick="HandleRegister" Text="Register" runat="server" />
                </section>
                <asp:Label ID="messageLbl" Text="" runat="server" />
                <asp:GridView ID="displayGridView" runat="server"></asp:GridView>
            </main>
        </div>
    </form>
</body>
</html>

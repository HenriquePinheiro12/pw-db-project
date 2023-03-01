<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BDProject.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../global.css" rel="stylesheet" />
    <title>Login</title>
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
                        <li class="unavailable">Sign up</li>  
                        <li class="unavailable">About us</li>
                    </ul>
                </nav>
            </header>
            <main>
                <section class="login-dashboard">
                    <h2>Login</h2>

                    <div class="inputs-container">
                        <asp:TextBox CssClass="text-input" placeholder="Pinheiro" ID="usernameInput" runat="server" />
                        <asp:TextBox CssClass="text-input" placeholder="12345" ID="passwordInput" runat="server" />
                        <p class="forgot-username">Forgot <span>Username/Password?</span></p>
                    </div>

                    <asp:Button CssClass="login-btn" OnClick="HandleLogin" Text="Login" runat="server" />
                </section>
                <asp:Label ID="messageLbl" Text="" runat="server" />
            </main>
        </div>
    </form>
</body>
</html>

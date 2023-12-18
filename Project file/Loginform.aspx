<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Loginform.aspx.cs" Inherits="UshaOnlineServiceCenter.Loginform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <title>Login Form</title>

    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <style>
      

        body {
            font-family: Arial, Helvetica, sans-serif;
        }
        form {
            border: 3px solid #f1f1f1;
        }
        input[type=text], input[type=password] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }
        button:hover {
            opacity: 0.8;
        }
        .cnbtn {
            background-color: #ec3f3f;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 49%;
        }
        .lgnbtn {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 50%;
        }
        .imgcontainer {
            text-align: center;
            margin: 24px 0 12px 0;
        }
        img.avatar {
            width: 40%;
            border-radius: 50%;
        }
        .container {
            padding: 16px;
        }
        span.psw {
            float: right;
            padding-top: 16px;
        }
        /* Change styles for span and cancel button on extra small screens */
        @media screen and (max-width: 300px) {
            span.psw {
                display: block;
                float: none;
            }
            .cnbtn {
                width: 100%;
            }
        }
        .frmalg {
            margin: auto;
            width: 40%;
        }
        .auto-style2 {
            width: 364px;
        }
    </style>
   
</head>
<body >
    <form id="form1" runat="server" class="frmalg">

        <div class="container" style="background-color:#B0CFDE">

            <center>
                <h3><img src="usha.png" class="auto-style2" /></h3 class="auto-style1">
                <h2 style="font-family: 'times New Roman', Times, serif">Login Here</h2>
            </center>
            <label for="uname"><b>Username</b></label>
            <asp:TextBox runat="server" ID="txtusername" placeholder="Enter Username"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RVF1" runat="server" ControlToValidate="txtusername" ErrorMessage="Enter Username" ForeColor="Red"></asp:RequiredFieldValidator><br />

            <label for="psw"><b>Password</b></label>
            <asp:TextBox runat="server" ID="txtpassword" TextMode="Password" placeholder="Enter Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfv2" runat="server" ControlToValidate="txtpassword" ErrorMessage="Enter Password" ForeColor="Red"></asp:RequiredFieldValidator><br />

            <asp:Button runat="server" ID="btn_Login" CssClass="lgnbtn" Text="Login" OnClick="btn_Login_Click" />
            <asp:Button runat="server" ID="btn_cancel" Text="Cancel" class="cnbtn" OnClick="btn_cancel_Click" />
        </div>
        <p>
            <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
        </p>
    </form>
</body>
</html>

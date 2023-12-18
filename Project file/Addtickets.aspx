<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Addtickets.aspx.cs" Inherits="UshaOnlineServiceCenter.Addtickets" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: right;
        }
        .auto-style2 {
            text-align: left;
        }
        .auto-style3 {
            text-align: center;
        }
        .body{
            background-color:#C9C9C9;
        }
        .auto-style4 {
            text-align: left;
            height: 60px;
        }
        .auto-style5 {
            width: 183px;
        }
        .auto-style6 { 
            text-align: left;
            width: 183px;
        }
    </style>
</head>
<body style="height: 104px" >
    <form id="form1" runat="server" style="background-image:url(BACKGROUND.PNG)" >
       
            <h2 class="auto-style2">
                <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="#0000CC" NavigateUrl="~/Loginform.aspx">Home</asp:HyperLink>
                &nbsp;<asp:HyperLink ID="hyplinktickets" runat="server" ForeColor="#000066" NavigateUrl="~/Ticketslist.aspx">TaskList</asp:HyperLink>
                <img alt="" class="auto-style4" src="ushal.PNG" /></h2>
        <h2 class="auto-style3">Online Service Complaint</h2>
            <p class="auto-style1">
                &nbsp;</p>
        <div>
             <table class="auto-style11" align="center" style="background-color:#B0CFDE">
                <tr>
                    <td class="auto-style4" colspan="2" align="center">
                        <h3 class="auto-style2">&nbsp;Customer Information:</h3>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Salutation:</td>
                    <td class="auto-style12">
                        <asp:DropDownList ID="drpname" runat="server" Height="16px" Width="169px">
                            <asp:ListItem>Mr</asp:ListItem>
                            <asp:ListItem>Ms</asp:ListItem>
                            <asp:ListItem>Mrs</asp:ListItem>
                            <asp:ListItem>Dr</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rvf1" runat="server" ErrorMessage="Select Salutation" ForeColor="Red" ControlToValidate="drpname"></asp:RequiredFieldValidator>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Name:</td>
                    <td class="auto-style13">
                        <asp:TextBox ID="txtname" runat="server" Width="160px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rvf2" runat="server" ErrorMessage="Enter name" ForeColor="Red" ControlToValidate="txtname"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Email ID:</td>
                    <td class="auto-style12">
                        <asp:TextBox ID="txtmail" runat="server" Height="16px" Width="162px" ></asp:TextBox>
                        <asp:RegularExpressionValidator ID="rvfmail" runat="server" ControlToValidate="txtmail"
    ForeColor="Red" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"
    Display = "Dynamic" ErrorMessage = "Invalid email address"/>
                        

                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">MobileNo:</td>
                    <td class="auto-style13">
                        <asp:TextBox ID="txtmobile" runat="server" Height="16px" Width="162px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter mobile number" ForeColor="Red" ControlToValidate="txtmobile"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Address1:</td>
                    <td class="auto-style13">
                        <asp:TextBox ID="txtaddress1" runat="server" Height="16px" Width="162px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rvfaddress1" runat="server" ErrorMessage="Enter your Address1" ForeColor="Red" ControlToValidate="txtaddress1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Address2:</td>
                    <td class="auto-style12">
                        <asp:TextBox ID="txtaddress2" runat="server" Height="16px" Width="162px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rvfaddress2" runat="server" ErrorMessage="Enter your Address2" ForeColor="Red" ControlToValidate="txtaddress2"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Preffered Languague:</td>
                    <td class="auto-style12">
                        <asp:DropDownList ID="drppreffered" runat="server" Height="16px" Width="169px">
                            <asp:ListItem>Select</asp:ListItem>
                            <asp:ListItem>Hindi</asp:ListItem>
                            <asp:ListItem>English</asp:ListItem>
                            <asp:ListItem>Telugu</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rvfdrppreffered" runat="server" ErrorMessage="Select  preffered languague" ForeColor="Red" ControlToValidate="drppreffered"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">State:</td>
                    <td class="auto-style12">
                        <asp:DropDownList ID="drpstate" runat="server" Height="16px" Width="169px">
                            <asp:ListItem>Select</asp:ListItem>
                            <asp:ListItem>Telanaga</asp:ListItem>
                            <asp:ListItem>Andhra Pradesh</asp:ListItem>
                            <asp:ListItem>Karnataka</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rvfdrpstate" runat="server" ErrorMessage="Select state" ForeColor="Red" ControlToValidate="drpstate"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">City:</td>
                    <td class="auto-style14">
                        <asp:DropDownList ID="drpcity" runat="server" Height="16px" Width="169px">
                            <asp:ListItem>Select</asp:ListItem>
                            <asp:ListItem>Hyderabad</asp:ListItem>
                            <asp:ListItem>Secunderabad</asp:ListItem>
                            <asp:ListItem>Bangalore</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rvfdrpcity" runat="server" ErrorMessage="Select City" ForeColor="Red" ControlToValidate="drpcity"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Locality:</td>
                    <td class="auto-style12">
                        <asp:TextBox ID="txtlocality" runat="server" Height="16px" Width="162px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rvflocality" runat="server" ErrorMessage="Select locality" ForeColor="Red" ControlToValidate="txtlocality"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Pincode:</td>
                    <td class="auto-style14">
                        <asp:TextBox ID="txtpincode" runat="server" Height="16px" Width="162px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rvfpincode" runat="server" ErrorMessage="Select Pincode" ForeColor="Red" ControlToValidate="txtpincode"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" colspan="2"><strong>Select Product</strong></td>
                </tr>
                <tr>
                    <td class="auto-style5">Product Category:</td>
                    <td class="auto-style13">
                        <asp:DropDownList ID="drpproductcategory" runat="server" Height="16px" Width="169px">
                            <asp:ListItem>Select</asp:ListItem>
                            <asp:ListItem>Water Cooler</asp:ListItem>
                            <asp:ListItem>Lighting</asp:ListItem>
                            <asp:ListItem>Electric Fan</asp:ListItem>
                            <asp:ListItem>Home Comfort</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rvfproduct" runat="server" ErrorMessage="Select Product Category" ForeColor="Red" ControlToValidate="drpproductcategory"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Product:</td>
                    <td class="auto-style13">
                        <asp:DropDownList ID="drpproduct" runat="server" Height="16px" Width="169px">
                            <asp:ListItem>Select</asp:ListItem>
                            <asp:ListItem>Fan</asp:ListItem>
                            <asp:ListItem>Light</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rvfdrpproduct" runat="server" ErrorMessage="Select Product" ForeColor="Red" ControlToValidate="drpproduct"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Model:</td>
                    <td class="auto-style12">
                        <asp:DropDownList ID="drpmodel" runat="server" Height="16px" Width="169px">
                            <asp:ListItem>Select</asp:ListItem>
                            <asp:ListItem>Solano Summer 48&quot;</asp:ListItem>
                            <asp:ListItem>Canary Queen</asp:ListItem>
                            <asp:ListItem>Paddington 45&quot;</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rvfdrpmodel" runat="server" ErrorMessage="Select Model" ForeColor="Red" ControlToValidate="drpmodel"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Purchase Source:</td>
                    <td class="auto-style12">
                        <asp:DropDownList ID="drppurchase" runat="server" Height="16px" Width="169px">
                            <asp:ListItem>Select</asp:ListItem>
                            <asp:ListItem>Online Purchase</asp:ListItem>
                            <asp:ListItem>Dealer Purchase</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rvfpurchase" runat="server" ErrorMessage="Enter your purchase source" ForeColor="Red" ControlToValidate="drppurchase"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2"><strong>Your Support Request:</strong></td>
                </tr>
                <tr>
                    <td colspan="2"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtsupport" runat="server" Height="45px" Width="242px"></asp:TextBox>
                        </strong></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <strong>
                        <asp:FileUpload ID="fileupload" runat="server" />
                        </strong>
                        <asp:Button ID="btnupload" runat="server" OnClick="btnupload_Click" Text="Upload" BackColor="#FF9933" />
                        <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
                    <asp:RequiredFieldValidator ID="rvffileupload" runat="server" ErrorMessage="Please upload file" ForeColor="Red" ControlToValidate="fileupload"></asp:RequiredFieldValidator>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Button ID="btnsubmit" runat="server" BackColor="#FFCC00" Text="Submit" Width="91px" OnClick="btnsubmit_Click1" BorderStyle="Groove" ForeColor="Green
                            " Height="32px" />
                        <asp:Label ID="lblalert" runat="server" ForeColor="Green"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:Button ID="btnreset" runat="server" BackColor="#99CCFF" BorderColor="#99FF99" BorderStyle="Groove" CssClass="auto-style6" ForeColor="Black" Height="33px" Text="Reset" Width="93px" OnClick="btnreset_Click" />
                    </td>
                </tr>
            </table>

        </div>

         </form>
</body>
</html>

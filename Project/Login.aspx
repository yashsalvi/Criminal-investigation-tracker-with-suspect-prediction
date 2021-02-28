<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <br />
    <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Size="X-Large" 
        Text="Login" Font-Italic="False" Font-Underline="True" ForeColor="#196BA1"></asp:Label>
&nbsp;
    <br />
        <br />
    <br />
    <asp:ImageButton ID="ImageButton4" runat="server" Height="175px" 
        ImageUrl="~/Image/blue Admin.jpg" PostBackUrl="~/admin_login.aspx" 
            Width="175px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 
        <asp:ImageButton ID="ImageButton1" runat="server" Height="175px" 
        ImageUrl="~/Image/blue Officer.jpg" PostBackUrl="~/Off_login.aspx" 
        Width="175px" />
    <br />
        <br />
    </div>

</asp:Content>
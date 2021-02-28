<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeFile="Off_login.aspx.cs" Inherits="judge_login" %>

<asp:Content ID="body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>

    <br />
    <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Size="X-Large" 
        Text="Officer Login" Font-Underline="True" ForeColor="#196BA1"></asp:Label>
    <br />
        <br />
    <br />
    <asp:Label ID="Label4" runat="server" Text="Case ID  :-"></asp:Label>
    &nbsp; <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        &nbsp;&nbsp;<br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Officer ID  :-"></asp:Label>
    &nbsp; <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Password  :-"></asp:Label>
    &nbsp; <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Login" 
            style="height: 26px" CssClass="intabular" Height="32px" Width="80px" />
    <br />
    <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
</div>

</asp:Content>
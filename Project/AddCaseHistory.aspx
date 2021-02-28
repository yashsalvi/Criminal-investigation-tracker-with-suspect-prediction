<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AddCaseHistory.aspx.cs" Inherits="AddCaseHistory" %>

<asp:Content ID="Body" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div>

    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Add Case History" Font-Size="X-Large" 
            Font-Underline="True" ForeColor="#196BA1"></asp:Label>
    <br />
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Case ID  :-"></asp:Label>
&nbsp;
    <asp:TextBox ID="TextBox1" runat="server" Enabled="False"></asp:TextBox>
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label3" runat="server" Text="Note  :-"></asp:Label>
&nbsp;
    <asp:TextBox ID="TextBox2" runat="server" Height="43px" TextMode="MultiLine" 
            Width="168px"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" CssClass="intabular" Height="33px" 
            Text="Submit " Width="86px" onclick="Button1_Click" />
        <br />
    <br />

</div>
</asp:Content>
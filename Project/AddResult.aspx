<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AddResult.aspx.cs" Inherits="AddResult" %>

<asp:Content ID="Body" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div>

    <br />
    <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Font-Underline="True" 
        ForeColor="#196BA1" Text="Add Result"></asp:Label>
    <br />
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" Text="Case ID  :-"></asp:Label>
&nbsp;
    <asp:DropDownList ID="DropDownList1" runat="server" Height="21px" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged" Width="173px" 
            AutoPostBack="True">
        <asp:ListItem>--Select--</asp:ListItem>
    </asp:DropDownList>
    &nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Case Name  :-"></asp:Label>
&nbsp;
    <asp:TextBox ID="TextBox1" runat="server" Enabled="False"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Suspects  :-"></asp:Label>
&nbsp;
    <asp:DropDownList ID="DropDownList2" runat="server" Height="22px" Width="173px" 
            onselectedindexchanged="DropDownList2_SelectedIndexChanged">
    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <asp:Label ID="Label5" runat="server" Text="Note  :-"></asp:Label>
&nbsp;
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label6" runat="server" Visible="False"></asp:Label>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" CssClass="intabular" Height="35px" 
        Text="Submit" Width="80px" onclick="Button1_Click" />
&nbsp;
    <br />
    <br />

</div>
</asp:Content>
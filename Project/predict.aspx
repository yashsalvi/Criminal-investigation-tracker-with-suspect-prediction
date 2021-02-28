<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="predict.aspx.cs" Inherits="predict" %>

<asp:Content ID="Body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    
    <br />
    <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Font-Underline="True" 
        ForeColor="#196BA1" Text="Prediction"></asp:Label>
    <br />
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Case ID  :-"></asp:Label>
&nbsp;
    <asp:DropDownList ID="DropDownList1" runat="server" Height="24px" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged" Width="168px" 
            AutoPostBack="True">
        <asp:ListItem>--Select--</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    &nbsp;<asp:Label ID="Label3" runat="server" Text="Case Name  :-"></asp:Label>
&nbsp;
    <asp:TextBox ID="TextBox1" runat="server" Enabled="False"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" Text="Suspect  :-"></asp:Label>
&nbsp;
    <asp:TextBox ID="TextBox2" runat="server" Enabled="False"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label5" runat="server" Text="Image  :-"></asp:Label>
&nbsp;
    <asp:Image ID="Image1" runat="server" Height="120px" Width="120px" />
    <br />
    <br />
&nbsp;
    <asp:Label ID="Label6" runat="server" Text="Points  :-"></asp:Label>
&nbsp;
    <asp:TextBox ID="TextBox3" runat="server" Enabled="False"></asp:TextBox>
    <br />
    <br />
    <br />
    
</div>
</asp:Content>
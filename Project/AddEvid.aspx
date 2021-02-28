<%@ Page Language="C#" MasterPageFile ="~/Site.master" AutoEventWireup="true" CodeFile="AddEvid.aspx.cs" Inherits="AddEvid" %>

<asp:Content ID="Body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>

    <br />
    <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Font-Underline="True" 
        ForeColor="#196BA1" Text="Add Evidence"></asp:Label>
    <br />
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Case ID  :-"></asp:Label>
&nbsp;
    <asp:TextBox ID="TextBox1" runat="server" Enabled="False"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" Text="Evidence Type  :-"></asp:Label>
&nbsp;
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
        Height="22px" onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
        Width="173px">
        <asp:ListItem>--Select--</asp:ListItem>
        <asp:ListItem>Physical</asp:ListItem>
        <asp:ListItem>Logical</asp:ListItem>
    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Evidence  :-"></asp:Label>
&nbsp;
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;<br />
    <br />
        <asp:Label ID="Label6" runat="server" Text="Suspect  :-"></asp:Label>
        &nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server" Height="20px" 
        Width="173px">
            <asp:ListItem>--Select--</asp:ListItem>
        </asp:DropDownList>
    <br />
    <asp:Panel ID="Panel5" runat="server" Height="273px" Visible="False">
        <br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Text="Image  :-"></asp:Label>
&nbsp;
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" Text="Upload" onclick="Button2_Click" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image1" runat="server" Height="157px" Width="169px" />
    </asp:Panel>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label7" runat="server" Text="Note  :-"></asp:Label>
&nbsp;
    <asp:TextBox ID="TextBox3" runat="server" Height="53px" TextMode="MultiLine" 
        Width="168px"></asp:TextBox>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label8" runat="server" Text="Points  :-"></asp:Label>
&nbsp;
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    <br />
&nbsp;<br />
    <br />
    <asp:Button ID="Button1" runat="server" CssClass="intabular" Height="33px" 
        Text="Submit " Width="86px" onclick="Button1_Click" />
    <br />
    <br />

</div>
</asp:Content>
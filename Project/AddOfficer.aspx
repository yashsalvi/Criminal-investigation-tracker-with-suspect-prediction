<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AddOfficer.aspx.cs" Inherits="AddOfficer" %>

<asp:Content ID="Body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    
    <br />
    <asp:Label ID="Label1" runat="server" Text="Add Officer" Font-Size="X-Large" 
        Font-Underline="True" ForeColor="#196BA1"></asp:Label>
    <br />
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Officer ID  :-"></asp:Label>
&nbsp;
    <asp:TextBox ID="TextBox1" runat="server" Enabled="False"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label3" runat="server" Text="Name  :-"></asp:Label>
&nbsp;
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    &nbsp;
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="TextBox2" ErrorMessage="Invalid Name" 
        ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label4" runat="server" Text="Mobile No  :-"></asp:Label>
&nbsp;
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    &nbsp;
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
        ControlToValidate="TextBox3" ErrorMessage="Invalid No" 
        ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <asp:Label ID="Label5" runat="server" Text="Address  :-"></asp:Label>
&nbsp;
    <asp:TextBox ID="TextBox4" runat="server" Height="49px" TextMode="MultiLine" 
        Width="167px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label6" runat="server" Text="Mail ID  :-"></asp:Label>
&nbsp;
    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
    &nbsp;
    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
        ControlToValidate="TextBox5" ErrorMessage="Invalid Mail ID" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    <br />
    <br />
    <asp:Label ID="Label7" runat="server" Text="Area  :-"></asp:Label>
&nbsp;
    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label8" runat="server" Text="Image  :-"></asp:Label>
&nbsp;
    <asp:FileUpload ID="FileUpload1" runat="server" />
&nbsp;
    <asp:Button ID="Button1" runat="server" Text="Upload" onclick="Button1_Click" 
            style="height: 26px" />
    <br />
    <br />
    <asp:Image ID="Image1" runat="server" Height="185px" Width="180px" />
    <br />
    <br />
    <asp:Button ID="Button2" runat="server" CssClass="intabular" Height="34px" 
        Text="Submit" Width="86px" onclick="Button2_Click" />
    <br />
    <br />
    
</div>
</asp:Content>
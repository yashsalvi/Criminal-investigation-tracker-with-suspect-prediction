<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AddSus.aspx.cs" Inherits="Result" %>

<asp:Content ID="Body" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div>

    <br />
    <asp:Label ID="Label1" runat="server" Text="Add Suspect" Font-Size="X-Large" 
        Font-Underline="True" ForeColor="#196BA1"></asp:Label>
    <br />
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label2" runat="server" Text="Case ID  :-"></asp:Label>
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
    <asp:Label ID="Label6" runat="server" Text="Relation  :-"></asp:Label>
&nbsp;
    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <asp:Label ID="Label7" runat="server" Text="Note  :-"></asp:Label>
&nbsp;
    <asp:TextBox ID="TextBox6" runat="server" Height="40px" TextMode="MultiLine" 
        Width="168px"></asp:TextBox>
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label8" runat="server" Text="Image  :-"></asp:Label>
&nbsp;
    <asp:FileUpload ID="FileUpload1" runat="server" />
&nbsp;
    <asp:Button ID="Button1" runat="server" Text="Upload" onclick="Button1_Click" />
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Image ID="Image1" runat="server" Height="185px" Width="190px" />
    <br />
    <br />
    <asp:Button ID="Button2" runat="server" CssClass="intabular" Height="34px" 
        Text="Submit" Width="86px" onclick="Button2_Click" />
    <br />
    <br />

</div>
</asp:Content>
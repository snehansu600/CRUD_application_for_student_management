<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CRUD._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
      <div>
       <div style="font-size:xx-large; text-decoration: underline;" align="center"><em>Student Info Management Form</em></div><br/>
    <table class="nav-justified">
        <tr>
            <td style="width: 251px">&nbsp;</td>
            <td style="width: 155px">StudentID</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium" Width="173px" MaxLength="4"></asp:TextBox>
&nbsp;&nbsp;
                <asp:Button ID="Button5" runat="server" BackColor="#CC00FF" BorderColor="#CC33FF" Font-Bold="True" Font-Size="Medium" ForeColor="White" OnClick="Button5_Click" Text="GET" Width="75px" />
            </td>
        </tr>
        <tr>
            <td style="width: 251px">&nbsp;</td>
            <td style="width: 155px">StudentName</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Font-Size="Medium" Width="173px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 251px">&nbsp;</td>
            <td style="width: 155px">Address</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem Value="Canada">Canada</asp:ListItem>
                    <asp:ListItem Value="India">India</asp:ListItem>
                    <asp:ListItem>South Africa</asp:ListItem>
                    <asp:ListItem>UK</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 251px">&nbsp;</td>
            <td style="width: 155px">Age</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Font-Size="Medium" Width="173px" MaxLength="2"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 251px">&nbsp;</td>
            <td style="width: 155px">Contact</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Font-Size="Medium" Width="173px" MaxLength="10" TextMode="Number"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 251px">&nbsp;</td>
            <td style="width: 155px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 251px">&nbsp;</td>
            <td style="width: 155px">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" BackColor="#CC00FF" BorderColor="#CC33FF" Font-Bold="True" Font-Size="Medium" ForeColor="White" OnClick="Button1_Click" Text="Insert" Width="75px" />
&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" BackColor="#CC00FF" BorderColor="#CC33FF" Font-Bold="True" Font-Size="Medium" ForeColor="White" OnClick="Button2_Click" Text="Update" Width="75px" />
&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" BackColor="#CC00FF" BorderColor="#CC33FF" Font-Bold="True" Font-Size="Medium" ForeColor="White" OnClick="Button3_Click" OnClientClick="return confirm('are you sure to delete ?');" Text="Delete" Width="75px" />
&nbsp;&nbsp;
                <asp:Button ID="Button4" runat="server" BackColor="#CC00FF" BorderColor="#CC33FF" Font-Bold="True" Font-Size="Medium" ForeColor="White" OnClick="Button4_Click" Text="Search" Width="75px" />
            &nbsp;&nbsp;
               
        </tr>
        <tr>
            <td style="width: 251px">&nbsp;</td>
            <td style="width: 155px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 251px">&nbsp;</td>
            <td style="width: 155px">&nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" Width="472px" Height="174px">
                </asp:GridView>
            </td>
        </tr>
    </table>

 
   </div>

</asp:Content>

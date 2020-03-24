<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="Coiffeur_Appointment_System.MainPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
                <p>
                    &nbsp;</p>
            </asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder3">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label1" runat="server" CssClass="navLabel" Text="Search:" Font-Size="X-Large"></asp:Label>
                        </td>
                        <td class="auto-style4">
                            <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
                        </td>
                        <td class="auto-style3">
                            <asp:Label ID="Label2" runat="server" Text="Log In" CssClass="navLabel" Font-Size="Larger"></asp:Label>
&nbsp; 
                            <asp:Label ID="Label4" runat="server" CssClass="navLabel" Font-Size="Larger" Text="|"></asp:Label>
                            &nbsp;
                            <asp:Label ID="Label3" runat="server" Text="Sign Up" CssClass="navLabel" Font-Size="Larger"></asp:Label>
                        </td>
                    </tr>
                </table>
            </asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Login.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Pharmacy_Proj.Login1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 102px;
        }
        .auto-style3 {
            width: 169px;
        }
        .auto-style4 {
            width: 102px;
            height: 29px;
        }
        .auto-style5 {
            width: 169px;
            height: 29px;
        }
        .auto-style6 {
            height: 29px;
        }
        .auto-style10 {
            width: 235px;
        }
        .auto-style11 {
            width: 102px;
            height: 35px;
        }
        .auto-style12 {
            width: 169px;
            height: 35px;
        }
        .auto-style13 {
            height: 35px;
        }
        .auto-style14 {
            text-align: center;
            height: 35px;
        }
        .auto-style17 {
            width: 78px;
        }
        .auto-style18 {
            width: 88px;
            text-align: center;
        }
        .auto-style19 {
            height: 29px;
            text-align: right;
        }
        .auto-style20 {
            height: 29px;
            text-align: left;
        }
        .auto-style21 {
            text-align: left;
            height: 35px;
        }
        .auto-style22 {
            height: 29px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style19" colspan="2">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
            <td class="text-center" colspan="2" rowspan="2">
                <asp:Label ID="Label2" runat="server" Text="Sign up" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style19" colspan="2">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style19" colspan="2">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style20">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style5"></td>
            <td class="auto-style6"></td>
            <td class="auto-style19" colspan="2">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style22">Name</td>
            <td class="auto-style20">
                <asp:TextBox ID="txt_name" runat="server" Height="27px" Width="227px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-center" colspan="2" rowspan="2">
                <asp:Label ID="Label1" runat="server" Text="Login" Font-Bold="True"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td class="auto-style17" colspan="2">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="text-right" colspan="2">&nbsp;</td>
            <td class="text-center">&nbsp;</td>
            <td class="text-center">Age&nbsp;&nbsp;&nbsp;</td>
            <td class="text-left">
                <asp:TextBox ID="txt_age" runat="server" Height="27px" Width="227px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style17" colspan="2">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">User Name&nbsp;&nbsp; </td>
            <td class="auto-style3">
                <asp:TextBox ID="txt_UN" runat="server" Width="161px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td class="text-right" colspan="2">&nbsp;</td>
            <td class="text-center">&nbsp;</td>
            <td class="text-center">Address&nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td class="text-left">
                <asp:TextBox ID="txt_adress" runat="server" Height="27px" TextMode="MultiLine" Width="227px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style17" colspan="2">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Password</td>
            <td class="auto-style3">
                <asp:TextBox ID="txt_PW" runat="server" Width="161px" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td class="text-right" colspan="2">&nbsp;</td>
            <td class="text-center">&nbsp;</td>
            <td class="text-center">Phone</td>
            <td class="text-left">
                <asp:TextBox ID="txt_phone" runat="server" Height="27px" Width="227px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style17" colspan="2">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
        </tr>
        <tr>
            <td class="text-center" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" Width="54px" />
            </td>
            <td>&nbsp;</td>
            <td class="text-right" colspan="2">&nbsp;</td>
            <td class="text-center">&nbsp;</td>
            <td class="text-center">User Name</td>
            <td class="text-left">
                <asp:TextBox ID="txt_UN0" runat="server" Width="226px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style17" colspan="2">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="text-right" colspan="2">&nbsp;</td>
            <td class="text-center">&nbsp;</td>
            <td class="text-center">Password</td>
            <td class="text-left">
                <asp:TextBox ID="txt_PW0" runat="server" Width="226px" TextMode="Password" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style17" colspan="2">&nbsp;</td>
            <td class="auto-style18" colspan="2">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11"></td>
            <td class="auto-style12"></td>
            <td class="auto-style13"></td>
            <td class="auto-style14">
                &nbsp;</td>
            <td class="auto-style14" colspan="2">
                &nbsp;</td>
            <td class="auto-style14">
                &nbsp;</td>
            <td class="auto-style21">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Sign Up" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style17" colspan="2">&nbsp;</td>
            <td class="auto-style18" colspan="2">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

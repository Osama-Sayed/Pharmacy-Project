<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Med.aspx.cs" Inherits="Pharmacy_Proj.Med" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 107px;
        }
        .auto-style2 {
            width: 207px;
        }
        .auto-style4 {
            width: 161px;
        }
        .auto-style5 {
            margin-left: 0px;
        }
        .auto-style6 {
            width: 375px;
        }
        .auto-style7 {
            width: 293px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <asp:Label ID="lbl_WP" runat="server"></asp:Label>
       <table class="w-100">
           <tr>
               <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Medicine" BackColor="#CCCCCC" Font-Bold="True" />
               </td>
               <td class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Patient" OnClick="Button2_Click" />
               </td>
               <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" Text="Staff" OnClick="Button3_Click" />
               </td>
           </tr>
       </table>
    <table class="w-100">
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="text-left" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="text-left" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text="Add New Medicine"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="text-left" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">
                <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_name" runat="server" CssClass="auto-style5" Width="246px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style2">&nbsp;&nbsp;</td>
            <td class="auto-style4">
                <asp:Label ID="Label3" runat="server" Text="Formula Name "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_formula" runat="server" CssClass="auto-style5"  Width="247px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">
                <asp:Label ID="Label4" runat="server" Text="Expire Date"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_ex_date" runat="server" TextMode="Date" Width="248px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">
                <asp:Label ID="Label5" runat="server" Text="Price"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_price" runat="server" CssClass="offset-sm-0" Width="248px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">
                <asp:Label ID="Label6" runat="server" Text="Description"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_desc" runat="server" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">
                <asp:Label ID="Label7" runat="server" Text="Image"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="266px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Add" />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Update or Delete Medicine</td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Label ID="Label8" runat="server" Text="search"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_search" runat="server" OnTextChanged="txt_search_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td colspan="3">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="M_ID" DataSourceID="SqlDataSource1" Width="892px" >
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                            <asp:BoundField DataField="M_ID" HeaderText="M_ID" InsertVisible="False" ReadOnly="True" SortExpression="M_ID" />
                            <asp:BoundField DataField="M_Name" HeaderText="M_Name" SortExpression="M_Name" />
                            <asp:BoundField DataField="M_formula" HeaderText="M_formula" SortExpression="M_formula" />
                            <asp:BoundField DataField="M_Expire_Date" HeaderText="M_Expire_Date" SortExpression="M_Expire_Date" />
                            <asp:BoundField DataField="M_cost" HeaderText="M_cost" SortExpression="M_cost" />
                            <asp:BoundField DataField="M_description" HeaderText="M_description" SortExpression="M_description" />
                            <asp:BoundField DataField="M_image" HeaderText="M_image" SortExpression="M_image" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PharmacyConnectionString8 %>" SelectCommand="SELECT * FROM [Medical]" UpdateCommand="UPDATE [Medical] SET [M_Name] = @M_Name, [M_formula] = @M_formula, [M_Expire_Date] = @M_Expire_Date, [M_cost] = @M_cost, [M_description] = @M_description, [M_image] = @M_image WHERE [M_ID] = @M_ID" DeleteCommand="DELETE FROM [Medical] WHERE [M_ID] = @M_ID" InsertCommand="INSERT INTO [Medical] ([M_Name], [M_formula], [M_Expire_Date], [M_cost], [M_description], [M_image]) VALUES (@M_Name, @M_formula, @M_Expire_Date, @M_cost, @M_description, @M_image)" >
                        <DeleteParameters>
                            <asp:Parameter Name="M_ID" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="M_Name" Type="String" />
                            <asp:Parameter Name="M_formula" Type="String" />
                            <asp:Parameter DbType="Date" Name="M_Expire_Date" />
                            <asp:Parameter Name="M_cost" Type="Double" />
                            <asp:Parameter Name="M_description" Type="String" />
                            <asp:Parameter Name="M_image" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="M_Name" Type="String" />
                            <asp:Parameter Name="M_formula" Type="String" />
                            <asp:Parameter DbType="Date" Name="M_Expire_Date" />
                            <asp:Parameter Name="M_cost" Type="Double" />
                            <asp:Parameter Name="M_description" Type="String" />
                            <asp:Parameter Name="M_image" Type="String" />
                            <asp:Parameter Name="M_ID" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <br />

            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td colspan="3">
                <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="M_ID" DataSourceID="SqlDataSource2" Width="100%">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="M_ID" HeaderText="M_ID" InsertVisible="False" ReadOnly="True" SortExpression="M_ID" />
                        <asp:BoundField DataField="M_Name" HeaderText="M_Name" SortExpression="M_Name" />
                        <asp:BoundField DataField="M_formula" HeaderText="M_formula" SortExpression="M_formula" />
                        <asp:BoundField DataField="M_Expire_Date" HeaderText="M_Expire_Date" SortExpression="M_Expire_Date" />
                        <asp:BoundField DataField="M_cost" HeaderText="M_cost" SortExpression="M_cost" />
                        <asp:BoundField DataField="M_description" HeaderText="M_description" SortExpression="M_description" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PharmacyConnectionString9 %>" SelectCommand="SELECT [M_ID]
      ,[M_Name]
      ,[M_formula]
      ,[M_Expire_Date]
      ,[M_cost]
      ,[M_description]
  
  FROM [dbo].[Medical] WHERE CONVERT(NVARCHAR , [M_ID])
							+[M_Name]
							+[M_formula]
							+CONVERT(NVARCHAR ,[M_Expire_Date])
							+CONVERT(NVARCHAR ,[M_cost])
							+[M_description]
							LIKE '%' + @VAR +'%'">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txt_search" Name="VAR" PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>

            </td>
        </tr>
    </table>
  
</asp:Content>

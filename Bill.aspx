<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Bill.aspx.cs" Inherits="Pharmacy_Proj.Bill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
        width: 102px;
    }
        .auto-style6 {
            margin-left: 40px;
        }
        .auto-style9 {
            width: 15%;
        }
        .auto-style10 {
            width: 1%;
        }
        .auto-style13 {
            width: 70%;
        }
        .auto-style14 {
            width: 115px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style14">
                <asp:Label ID="lbl_bill_ID" runat="server" Text="Bill Code"></asp:Label>
            </td>
            <td class="auto-style13">
                <asp:Label ID="lbl_B_N" runat="server"></asp:Label>
            </td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">
                &nbsp;</td>
            <td class="auto-style13">
                &nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="5" class="auto-style6">
                <div class="text-center">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource4">
                    <Columns>
                        <asp:BoundField DataField="Order Code" HeaderText="Order Code" ReadOnly="True" SortExpression="Order Code" InsertVisible="False" />
                        <asp:BoundField DataField="Medicine Name" HeaderText="Medicine Name" SortExpression="Medicine Name" >
                        </asp:BoundField>
                        <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" >
                        </asp:BoundField>
                        <asp:BoundField DataField="Cost Per Unit" HeaderText="Cost Per Unit" SortExpression="Cost Per Unit" />
                        <asp:BoundField DataField="Client Name" HeaderText="Client Name" SortExpression="Client Name" >
                        </asp:BoundField>
                        <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" >
                        </asp:BoundField>
                    </Columns>
                    <EmptyDataTemplate>
                        There is no order yet
                    </EmptyDataTemplate>
                </asp:GridView>
                </div>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:PharmacyConnectionString6 %>" SelectCommand="SELECT [order_ID] as 'Order Code'
      ,[M_Name] as 'Medicine Name'
      ,[Qantity] as 'Quantity'
	  ,[M_cost] as 'Cost Per Unit'
      ,[P_Name] as 'Client Name'
      ,[Total] 
  FROM [dbo].[Order_details] as od
  join Medical as m on od.M_id=m.M_ID
  join Patient as p on od.p_id = p.P_ID
where bill_id = @b
" >
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lbl_B_N" Name="b" PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td colspan="5">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="5">
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Add Order" />
            </td>
        </tr>
        <tr>
            <td colspan="5">
                <asp:Panel ID="Panel1" runat="server">
                    <table class="w-100">
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="text-align: center">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="text-align: center">
                                &nbsp;Search&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="txt_s" runat="server" AutoPostBack="True" OnTextChanged="txt_s_TextChanged"></asp:TextBox>
                                &nbsp;
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center">&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <div class="text-center">
                                    <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CssClass="auto-style1" DataKeyNames="Medicine Code" DataSourceID="SqlDataSource1" Width="100%" >
                                        <Columns>
                                            <asp:CommandField ShowSelectButton="True" />
                                            <asp:BoundField DataField="Medicine Code" HeaderText="Medicine Code" InsertVisible="False" ReadOnly="True" SortExpression="Medicine Code" />
                                            <asp:BoundField DataField="Medicine Name" HeaderText="Medicine Name" SortExpression="Medicine Name" />
                                            <asp:BoundField DataField="Medicine formula" HeaderText="Medicine formula" SortExpression="Medicine formula" />
                                            <asp:BoundField DataField="Medicine Expire Date" HeaderText="Medicine Expire Date" SortExpression="Medicine Expire Date" />
                                            <asp:BoundField DataField="Medicine cost" HeaderText="Medicine cost" SortExpression="Medicine cost" />
                                            <asp:BoundField DataField="Medicine description" HeaderText="Medicine description" SortExpression="Medicine description" />
                                            <asp:TemplateField HeaderText="Medicine Image" SortExpression="Medicine Image">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("[Medicine Image]") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("[Medicine Image]") %>' />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Quantity">
                                                <ItemTemplate>
                                                    <asp:TextBox ID="txt_quantity" runat="server" type="number"></asp:TextBox>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Add">
                                                <ItemTemplate>
                                                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                        <EmptyDataTemplate>
                                            No matching result
                                        </EmptyDataTemplate>
                                    </asp:GridView>
                                </div>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PharmacyConnectionString2 %>" SelectCommand="SELECT M_ID AS 'Medicine Code', M_Name AS 'Medicine Name', M_formula AS 'Medicine formula', M_Expire_Date AS 'Medicine Expire Date', M_cost AS 'Medicine cost', M_description AS 'Medicine description', M_image AS 'Medicine Image' FROM Medical"></asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="text-center">
                                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CssClass="auto-style2" DataKeyNames="Medicine code" DataSourceID="SqlDataSource2" Width="100%" AllowPaging="True" AllowSorting="True">
                                        <Columns>
                                            <asp:CommandField ShowSelectButton="True" />
                                            <asp:BoundField DataField="Medicine code" HeaderText="Medicine code" InsertVisible="False" ReadOnly="True" SortExpression="Medicine code" />
                                            <asp:BoundField DataField="Medicine Name" HeaderText="Medicine Name" SortExpression="Medicine Name" />
                                            <asp:BoundField DataField="Medicine formula" HeaderText="Medicine formula" SortExpression="Medicine formula" />
                                            <asp:BoundField DataField="Medicine Expire Date" HeaderText="Medicine Expire Date" SortExpression="Medicine Expire Date" />
                                            <asp:BoundField DataField="Medicine Cost" HeaderText="Medicine Cost" SortExpression="Medicine Cost" />
                                            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                                            <asp:TemplateField HeaderText="Medicine Image" SortExpression="Medicine Image">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("[Medicine Image]") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("[Medicine Image]") %>' />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Quantity">
                                                <ItemTemplate>
                                                    <asp:TextBox ID="txt_quantity2" runat="server" type="number"></asp:TextBox>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Add">
                                                <ItemTemplate>
                                                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Add" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                        <EmptyDataTemplate>
                                            No matching result
                                        </EmptyDataTemplate>
                                    </asp:GridView>
                                </div>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PharmacyConnectionString3 %>" SelectCommand="SELECT [M_ID] as 'Medicine code',[M_Name] as 'Medicine Name',[M_formula] as 'Medicine formula',[M_Expire_Date] as 'Medicine Expire Date',[M_cost] as 'Medicine Cost',M_description as 'Description',M_image as 'Medicine Image'FROM [dbo].[Medical] where convert(nvarchar(50),[M_ID]) + [M_Name] + [M_formula] + convert(nvarchar(50),[M_Expire_Date]) + convert(nvarchar(50),[M_cost]) + M_description like '%'+@se+'%'">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="txt_s" Name="se" PropertyName="Text" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td colspan="5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">
                <asp:Label ID="lbl_cost" runat="server" Text="Your total cost = "></asp:Label>
            </td>
            <td class="auto-style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbl_total_bill" runat="server"></asp:Label>
            </td>
            <td class="auto-style9">
                <asp:Button ID="bot_conf" runat="server" Text="Confirm Shopping" OnClick="bot_conf_Click" />
            </td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

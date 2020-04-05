<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Patient.aspx.cs" Inherits="Pharmacy_Proj.Patient" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 296px;
        }
        .auto-style2 {
            width: 149px;
        }
        .auto-style3 {
            margin-left: 40px;
        }
    .auto-style4 {
        width: 296px;
        height: 27px;
    }
    .auto-style5 {
        width: 149px;
        height: 27px;
    }
    .auto-style6 {
        height: 53px;
    }
    .auto-style7 {
        height: 52px;
    }
    .auto-style8 {
        height: 27px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
          <asp:Label ID="lbl_WP" runat="server"></asp:Label>
       <table class="w-100">
           <tr>
               <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Medicine" BackColor="#F0F0F0" Font-Bold="False" />
               </td>
               <td class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Patient" BackColor="#CCCCCC" Font-Bold="True" OnClick="Button2_Click" />
               </td>
               <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" Text="Staff" OnClick="Button3_Click" />
               </td>
           </tr>
       </table>

          <table class="w-100">
              <tr>
                  <td class="auto-style1">&nbsp;</td>
                  <td colspan="3">&nbsp;</td>
              </tr>
              <tr>
                  <td class="auto-style1">&nbsp;</td>
                  <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Update or Delete Patient</td>
              </tr>
              <tr>
                  <td class="auto-style1">&nbsp;</td>
                  <td class="auto-style2">&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td class="auto-style1">&nbsp;</td>
                  <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Search</td>
                  <td class="auto-style3">
                      <asp:TextBox ID="txt_search_patient" runat="server" AutoPostBack="True" OnTextChanged="txt_search_patient_TextChanged" Width="180px"></asp:TextBox>
                  </td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td class="auto-style1">&nbsp;</td>
                  <td class="auto-style2">&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td class="auto-style4"></td>
                  <td class="auto-style5"><strong>Delete Patient</strong></td>
                  <td class="auto-style8"></td>
                  <td class="auto-style8"></td>
              </tr>
              <tr>
                  <td class="auto-style1">&nbsp;</td>
                  <td class="auto-style2">&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td class="auto-style1">&nbsp;</td>
                  <td class="auto-style2">Select Name</td>
                  <td>
                      <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="P_Name" DataValueField="P_ID">
                      </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PharmacyConnectionString15 %>" SelectCommand="SELECT [P_Name], [P_ID] FROM [Patient]"></asp:SqlDataSource>
                  </td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td class="auto-style1">&nbsp;</td>
                  <td class="auto-style2">&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td class="auto-style1">&nbsp;</td>
                  <td class="auto-style2">&nbsp;</td>
                  <td>
                      <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Delete" />
                  </td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td class="auto-style1">&nbsp;</td>
                  <td class="auto-style2">&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td class="auto-style1">&nbsp;</td>
                  <td class="auto-style2"><strong>Update Patient</strong></td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td class="auto-style1">&nbsp;</td>
                  <td class="auto-style2">&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td class="auto-style1">&nbsp;</td>
                  <td class="auto-style2">&nbsp;<strong><asp:Label ID="Label1" runat="server" Text="Select Name"></asp:Label>
                      </strong></td>
                  <td>
                      <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="P_Name" DataValueField="P_ID" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                      </asp:DropDownList>
                  </td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td class="auto-style1">&nbsp;</td>
                  <td class="auto-style2">&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td class="auto-style1">&nbsp;</td>
                  <td class="auto-style2">Name</td>
                  <td>
                      <asp:TextBox ID="txt_u_Pname" runat="server" Width="248px"></asp:TextBox>
                  </td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td class="auto-style1">&nbsp;</td>
                  <td class="auto-style2">&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td class="auto-style1">&nbsp;</td>
                  <td class="auto-style2">Age&nbsp;&nbsp;&nbsp; </td>
                  <td>
                      <asp:TextBox ID="txt_u_PAge" runat="server" TextMode="Number" Width="248px"></asp:TextBox>
                  </td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td class="auto-style1">&nbsp;</td>
                  <td class="auto-style2">&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td class="auto-style1">&nbsp;</td>
                  <td class="auto-style2">User Name</td>
                  <td>
                      <asp:TextBox ID="txt_u_PUN" runat="server" Width="248px"></asp:TextBox>
                  </td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td class="auto-style1">&nbsp;</td>
                  <td class="auto-style2">&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td class="auto-style1">&nbsp;</td>
                  <td class="auto-style2">Phone</td>
                  <td>
                      <asp:TextBox ID="txt_u_Pphone" runat="server" Width="247px"></asp:TextBox>
                  </td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td class="auto-style1">&nbsp;</td>
                  <td class="auto-style2">&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td class="auto-style1">&nbsp;</td>
                  <td class="auto-style2">Address</td>
                  <td>
                      <asp:TextBox ID="txt_u_PAdd" runat="server" Width="248px"></asp:TextBox>
                  </td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td class="auto-style1">&nbsp;</td>
                  <td class="auto-style2">&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td class="auto-style1">&nbsp;</td>
                  <td class="auto-style2">Password</td>
                  <td>
                      <asp:TextBox ID="txt_u_PPW" runat="server" Width="248px"></asp:TextBox>
                  </td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td class="auto-style1">&nbsp;</td>
                  <td class="auto-style2">&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td class="auto-style1">&nbsp;</td>
                  <td class="auto-style2">&nbsp;</td>
                  <td>
                      <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Update" />
                  </td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td class="auto-style1">&nbsp;</td>
                  <td class="auto-style2">&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td class="auto-style1">&nbsp;</td>
                  <td colspan="3">
                        <asp:GridView ID="GridView1_all_Patients_Data" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" Width="100%">
                            <Columns>
                                <asp:BoundField DataField="User Name" HeaderText="User Name" SortExpression="User Name" />
                                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                                <asp:BoundField DataField="Patient Name" HeaderText="Patient Name" SortExpression="Patient Name" />
                                <asp:BoundField DataField="Patient age" HeaderText="Patient age" SortExpression="Patient age" />
                                <asp:BoundField DataField="Patient adress" HeaderText="Patient adress" SortExpression="Patient adress" />
                                <asp:BoundField DataField="Patient Phone" HeaderText="Patient Phone" SortExpression="Patient Phone" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:PharmacyConnectionString17 %>" SelectCommand="SELECT [Uname] AS 'User Name'
      ,[Password]
      
      ,[P_Name] AS 'Patient Name'
      ,[P_age] AS 'Patient age'
      ,[P_Address] AS 'Patient adress'
	  ,[P_Phone] AS 'Patient Phone'
  
  FROM [dbo].[Login] JOIN Patient ON Login.P_id = Patient.P_ID WHERE ROLE = 'Patient'"></asp:SqlDataSource>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style1">&nbsp;</td>
                  <td colspan="3">
                        &nbsp;</td>
              </tr>
              <tr>
                  <td class="auto-style1">&nbsp;</td>
                  <td colspan="3">
                      
                                          <asp:GridView ID="GridView_show_patients_data" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Width="100%">
                                              <Columns>
                                                  <asp:CommandField ShowSelectButton="True" />
                                                  <asp:BoundField DataField="User Name" HeaderText="User Name" SortExpression="User Name" />
                                                  <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                                                  <asp:BoundField DataField="Patient Name" HeaderText="Patient Name" SortExpression="Patient Name" />
                                                  <asp:BoundField DataField="Patient Age" HeaderText="Patient Age" SortExpression="Patient Age" />
                                                  <asp:BoundField DataField="Patient Adress" HeaderText="Patient Adress" SortExpression="Patient Adress" />
                                                  <asp:BoundField DataField="Patient Phone" HeaderText="Patient Phone" SortExpression="Patient Phone" />
                                              </Columns>
                                          </asp:GridView>
                                          <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PharmacyConnectionString16 %>" SelectCommand="SELECT [Uname] AS 'User Name'
      ,[Password]
      
      ,[P_Name] AS 'Patient Name'
      ,[P_age] AS 'Patient Age'
      ,[P_Address] AS 'Patient Adress'
	  ,[P_Phone] AS 'Patient Phone'
  
  FROM [dbo].[Login] JOIN Patient ON Login.P_id = Patient.P_ID WHERE Uname + Password + P_Name +convert(nvarchar, P_age) + P_Address + P_Phone like '%' + @PAR +'%'">
                                              <SelectParameters>
                                                  <asp:ControlParameter ControlID="txt_search_patient" Name="PAR" PropertyName="Text" />
                                              </SelectParameters>
                                          </asp:SqlDataSource>
                  </td>
              </tr>
          </table>

</asp:Content>

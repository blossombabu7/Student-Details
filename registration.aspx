<%@ Page Title="" Language="C#" MasterPageFile="~/reg.Master" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="studentdetails.registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row mt">
          		<div class="col-lg-12">
          			<div class="form-panel">
                  	  <h4 class="mb">NEW STUDENT REGISTRATION</h4>
                      <div>
          			  <table class="table" align="left">
                            <tr>
                             <td valign="middle">
                                    Admission No
                                    <span class="auto-style3">*</span>
                                </td>
                                <td valign="middle">
                                    <div class="form-group">
                                    <asp:TextBox ID="txtaddno" runat="server" CssClass="form-control" AutoCompleteType="Disabled"  />    
                                    </div>
                                </td>
                                </tr>
                            <tr>
                             <td valign="middle">
                                    Name
                                    <span class="auto-style3">*</span>
                                </td>
                                <td valign="middle">
                                    <div class="form-group">
                                    <asp:TextBox ID="txtname" runat="server" CssClass="form-control" AutoCompleteType="Disabled"  />    
                                    </div>
                                </td>
                                </tr>
                            <tr>
                             <td valign="middle">
                                    Class
                                    <span class="auto-style3">*</span>
                                </td>
                                <td valign="middle">
                                    <div class="form-group">
                                    <asp:TextBox ID="txtclass" runat="server" CssClass="form-control" AutoCompleteType="Disabled"  />    
                                    </div>
                                </td>
                                </tr>
                            <tr>
                             <td valign="middle">
                                    Division
                                    <span class="auto-style3">*</span>
                                </td>
                                <td valign="middle">
                                    <div class="form-group">
                                    <asp:TextBox ID="txtdivsion" runat="server" CssClass="form-control" AutoCompleteType="Disabled"  />    
                                    </div>
                                </td>
                                </tr>
                            <tr>
                             <td valign="middle">
                                    Address
                                    <span class="auto-style3">*</span>
                                </td>
                                <td valign="middle">
                                    <div class="form-group">
                                    <asp:TextBox ID="txtaddress" runat="server" CssClass="form-control" AutoCompleteType="Disabled"  />    
                                    </div>
                                </td>
                                </tr>
                            <tr>
                                <td valign="middle">
                                    Gender
                                    <span class="auto-style3">*</span>
                                </td>
                                <td valign="middle">
                                    <div class="form-group">
                                    <asp:RadioButton ID="male" runat="server" GroupName="Gender" Text="MALE" />
                                    <asp:RadioButton ID="female" runat="server"  GroupName="Gender" Text="FEMALE" />    
                                    </div>
                                </td>
                                </tr>
                              <tr>
                             <td valign="middle">
                                    Contact
                                    <span class="auto-style3">*</span>
                                </td>
                                <td valign="middle">
                                    <div class="form-group">
                                    <asp:TextBox ID="txtcontact" runat="server" CssClass="form-control" AutoCompleteType="Disabled"  />    
                                    </div>
                                </td>
                                </tr>
                            <tr>
                              <td valign="middle">
                                    Email_id <span class="auto-style3">*</span>
                                </td>
                                <td valign="middle">
                                    <div class="form-group">
                                    <asp:TextBox ID="txtmail" runat="server" CssClass="form-control" AutoCompleteType="Disabled"  />                      
                          <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
              ErrorMessage="enter a email id" ControlToValidate="txtmail"
                  ValidationGroup="vgSubmit" ForeColor="Red"></asp:RequiredFieldValidator>


              <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
              runat="server" ErrorMessage="Please Enter Valid Email ID"
                  ValidationGroup="vgSubmit" ControlToValidate="txtmail"
                  CssClass="requiredFieldValidateStyle"
                  ForeColor="Red"
                  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                  </asp:RegularExpressionValidator>

                       </div>
                      </td>                        
                             </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" />

                                </td>
                                </tr>
                            </table>
                          
                        
 </div></div></div>
    </div>

</asp:Content>

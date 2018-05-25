<%@ Page Title="" Language="C#" MasterPageFile="~/reg.Master" AutoEventWireup="true" CodeBehind="edit.aspx.cs" Inherits="studentdetails.edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row mt">
          		<div class="col-lg-12">
          			<div class="form-panel">
                  	  <h4 class="mb">Student Registration</h4>
                      <div>
                          <table class="table" align="left">
                             <tr>
                                <td valign="middle">
                                     Name / Amission No.
                                    <span class="auto-style3">*</span>
                                </td>
                                <td valign="middle">
                                    <div class="form-group">
                                    <asp:TextBox ID="txtname" runat="server" CssClass="form-control" AutoCompleteType="Disabled"  />   
                                                             <asp:HiddenField ID="hdempid" runat="server" /> 
                                    </div>
                                </td>
                                 <td valign="middle">
                                    <div class="form-group">
                                        <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
                                    </div>                         
                                </td>  
                                 <td valign="middle">
                                     
                                </td>        
                                 </tr>
                              <tr>
                                <td valign="middle">
                                     class
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
                                     division
                                    <span class="auto-style3">*</span>
                                </td>
                                  <td valign="middle">
                                    <div class="form-group">
                                    <asp:TextBox ID="txtdivision" runat="server" CssClass="form-control" AutoCompleteType="Disabled"  />    
                                    </div>
                                </td>
                                  </tr>
                               
                               <tr>
                                <td valign="middle">
                                     contact
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
                  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"> </asp:RegularExpressionValidator>

                       </div>
                      </td>   
                                   </tr>
                              <tr>
                              <td>
                                  <asp:Button ID="Button2" runat="server" Text="SAVE" Height="26px" OnClick="Button2_Click" />
                              </td>
                              <td>
                                  <asp:Button ID="Button3" runat="server" Text="DELETE" OnClick="Button3_Click" />
                              </td>
                              </tr>
                                   </table>
                          
                          
                          </div>
                          </div>
                      </div>
        </div>

</asp:Content>

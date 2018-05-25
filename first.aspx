<%@ Page Title="" Language="C#" MasterPageFile="~/reg.Master" AutoEventWireup="true" CodeBehind="first.aspx.cs" Inherits="studentdetails.first" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    div class="row mt">
                    <div class="col-lg-12" id="placeholder">
          			<div class="form-panel">
                  	  <h4 class="mb"><i class="fa fa-angle-right"></i><b>WELCOME TO STUDENT MANAGEMENT SYSTEM</b></h4>
                          <div>
                      <table class="table" align="center">
                          <tr>
                      
                       <td valign="middle">
                      <div class="form-group">
                          <asp:Button ID="Button1" runat="server" Text="NEW REGISTRATION" OnClick="Button1_Click" />
                          </div>
                           </td>
                              </tr>
                          <tr>
                      
                       <td valign="middle">
                      <div class="form-group">
                          <asp:Button ID="Button2" runat="server" Text="MODIFICATIONS" OnClick="Button2_Click" />
                          </div>
                           </td>
                              </tr>
                                                
                      
 </table>
                              </div>
                          </div>
                        </div>
 
                       </div>
                   
</asp:Content>

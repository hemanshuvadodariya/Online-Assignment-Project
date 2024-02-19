<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add_Topic.aspx.cs" Inherits="Project_A.Add_Topic" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="bootstrap/bootstrap.min.css" rel="stylesheet" />
    <link href="datatable/data/jquery.dataTables.min.css" rel="stylesheet" />
    <link href="fontawesome/font/font-awesome.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
     <style>
.box{
     border: 1px solid;
  padding: 10px;
  box-shadow: 10px 10px 10px 10px #888888;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card box">
                     <div class="card-body">
                         <div class="row">
                             <center>
                                        <h3>Add Topic </h3>              
                                    </center>
                         </div>
                          <div class="row">
                             <div class="col">
                                  <label>Name:</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="assignment" CssClass="form-control" runat="server" placeholder="Assignment name"></asp:TextBox>
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="assignment" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                 </div>
                                 <div class="form-group">
                                 <label>Select Branch:</label>
                                 <asp:DropDownList ID="DropDownList1" runat="server">
                                     <asp:ListItem Value="B.com">B.com</asp:ListItem>
                                     <asp:ListItem Value="BBA">BBA</asp:ListItem>
                                     <asp:ListItem Value="BCA">BCA</asp:ListItem>
                                  </asp:DropDownList>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                     </div>
                                 
                                <label>End Date</label>
                                 <div class="form-group">
                                     
                                  <asp:TextBox ID="enddate" runat="server" CssClass="form-control" placeholder="date" type="date"></asp:TextBox>
                                  </div>
                                  <div class="form-group">
                                    
                                 <label>Select Student:</label>
                                 <asp:DropDownList ID="DropDownList2" runat="server">
                                     <asp:ListItem Value="john">john</asp:ListItem>
                                     <asp:ListItem Value="jonny">jonny</asp:ListItem>
                                     <asp:ListItem Value="jonardhan">jonardhan</asp:ListItem>
                                  </asp:DropDownList>
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList2" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                     </div>
                                 <div class="form-group">
                                     <asp:Button ID="Button1" runat="server" Text="Add Topic" class="btn btn-primary btn-block btn-lg" OnClick="Button1_Click"/>
                                 </div>
                             </div>
                         </div>
                     </div>
                     <a href="Homepage.aspx"><< back to home</a>
                </div> 
            </div>
        </div>
    </div>

    </form>
</body>
</html>

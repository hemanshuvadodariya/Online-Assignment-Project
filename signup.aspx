<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="Project_A.signup" %>

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
<body style="background-color:paleturquoise";>
    <form id="form1" runat="server">
        <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card box">
                     <div class="card-body">
                         <div class="row">
                             <div class="col">
                                    <center>
                                        <img src="images/user.png" width="150px"/>
                                    </center>
                             </div>
                         </div>
                         <div class="row">
                             <div class="col">
                                    <center>
                                        <h3>Sign In</h3>    
                                        <a href="userlogin.aspx"><h6>Already have Account to Login</h6></a>
                                    </center>
                             </div>
                         </div>
                          <div class="row">
                             <div class="col">
                                 <hr />
                             </div>
                         </div>
                          <div class="row">
                             <div class="col">
                                  <label>Username</label>
                                 <div class="form-group">
                                 <asp:TextBox ID="txtUsername" CssClass="form-control" runat="server" placeholder="Username"></asp:TextBox>
                                 </div>
                                 <label>Email</label><div class="form-group">
                                 <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required" ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                                 </div>
                                
                                 <label>Password</label>&nbsp;<div class="form-group">
                                 <asp:TextBox ID="txtPassword" CssClass="form-control" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required" ControlToValidate="txtPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                                 </div>
                                 <div class="form-group">
                                     
                                     <asp:Button ID="Button1" runat="server" class="btn btn-primary btn-block btn-lg"  Text="Sign Up" OnClick="Button2" />
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

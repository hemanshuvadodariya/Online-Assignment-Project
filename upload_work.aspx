<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="upload_work.aspx.cs" Inherits="Project_A.upload_work" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="bootstrap/bootstrap.min.css" rel="stylesheet" />
    <link href="datatable/data/jquery.dataTables.min.css" rel="stylesheet" />
    <link href="fontawesome/font/font-awesome.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <style>
        body{
            font-family:Arial, Helvetica, sans-serif;
            /*background-image:url(images/optical-fiber-straws-with-light.jpg);
            background-repeat: no-repeat;*/
            height:500%;
            color:black;
            padding:0 50px ;
        }
        h3{
            font-family:Arial;
            font-stretch: 1% 500%;
            font-size:40px;
        
        }
        .cad{
            color:black;
        }
        .pad{
           margin:0 20px;
           border-radius:6px;
          
           color:black;
       }
       .pad:hover{
           color:black;
       }
       .underlined{
           background-color: #333;
           color: #fff;
           height:2px;
           width:1225px;
           margin:0 20px;
       }
    </style>
      <script>        
          function file() {

              var url1 = document.getElementById("FileUpload1");
             // alert(url1);
              var freader = new FileReader();
              freader.readAsDataURL(url1.files[0]);
             freader.onloadend = function (event) {
                 var img = document.getElementById("Image1");
                  img.src = event.target.result;
              }

          }
      </script>
</head>
<body>
    <form id="form1" runat="server">
            <div>
               <nav class="navbar">
                <h3>Online Assigament checker Project</h3>
                <nav class="navbar navbar-expand-lg navbar-light">
                    
                 <div class="collapse navbar-collapse" id="navbarSupportedContent">
                     <ul class="navbar-nav mr-auto">
                           <li class="nav-item pad">
                              <asp:LinkButton class="nav-item cad" href="logout.aspx" ID="Linkbutton3" runat="server">Logout</asp:LinkButton>
                           </li>
                      
                 </ul>  
               </div>
             </nav>
            </nav>                
        </div>       
        <div class="underlined"></div>
          <div class="row">
                             <div class="col">
                                  <label>Topic Name</label>
                                 <div class="form-group">
                                 <asp:TextBox ID="txtUsername" CssClass="form-control" runat="server" placeholder="topicname"></asp:TextBox>
                                 </div>
                                  <label>Stream</label>
                                 <div class="form-group">
                                 <asp:TextBox ID="txtstream" CssClass="form-control" runat="server" placeholder="stream"></asp:TextBox>
                                 </div>
                                 <label>End Date:</label>
                                 <asp:TextBox runat="server" CssClass="form-control" ID="dat" OnTextChanged="dat_TextChanged"></asp:TextBox>
                                <br />
                                <div class="form-group">
                                     <asp:Image ID="Image1" runat="server" />
                                       <asp:FileUpload ID="FileUpload1" runat="server"   accept=".pdf" onchange="file()" />
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="FileUpload1" ForeColor="Red" ></asp:RequiredFieldValidator>
                                       <asp:Button ID="Button1" runat="server" Text="Browser" OnClick="Button1_Click" />
                                        <asp:Label runat="server" ID="label" Text="Label"></asp:Label>           
                                </div>   
                                 <asp:Button ID="Button2" runat="server" Text="Upload" OnClick="Button2_Click" />
                             </div>
                         </div>
    </form>
</body>
</html>

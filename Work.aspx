<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Work.aspx.cs" Inherits="Project_A.Work" %>

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
        </style>

</head>
<body>
    <form id="form1" runat="server">
          <div>
               <nav class="navbar">
                <h3>Online Assigament checker Project</h3>
                   <div>  
        <asp:Button ID="bttnpdf" runat="server" Text="Click for open PDF" Font-Bold="True" OnClick="bttnpdf_Click" />  
    </div>      
            </nav>                
        </div>   
    </form>
</body>
</html>

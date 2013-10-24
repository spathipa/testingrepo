﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
         <link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
    <link href="bootstrap/css/bootstrap-responsive.css" rel="stylesheet" />
       <script src="scripts/jquery-2.0.3.js"></script>
    <script src="bootstrap/js/bootstrap.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <button type="button" data-toggle="modal" data-target="#myModal">Launch modal</button>
        
    
    </div>
        
    <div id="themodal" class="modal hide fade">
        <div class ="modal-header">
            <button type ="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h3>Modal header</h3>
       </div>
        <div class="modal-body">
           <p> Are you sure you want to do this ?</p>
          <div class="progress progress-striped">
              <div id="doitprogress" class="bar"></div>
          </div> 
        </div>
        <div class="modal-footer">
         <a href="#" class="btn" data-dismiss="modal">Close</a>
         <a id="yesbutton" href="#" class="btn btn-primary" data-loading-text="Doing it...">Yes! Do it now!</a>
        </div>
     </div>


     <script>


         $(function () {


             var yesButton = $("#yesbutton");
             var theModal = $("#themodal");
             var progress = $("#doitprogress");


             yesButton.click(function () {
                 yesButton.button("loading");


                 var counter = 0;
                 var countDown = function () {
                     counter++;
                     if (counter == 11) {
                         yesButton.button("reset");
                         theModal.modal("hide");
                     }
                     else {
                         progress.width(counter * 10 + "%");
                         setTimeout(countDown, 500);
                     }
                 };
                 setTimeout(countDown, 500);
             });




         });


                </script>

    </form>
</body>
</html>

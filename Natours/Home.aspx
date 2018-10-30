<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Natours.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="script/shr/jquery-min.js"></script>
    <script src="script/shr/jQuery-print.js"></script>
    <script type="text/javascript">

        $(function(){
            $("#btnPrint").click(function () {
                PrintImageFromURL();
            });
        });

        function PrintImageFromURL() {
            alert("PRINT 3 start");
           // debugger;
            var url = "http://172.16.120.83/SFZMISCaptureService/api/dms/getdocument?relurl=679/112200007-4.jpeg&rnd=33705";
            var img = window.document.createElement("img");
            img.src = url;
            $(img).addClass("printcontent");
            //$(img).css({ display: "none" });
            window.document.body.appendChild(img);
           // $(img).print();
            console.log("PrintImageFromURL end...");

            setTimeout(function () { $(img).print(); }, 99);
        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
               <button id="btnPrint" name="btnPrint" value="PRINT">Print Image</button>
        </div>
    </form>
</body>
</html>

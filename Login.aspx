<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Website1.Login" %>

<!DOCTYPE html>
<script runat="server">   

</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
                body{
    background-image:url('./image/loginpage.jpg');
    background-repeat:no-repeat;
    background-size:cover;
    max-width: 100%; 
    height: auto; 
    display: block; 
    margin: 0 auto;
}
            
        .auto-style1 {
            height: 358px;
            background-color:rgba(0,0,0,0.5);
            padding-left:40px;
            margin-top:21%;
            width: 555px;
            border-radius:20px;
            margin-left: 59px;
            color:white;
        }
            
        .auto-style2 {
            margin-left: 200px;
        }
                            
        .auto-style9 {
            width: 215px;
            height: 177px;
            background-image:url('std.png');
            margin-left: -12px;
            margin-top: -5%;
        }
            
        .auto-style10 {
            width: 316px;
            height: 181px;
            margin-left: 201px;
            margin-top: -28%;
            margin-right:10px;
        }
            
        .auto-style7 {
            margin-left: 24px;
            width: 150px;
        }
        .auto-style8 {
            margin-left: 35px;
            width: 144px;
        }
            
        .auto-style6 {
            margin-left: 145px;
            margin-top: 16px;
        }
                   
        </style>
</head>
<body style="height: 340px; width: 505px; margin-left: 300px">
    <form id="form1" runat="server">
    <div class="auto-style1" style="font-size: medium; font-weight: bold">
        <h3 class="auto-style2">&nbsp;</h3>
        <h3 class="auto-style2" style="font-size: x-large">LOGIN FORM</h3>
        <p class="auto-style2">&nbsp;</p>
        <div class="auto-style9">
            </div>
            <div class="auto-style10" style="font-size: 18px">
                <br />
        Username  <input type="text" id="username" name="username" class="auto-style7" /><br />
        <br />
        Password<input type="password" id="password" name="password" class="auto-style8" /> <br />
        <br />
        <asp:Button ID="Button2" runat="server" CssClass="auto-style6" OnClick="Button2_Click" Text="Login" Font-Bold="True" Font-Names="Arial" Font-Underline="False" Width="69px" BorderColor="#CCCCCC" />
        <br />
            
        </div>
         <br />
        </div>
    </form>
</body>
</html>

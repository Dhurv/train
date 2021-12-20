<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin-Login</title>
</head>
<style>
    body{
        background: url(back.jpg);
    background-size: 100%;
    background-repeat: no-repeat;
    
    }
    table{
        background-color:whitesmoke;
        border: 5px solid black;
        border-radius: 25px;
        font-size: 20px;
    }
    #type{
        height: 32px;
        width: 300px;
        border: 0;
        outline: 0;
        background: transparent;
        border-bottom: 3px solid black;
        color: black;
        font-size: 25px;
    }
    #btn{
        height: 30px;
        width: 100px;
        background-color: orange;
        border-radius: 5px;
        font-size: 20px;
    }

    input::-webkit-input-placeholder{
        font-size: 20px;
        line-height: 3;
        color: black;
    }
</style>
<body>
    <br><br><br><br><br><br><br>   
    <form action="/adminPanal">
    <table width="20%" border="0" cellspacing="40" align="center">
        <tr>
            <td align="center"><img src="ad.png" width="50%"></td>
        </tr>
        <tr>
            <td><input type="text" placeholder="Email" id="type"></td>
        </tr>
        <tr>
            <td><input type="password" placeholder="******" id="type"></td>
        </tr>

        <tr>
            <td align="center"><input type="submit" value="Login" id="btn"></td>
        </tr>
    </table>
    </form> 
    
</body>
</html>
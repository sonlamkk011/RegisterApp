<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        .alert {
            padding: 20px;
            background-color: paleturquoise;
            color: black;
            text-align: center;
        }

        .closebtn {
            margin-left: 15px;
            color: black;
            font-weight: bold;
            float: right;
            font-size: 22px;
            line-height: 20px;
            cursor: pointer;
            transition: 0.3s;
            text-align: center;
        }

        .closebtn:hover {
            color: black;
        }
        .h2 {
            text-align: center;
        }

    </style>
</head>
<body>

<h1 class="h2"> Registration information</h1>
<%
    String fullname = (String) request.getAttribute("fullName");
    String email = (String) request.getAttribute("email");
    String phone = (String) request.getAttribute("phone");
    String password = (String) request.getAttribute("password");
    String birthday = (String) request.getAttribute("birthday");
    String username = (String) request.getAttribute("username");
%>
</table>
<h2 class="h2">
    Fullname: <%=fullname%> <br/>
    Email:  <%=email%><br/>
    Password: <%=password%><br/>
    Birthday: <%=birthday%><br/>
    Phone Number:  <%=phone%><br/>
    Username: <%=username%>
</h2>

<div class="alert">
    <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
    <strong>Register Sucsess</strong>
</div>

</body>
</html>

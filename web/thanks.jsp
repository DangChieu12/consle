<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Thank you</title>
    <link rel="stylesheet" href="Styles/main.css" type="text/css"/>
</head>
<body>
    <div class="container">
        <h1>Thanks for joining our email list</h1>
        <p>Here is the information that you entered:</p>

        <p><strong>Email:</strong> ${user.email}</p>
        <p><strong>First Name:</strong> ${user.firstName}</p>
        <p><strong>Last Name:</strong> ${user.lastName}</p>

        <p>To enter another email address, click on the Back button in your browser or the Return button shown below.</p>

        <form action="index.html" method="get">
            <input type="submit" value="Return">
        </form>
    </div>
</body>

</html>

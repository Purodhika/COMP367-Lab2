<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome to COMP367</title>
</head>
<body>
    <h2 id="greeting">Welcome to COMP367</h2>
    <p id="currentTime"></p>

    <script>
        var currentTime = new Date();
        var hour = currentTime.getHours();
        var minute = currentTime.getMinutes();
        var second = currentTime.getSeconds();
        var name = "Purodhika"; 
        var greeting;

        if (hour >= 0 && hour < 12) {
            greeting = "Good morning";
        } else if (hour >= 12 && hour < 18) {
            greeting = "Good afternoon";
        } else {
            greeting = "Good evening";
        }

        // Display the greeting
        document.getElementById("greeting").innerHTML = greeting + ", " + name + ", Welcome to COMP367";

        // Display the current time
        var timeString = "Current time is: " + hour + ":" + (minute < 10 ? "0" : "") + minute + ":" + (second < 10 ? "0" : "") + second;
        document.getElementById("currentTime").innerHTML = timeString;
    </script>
</body>
</html>

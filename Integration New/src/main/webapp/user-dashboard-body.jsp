<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
      body {
  margin: 0;
  padding: 0;
  font-family: Arial, sans-serif;
  background-color: whitesmoke;
}

.donation-container {
  width: 1000px;
  height: 50vh;
  background-color: white;
  margin: 120px auto;
}

.donation-left {
  width: 60%;
  height: 100%;
  background-color: white;
  display: flex;
}

.donation-right {
  width: 50%;
  height: 130%;
  background-color: pink;
  float: right;
  display: flex;
  margin-top: -370px;
  margin-left: 30px;
  background-image:url('bg-image.jpg');
  background-size: cover; /* Optional: adjust as needed */
  background-position: center; /* Optional: adjust as needed */
  background-attachment: fixed;
}

.donation-heading {
  color: red;
  text-align: center;
  margin-left: -100px;
  margin-top: 20px;
  font-size:25px;
  font-family:sans-serif;
}

.donation-text {
  font-family: sans-serif;
  font-size: 18px;
  color: black;
  margin-top: 90px;
  margin-left: -450px;
  width: 70%;
}

      </style>
</head>
<body>

	<div class="donation-container">
	    <div class="donation-left">
	        <p class="donation-heading">Donate Blood. Save Lives.</p>
	        <p class="donation-text"> 
             Every donation is critical and you can make a lifesaving difference. Patients with trauma, undergoing surgery, or with conditions that require blood transfusions, such as sickle cell disease, need blood and blood products. You can help.
             Last updated March 14, 2024
	          
	        </p>
     	</div>
     	<div class="donation-right">
	
     	</div>
	</div>

</body>
</html>
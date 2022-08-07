﻿<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="ASPPROJECT.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   <html> <style>
        @import url('https://fonts.googleapis.com/css?family=Josefin+Sans');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  outline: none;
  font-family: 'Josefin Sans', sans-serif;
}

body{
  background: #fece0c;
}

.wrapper{
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%,-50%);
  max-width: 350px;
  width: 100%;
  background: #fff;
  padding: 25px;
  border-radius: 5px;
  box-shadow: 4px 4px 2px rgba(254,236,164,1); 
}

.wrapper h2{
  text-align: center;
  margin-bottom: 20px;
  text-transform: uppercase;
  letter-spacing: 3px;
  color: #332902;
}

.wrapper .input_field{
  margin-bottom: 10px;
}

.wrapper .input_field input[type="text"],
.wrapper textarea{
  border: 1px solid #e0e0e0;
  width: 100%;
  padding: 10px;
}

.wrapper textarea{
  resize: none;
  height: 80px;
}

.wrapper .btn input[type="submit"]{
  border: 0px;
  margin-top: 15px;
  padding: 10px;
  text-align: center;
  width: 100%;
  background: #fece0c;
  color: #332902;
  text-transform: uppercase;
  letter-spacing: 5px;
  font-weight: bold;
  border-radius: 25px;
  cursor: pointer;
}

#error_message{
  margin-bottom: 20px;
  background: #fe8b8e;
  padding: 0px;
  text-align: center;
  font-size: 14px;
  transition: all 0.5s ease;
}
    </style>

<body>
    <div class="wrapper">
        <h2>Contact us</h2>
        <div id="error_message">
    
        </div>
        <form action="" id="myform" onsubmit="return validate();">

            <div class="input_field">
                <input type="text" placeholder="Name" id="name" required>
            </div>
            <div class="input_field">
                <input type="text" placeholder="Subject" id="subject" required>
            </div>
            <div class="input_field">
                <input type="text" placeholder="Phone" id="phone" required>
            </div>
            <div class="input_field">
                <input type="text" placeholder="Email" id="email" required>
            </div>
            <div class="input_field">
                <textarea placeholder="Message" id="message"></textarea>
            </div>
            <div class="btn">
                <input type="submit">
            </div>
        </form>
    </div>
    
</body>
   
<script >

    function validate() {
        var name = document.getElementById("name").value;
        var subject = document.getElementById("subject").value;
        var phone = document.getElementById("phone").value;
        var email = document.getElementById("email").value;
        var message = document.getElementById("message").value;
        var error_message = document.getElementById("error_message");

        error_message.style.padding = "10px";

        var text;
        if (name.length < 5) {
            text = "Please Enter valid Name";
            error_message.innerHTML = text;
            return false;
        }
        if (subject.length < 10) {
            text = "Please Enter Correct Subject";
            error_message.innerHTML = text;
            return false;
        }
        if (isNaN(phone) || phone.length != 10) {
            text = "Please Enter valid Phone Number";
            error_message.innerHTML = text;
            return false;
        }
        if (email.indexOf("@") == -1 || email.length < 6) {
            text = "Please Enter valid Email";
            error_message.innerHTML = text;
            return false;
        }
        if (message.length <= 40) {
            text = "Please Enter More Than 40 Characters";
            error_message.innerHTML = text;
            return false;
        }
        alert("Form Submitted Successfully!");
        return true;
    }
</script>
       </html>
</asp:Content>

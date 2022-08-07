﻿<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="ASPPROJECT.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<aside class="profile-card">
    <header>
      <a>
          <img src="Content/image/Akash.jpg" /></a>

      <h1>AKASH</h1>
      
    </header>

    <div class="profile-bio">
        <h2>Hello!</h2>
      <p>You can call me Nobita. I'm a Indian .<strong>frontend web and App developer</strong>. Making some cool things with coffee and code.</p>
      <ul class="social-icons list-unstyled list-inline">
        <li><a href="https://www.behance.net/daliannyvieira"><i class="fa fa-behance"></i></a></li>
        <li><a href="https://codepen.io/daliannyvieira/"><i class="fa fa-codepen"></i></a></li>
        <li><a href="https://github.com/daliannyvieira/"><i class="fa fa-github"></i></a></li>
        <li><a href="https://twitter.com/daliannyvieira"><i class="fa fa-twitter"></i></a></li>
      </ul>
    </div>
  </aside>
   
    <style>
        html {
  height: 100%;
}

body {
  overflow: hidden;
  background-size: cover;
  position: fixed;
  padding: 0px;
  margin: 0px;
  width: 100%;
  height: 100%;
  color: #333;
  font: normal 14px/1.618em "Roboto", sans-serif;
  -webkit-font-smoothing: antialiased;
}

body:before {
  content: "";
  height: 0px;
  padding: 0px;
  border: 130em solid #bcdee7;
  position: absolute;
  left: 50%;
  top: 100%;
  z-index: 2;
  display: block;
  transform: translate(-50%, -50%);
  animation: puff 1s 1.8s cubic-bezier(0.55, 0.055, 0.675, 0.19) forwards, borderRadius 0.2s 2.3s linear forwards;
  background: #bcdee7 url("~\Content\image\earth.jpg") no-repeat center center;
  background-size: cover;
  background-color: #bcdee7;
  background-blend-mode: soft-light;
}

h1,
h2 {
  font-weight: 500;
  margin-bottom: 2px;
  margin-right: 0px;
}

h1 {
  font-size: 24px;
}

h2 {
  font-size: 16px;
}

p {
  margin: 0px;
}

.profile-card {
  background: #FF5722;
  width: 550px;
  height: 156px;
  position: absolute;
  left: 50%;
  top: 50%;
  z-index: 2;
  overflow: hidden;
  opacity: 0;
  margin-top: 70px;
  transform: translate(-50%, -50%);
  border-radius: 50%;
  box-shadow: 0px 3px 6px rgba(0, 0, 0, 0.16), 0px 3px 6px rgba(0, 0, 0, 0.23);
  animation: init 1.5s 0.2s cubic-bezier(0.55, 0.055, 0.275, 0.19) forwards, materia 0.5s .9s cubic-bezier(0.86, 0, 0.07, 1) forwards; 
}
.profile-card header {
  width: 230px;
  height: 280px;
  padding: 50px 0px 10px 0px;
  display: inline-block;
  float: left;
  border-right: 2px dashed #EEEEEE;
  background: #FFFFFF;
  margin-top: 50px;
  opacity: 0;
  text-align: center;
  animation: moveIn 1s 1.5s ease forwards;
}

.profile-card header h1 {
  color: #fdbbaf;
}

.profile-card header a {
  display: inline-block;
  text-align: center;
  position: relative;
  margin: -15px 20px;
}

.profile-card header a > img {
  max-width: 100%;
}

.profile-card header a:after {
  position: absolute;
  content: "$500";
  bottom: 3px;
  right: 3px;
  padding: 10px 5px;
  border: 4px solid #FFFFFF;
  transform: scale(0);
  background: linear-gradient(#FF5722 0%, #FF5722 50%, #FF5722 50%, #FF5722 100%);
  color: #fff;
  border-radius: 50%;
  box-shadow: 0px 1px 3px rgba(0, 0, 0, 0.1);
  animation: scaleIn 1.3s 1.5s ease forwards;
}

.profile-card .profile-bio {
  width: 45%;
  height: 45%;
  display: inline-block;
  float: right;
  padding: 50px 20px 30px 20px;
  background: #FFFFFF;
  margin-top: 50px;
  text-align: center;
  opacity: 0;
  animation: moveIn 1s 1s ease forwards;
}

.list-unstyled {
  margin-top: 20px;
  padding-left: 0;
  list-style: none;
}
.list-inline li {
  display: inline-block;
  padding-right: 10px;
  padding-left: 10px;
}
.social-icons .fa {
  font-size: 1.8em;
  line-height: 0px;
  text-align: center;
  color: #fdbbaf;
  -webkit-transition: all 0.3s ease-in-out;
  -moz-transition: all 0.3s ease-in-out;
  -ms-transition: all 0.3s ease-in-out;
  -o-transition: all 0.3s ease-in-out;
  transition: all 0.3s ease-in-out;
}
.social-icons .fa:hover,
.social-icons .fa:active {
  font-size: 3em;
  -webkit-box-shadow: 1px 1px 3px #333;
  -moz-box-shadow: 1px 1px 3px #333;
  box-shadow: 1px 1px 3px #333;
}

@keyframes init {
  0% {
    width: 0px;
    height: 0px;
  }
  100% {
    width: 36px;
    height: 36px;
    margin-top: 0px;
    opacity: 1;
  }
}

@keyframes materia {
  0% {
    background: #E0E0E0;
  }
  50% {
    border-radius: 4px;
  }
  100% {
    width: 500px;
    height: 280px;
    background: #FFFFFF;
    border-radius: 4px;
  }
}

@keyframes moveIn {
  0% {
    margin-top: 50px;
    opacity: 0;
  }
  100% {
    opacity: 1;
    margin-top: -20px;
  }
}

@media screen and (min-aspect-ratio: 4/3) {
  body {
    background-size: cover;
  }
  body:before {
    width: 0px;
  }
  @ -webkit-keyframes puff {
    0% {
      top: 100%;
      width: 0px;
      padding-bottom: 0px;
    }
    100% {
      top: 50%;
      width: 100%;
      padding-bottom: 100%;
    }
  }
  @keyframes puff {
    0% {
      top: 100%;
      width: 0px;
      padding-bottom: 0px;
    }
    100% {
      top: 50%;
      width: 100%;
      padding-bottom: 100%;
    }
  }
}

@media screen and (max-width: 460px) {
  .profile-card header {
    width: auto;
    height: auto;
    padding: 45px 0 30px 0;
    display: block;
    float: none;
    border-right: none;
  }

  .profile-card header a > img {
    width: 150px;
  }
  
  .profile-card .profile-bio {
    width: auto;
    height: auto;
    padding: 0px 20px 30px 20px;
    display: block;
    float: none;
  }

  @keyframes materia {
    0% {
      background: #E0E0E0;
    }
    50% {
      border-radius: 4px;
    }
    100% {
      width: 90%;
      height: 90%;
      background: #FFFFFF;
      border-radius: 4px;
    }
  }
}

@media screen and (max-width: 360px) {

  .profile-card header a > img {
    width: 100px;
  }
  
  .profile-card .profile-bio {
    width: auto;
    height: auto;
    padding: 0px 10px 10px 10px;
    display: block;
    float: none;
  }

  @keyframes materia {
    0% {
      background: #E0E0E0;
    }
    50% {
      border-radius: 4px;
    }
    100% {
      width: 95%;
      height: 95%;
      background: #FFFFFF;
      border-radius: 4px;
    }
  }
}
    </style>

</asp:Content>

<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style>
/* .hero-image div{
                    border: solid;
                    border-radius: 5px;
                    margin: 400px;
                }*/
            body {font-family: Arial, Helvetica, sans-serif;
           padding: 300px;
            }

            /* Full-width input fields */
            input[type=text], input[type=password] {
                width: 100%;
                padding: 12px 20px;
                margin: 8px 0;
                display: inline-block;
                border: 1px solid #ccc;
                box-sizing: border-box;
            }

            /* Set a style for all buttons */
            button {
                background-color: #4CAF50;
                color: white;
                padding: 14px 20px;
                margin: 8px 0;
                border: none;
                cursor: pointer;
                width: 100%;
            }

            button:hover {
                opacity: 0.8;
            }

            /* Extra styles for the cancel button */
            .cancelbtn {
                width: auto;
                padding: 10px 18px;
                background-color: #f44336;
            }

            /* Center the image and position the close button */
           

            .container {
                padding: 16px;
            }

            span.password {
                float: right;
                padding-top: 16px;
            }

            /* The Modal (background) */
            .modal {
                display: none; /* Hidden by default */
                position: fixed; /* Stay in place */
                z-index: 1; /* Sit on top */
                left: 0;
                top: 0;
                width: 100%; /* Full width */
                height: 100%; /* Full height */
                overflow: auto; /* Enable scroll if needed */
                background-color: rgb(0,0,0); /* Fallback color */
                background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
                padding-top: 60px;
            }

            /* Modal Content/Box */
            .modal-content {
                background-color: #fefefe;
                margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
                border: 1px solid #888;
                width: 60%; /* Could be more or less, depending on screen size */
            }

            /* The Close Button (x) */
            .close {
                position: absolute;
                right: 25px;
                top: 0;
                color: #000;
                font-size: 35px;
                font-weight: bold;
            }
            .hero-image {
  background-image: url("vintage.jpg");
  height: auto;
  background-position: center;
/*  background-repeat: no-repeat;
  background-size: cover;*/
  position: relative;
}

            .close:hover,
            .close:focus {
                color: red;
                cursor: pointer;
            }

            /* Add Zoom Animation */
            .animate {
                -webkit-animation: animatezoom 0.6s;
                animation: animatezoom 0.6s
            }

            @-webkit-keyframes animatezoom {
                from {-webkit-transform: scale(0)} 
                to {-webkit-transform: scale(1)}
            }

            @keyframes animatezoom {
                from {transform: scale(0)} 
                to {transform: scale(1)}
            }

            /* Change styles for span and cancel button on extra small screens */
            @media screen and (max-width: 300px) {
                span.password {
                    display: block;
                    float: none;
                }
                .cancelbtn {
                    width: 100%;
                }

                body, html {
                    height: 100%;
                    margin: 0;
                }

                
                .hero-text {
                    text-align: center;
                    position: absolute;
                    top: 50%;
                    left: 50%;
                    transform: translate(-50%, -50%);
                    color: white;
                }

                .hero-text button {
                    border: none;
                    margin-left:200px;
                      margin-right:200px;
                    outline: 0;
                    display: inline-block;
                    padding: 10px 25px;
                    color: black;
                    background-color: #ddd;
                    text-align: center;
                    cursor: pointer;
                }

                .hero-text button:hover {
                    background-color: #555;
                    color: white;
                }
                .btn{
                   /*     width:auto;
                     text-align: center;
                  margin-left: 300px;*/
                }
               
            </style>
        </head>
       <body  class="hero-image" >

             

            <div class="center">
                <div class="hero-text "  >
                    <h1 style="font-size:50px ;color:red;text-align: center">HEY WELCOME :)</h1>
                    <h2 <p style="color:blue; text-align: center">Please Login</p></h2>
                    <button class="btn btn-primary" onclick="document.getElementById('id01').style.display = 'block'">Login</button>

                    <div id="id01" class="modal">

                        <form class="modal-content animate" method="Post" action="/Allocation/LoginServlet">
                            <div class="imgcontainer">
                                <span onclick="document.getElementById('id01').style.display = 'none'" class="close" title="Close Modal">&times;</span>
                              
                            </div>

                            <div class="container">
                                <label for="username"><b>Username</b></label>
                                <input type="text" placeholder="Enter Username" name="username" required>

                                <label for="password"><b>Password</b></label>
                                <input type="password" placeholder="Enter Password" name="password" required>

                                <button type="submit">Login</button>
                                <label>
                                    <input type="checkbox" checked="checked" name="remember"> Remember me
                                </label>
                            </div>

                            <div class="container" style="background-color:#f1f1f1">
                                <button type="button" onclick="document.getElementById('id01').style.display = 'none'" class="cancelbtn">Cancel</button>
                                <span class="password">Forgot <a href="#">password?</a></span>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

            
        </body>
    </html>
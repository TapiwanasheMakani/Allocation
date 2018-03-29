<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style>
            body {font-family: Arial, Helvetica, sans-serif;}
            form {border: 3px solid #f1f1f1;}

            header, footer {
                padding: 1em;
                color: black;
                background-color: gainsboro;
                clear: left;
                text-align: center;

            }

            input[type=text], input[type=password] {
                width: 100%;
                padding: 12px 20px;
                margin: 8px 0;
                display: inline-block;
                border: 1px solid #ccc;
                box-sizing: border-box;
            }

            button {
                background-color: #4CAF50;
                color: white;
                padding: 14px 20px;
                margin: 8px 0;
                border: none;
                cursor: pointer;
                width: 20%;
            }

            button:hover {
                opacity: 0.8;
            }


            /* Clear floats */
            .clearfix::after {
                content: "";
                clear: both;
                display: table;
            }

            .imgcontainer {
                text-align: center;
                margin: 24px 0 12px 0;
            }

            img.avatar {
                width: 10%;
                border-radius: 30%;
            }

            .container {
                padding: 16px;
            }

            span.psw {
                float: right;
                padding-top: 16px;
            }
            .close:hover,
            .close:focus {
                color: red;
                cursor: pointer;
            }
            article {
                margin-left: 200px;
                margin-right: 200px;

                border-left: 1px solid gray;
                border-right: 1px solid gray;

                padding: 1em;
                overflow: hidden;
            }


            /* Change styles for span and cancel button on extra small screens */
            @media screen and (max-width: 200px) {
                span.psw {
                    display: block;
                    float: none;
                }

            }
        </style>
    </head>
    <body>

        <header>
            <h1>Please Register The Student</h1>
        </header>
        <article>
            <form action="/Allocation/PupilsServlet" method="Post">
                <div class="imgcontainer">

                    <img src="C:\Users\tapiwanashem\Desktop\avatar-default.png" alt=""/>

                </div>
                <!--        <a  class="btn btn-primary" href="pupils.jsp">Go to</a>-->

                <div class="container">


                    <label for="name"><b>First Name</b></label>
                    <input type="text" placeholder="Enter Name" name="name" required>

                    <label for="surname"><b>Surname</b></label>
                    <input type="text" placeholder="Enter surname" name="surname" required>

                    <label for="address"><b>Address</b></label>
                    <input type="text" placeholder="Enter address" name="address" required>

                    <label for="classRoomID"><b>Classroom ID</b></label>
                    <input type="text" placeholder="Enter classRoomID" name="classRoomID" required>


                    <button type="submit">Submit</button>      <button type="reset" onclick="document.getElementsByName().style.display = 'none'" class="cancelbtn">Cancel</button>   

                </div>

                <div class="container" style="background-color:#f1f1f1">  

                </div>
            </form>
        </article>

    </body>
</html>
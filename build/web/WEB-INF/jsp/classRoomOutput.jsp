

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List Display</title>
        <script src="http://cdn.bootcss.com/jquery/3.1.1/jquery.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script>
            function del(id) {

            }

            function funcx() {
                alert("item");

            }
        </script>
        <style>
            body {font-family: Arial, Helvetica, sans-serif;}
            form {border: 3px solid #f1f1f1;}

            input[type=text], input[type=password] {
                width: 60%;
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


            @media screen and (max-width: 200px) {
                span.psw {
                    display: block;
                    float: none;
                }

            }
        </style>
    </head>
    <body>
        <%!
            Object singleItem = null;
        %>
        <div class="table-responsive">
            <table class="table">
                <tr class="danger" >
                <thead >
                    <tr class="danger" style="border: black"
                        <td>
                        <th>
                            Classroom Id              
                        </th>
                        <th>
                            Teacher's Name
                        </th>

                </thead>
                <tbody>
                    <c:forEach items="${Classrooms}" var="item">
                        <tr  class="active"   style="border: black">
                            <td contenteditable='true'>

                                ${item.getClassroomId()}
                            </td>
                            <td contenteditable='true'>
                                ${item.getTeacher()} 
                            </td >
                        </tr>
                    </c:forEach>
                </tbody>
                </tr>
            </table>

        </div>
        <br>
        <br>


    </form>
</div>
</body>

</html>

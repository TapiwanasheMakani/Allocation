+-

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
           function del(id){
  
            }
            
            function funcx(){
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
        Object singleItem=null;
        %>
        <div class="table-responsive">
            <table class="table">
                <tr class="danger" >
                <thead >
                    <tr class="danger" style="border: black"
                        <td>
                        <th>
                            Pupil Id              
                        </th>
                        <th>
                            First Name
                        </th>
                        <th>
                            Surname
                        </th>
                        <th>
                            Address
                        </th>
                        <th>
                            Classroom ID
                        </th>
                        <th>
                            Action</th>
                </thead>
                <tbody>
                    <c:forEach items="${Pupils}" var="item">
                        <tr  class="active"   style="border: black">
                            <td contenteditable='true'>

                                ${item.getPupilID()}
                            </td>
                            <td contenteditable='true'>
                                ${item.getName()} 
                            </td >
                            <td contenteditable='true'>
                                ${item.getSurname()}
                            </td >
                            <td contenteditable='true'>
                                ${item.getAddress()}
                            </td>
                            <td contenteditable='true'>
                                ${item.getClassRoomID()}
                            </td>
                            <td >


                                <div class="container">
<!--                                   <button type="button" class="btn btn-info btn-lg"  onclick="funcx(${item})" >update</button>-->
                                 <button type="button" class="btn btn-info btn-lg"  onclick="funcx(${item})" data-toggle="modal" data-target="#myModal">update</button>

                                 
                                    
                                    <div class="modal fade" id="myModal" role="dialog">
                                        <div class="modal-dialog modal-lg">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                    <h4 class="modal-title">Update Student Information</h4>
                                                </div>
                                                <div class="modal-body">
                                                    <form action="/Allocation/UpdateDeletePupilSevlet" method="Post">
                                                         <div class="container">
                                                        <label for="pupilID"><b>Pupil ID</b></label>
                                                        <br>
                                                        <input  type="text" value="${item.getPupilID()}" placeholder="Enter Pupil ID" name="pupilID" required>
                                                        <br>
                                                        <label for="name"><b>First Name</b></label>
                                                        <br>
                                                        <input type="text" value="  ${item.getName()} " placeholder="Enter Name" name="name" required>
                                                        <br>
                                                        <label for="surname"><b>Surname</b></label>
                                                         <br>
                                                         <input type="text" placeholder="Enter surname" value="   ${item.getSurname()}" name="surname" required>
                                                        <br>
                                                        <label for="address"><b>Address</b></label>
                                                         <br>
                                                         <input type="text" placeholder="Enter address" value="${item.getAddress()}" name="address" required>
                                                        <br>
                                                        <label for="classRoomID"><b>Classroom ID</b></label>
                                                         <br>
                                                         <input type="text" placeholder="Enter classRoomID" value=" ${item.getClassRoomID()}" name="classRoomID" required>
                                                        <br>
                                                        <br>
                                                        <button type="submit">Submit</button>          
                                                    </div>
                                                    </form>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-default"  data-dismiss="modal">Close</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                                        <form action="/Allocation/UpdateDeletePupilSevlet" method="Get" >
                                                          
                                                            <button id="${item.getPupilID()}" name="delete" value="${item.getPupilID()}" style="background-color: red">Delete</button>
                                                        </form>
                            </td>
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



<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

    </head>
    
    <style>
        body{
            background-color: B3DDD4;
        }
         table, th,td {
            border: 1px solid black;
         }
        </style>
    <body>
        <div class="container mt-3">
            <h1 class="text-center" style="background-color: blue" > All Blog Posts </h1>
            <div class="row">
                <div class="col-md-12">
                    <table class="table table-dark">
                        <thead class="thead-dark">
                            <tr>
                                <th scope="col">ID</th>
                                <th scope="col">Title</th>
                                <th scope="col">Content</th>
                                <th scope="col">Update</th>
                                <th scope="col">Delete</th>
                                <th scope="col"> Read Comments</th>
                                <th scope="col"> Post New Comment</th>

                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${Posts}" var="p">   
                                <tr>
                                    <th scope="row">${p.pid}</th>
                                    <td>${p.title}</td>
                                    <td>${p.content}</td>

                                    <td>  <a href="update/${p.pid}" class="btn btn-outline-success"> Update</a></td>
                                    <td>  <a href="delete-post/${p.pid}" class="btn btn-outline-danger"> Delete</a></td>
                                    <td> <a href="showComments/${p.pid}" class="btn btn-outline-warning"> Read All Comments</a></td>
                                    <td><a href="Comment/${p.pid}" class="btn btn-outline-primary" style="font-size: 16px"> Post New Comment</a></td>
                                           

                                </tr>
                            </c:forEach>
                                 
                        
                                 
                        </tbody>
                        
                    </table>
                   
                </div>
            </div>
        </div>    

        <div class="container text-center">
            <a href="/showForm" class="btn btn-success">Create Blog Post</a>
        </div>
        <div class="container text-center ">
            <h1  style="font-size: 50px">${CommentTitle}</h1>
 

        </div>
       
        <table class="table table-dark">
            <thead>
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Comments</th>
    

        </tr>
    </thead>
    <tbody>
        <c:forEach items="${comments}" var="c">   
            <tr>
                <th scope="row">${c.cid}</th>
                <td>${c.data}</td>
              


            </tr>
        </c:forEach>
        
    </tbody>
</table>
</body>

</html>
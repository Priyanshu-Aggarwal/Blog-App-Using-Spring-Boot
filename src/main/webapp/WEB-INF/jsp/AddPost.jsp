<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page isELIgnored="false" %>
<html>

    <head>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
    </head>
    <style>  
.error{color:red}  
</style>  
    <body>


        <div class="container mt-3 text-center">
            <div class="row">
                <div class="col-md-6 offset md-3">

                    <h1 class="text-center mb-3"> Add the Blog Details</h1>
                    <form action="addPost" method="post" modelAttribute="Posts">

                        <div class="form-group">
                            <label for="exampleInputEmail1" class="form-label">Enter Blog Title</label>
                            <input type="text" class="form-control"name="title" id="exampleInputEmail1"required />
                           
                           
                           
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1" class="form-label">Enter Content</label>
                            <textarea class="form-control"name="content" rows="5"  cols="7"id="exampleInputPassword1" required></textarea>
                           
                        </div>
                        <div class="container text-center">
                        <a href="/All-Post" class="btn btn-outline-danger mt-3">Back</a>
                        <button type="submit" class="btn btn-outline-primary mt-3">Submit</button>
                        </div>
                    </form>



                </div>
            </div>

    </body>
</html>
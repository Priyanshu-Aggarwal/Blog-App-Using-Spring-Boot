
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page isELIgnored="false" %>
<html>

    <head>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
    </head>
    <body>


        <div class="container mt-3 text-center">
            <div class="row">
                <div class="col-md-6 offset md-3">

                    <h1 class="text-center mb-3"> Change Blog Details</h1>
                    <form action="${pageContext.request.contextPath}/update-post/${ID}" method="post" >

                        
                        <div class="form-group">
                            <label for="Title" class="form-label">Enter  New Blog Title</label>
                            <input type="text" class="form-control"name="title" id="Title" placeholder="Enter New Title" value="${Title}" required>
                           
                        </div>
                        <div class="form-group">
                            <label for="Content" class="form-label">Enter New Content</label>
                            <textarea class="form-control"name="content" rows="5"  cols="7"id="Content" required>${Content}</textarea>
                           
                        </div>
                        <div class="container text-center">
                        <a href="/All-Post" class="btn btn-outline-danger mt-3">Back</a>
                        <button type="submit" class="btn btn-outline-primary mt-3">Update</button>
                        </div>
                    </form>
                          


                </div>
            </div>

    </body>
</html>
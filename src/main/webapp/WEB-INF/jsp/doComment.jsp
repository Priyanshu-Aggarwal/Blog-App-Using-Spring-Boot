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

                    <h1 class="text-center mb-3"> Do Comment</h1>
                    <form action="${pageContext.request.contextPath}/comment/${ID}" method="post" modelAttribute="COMMENT" >
                      

                        <input type="hidden" value="${ID}" name="post"/>
                        <div class="form-group text-center">
                            <label for="exampleInputPassword1" class="form-label">Enter Comment</label>
                            <textarea class="form-control"name="data" rows="6"  cols="7"id="exampleInputPassword1" required></textarea>
                            <a href="/All-Post" class="btn btn-outline-danger mt-4">Back</a>
                            <button type="submit" class="btn btn-outline-primary mt-4">Submit</button>
                        </div>
                </div>

                </form>



            </div>
        </div>

    </body>
</html>

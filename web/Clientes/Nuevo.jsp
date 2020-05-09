<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="src/css/style.css" />
        <link href="http://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <title>Nuevo cliente</title>
    </head>
    <body>
        <div class="container register">
                <div class="row">
                    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                        <h3 class="register-heading">Resgistrar Persona Natural</h3>
                        <div class="row register-form">
                            <div class="col-md-12">
                                <form action="../PersonaNatural" method="POST">
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="name" placeholder="First Name *" value="" />
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="lastname" placeholder="Last Name *" value="" />
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="address" placeholder="Address *" value="" />
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="phone" placeholder="Phone *" value="" />
                                    </div>
                                    <div class="form-group">
                                        <input type="submit" value="Guardar" class="btn btn-success" />
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </body>
</html>

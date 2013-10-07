<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>JAVA WEB APP</title>
        <link href="public/bootstrap/css/bootstrap.css" rel="stylesheet">
        <link href="public/app/css/app.css" rel="stylesheet">

        <style>
            body {
                padding-top: 60px; /* 60px to make the container go all the way to the bottom of the topbar */
            }
        </style>
        <link href="public/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
    </head>

    <body>

        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container">
                    <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="brand" href="#">WEB APP</a>

                    <div class="nav-collapse collapse">
                        <ul class="nav">
                            <li class="active"><a href="#">Inicio</a></li>
                            <li><a href="#about">Otros</a></li>

                        </ul>
                    </div> 
                </div>
            </div>
        </div>

        <div class="container">

            <h1>EJEMPLO DE FORMULARIO</h1>


            <form class="form-horizontal"  id="formulario" action="" method="post">

                <div class="control-group">
                    <label class="control-label">Nombres y Apellidos</label>

                    <div class="controls">
                        <input type="text" name="nom"> 
                    </div>
                </div>


                <div class="control-group">
                    <label class="control-label">Clave</label>

                    <div class="controls">
                        <input type="password" name="clave">
                    </div>
                </div>


                <div class="control-group">
                    <div class="controls">
                        <button type="submit" class="btn">Enviar</button>
                    </div>
                </div>
            </form>


        </div>








        <script src="http://code.jquery.com/jquery.js"></script>
        <script src="public/bootstrap/js/bootstrap.min.js"></script>
        <script src="public/jvalidation/jquery.validate.min.js"></script>
        <script src="public/jvalidation/messages_es.js"></script>
        <script>

            $(function() {

                $('#formulario').validate({
                    rules: {
                        nom: {required: true}
                        
                    },
                    
                    highlight: function(element) {
                        $(element).closest('.control-group').removeClass('success').addClass('error');
                    },
                    success: function(element) {
                        element
                                .text('OK!').addClass('valid')
                                .closest('.control-group').removeClass('error').addClass('success');
                    }

                });





            });


        </script>

    </body>
</html>

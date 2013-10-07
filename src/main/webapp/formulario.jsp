

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title> <%="HOLA"%> </title>
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

        <div class="container">
          
          


            <form class="form-horizontal"  id="formulario" action="" method="post">

                <div class="control-group">
                    <label class="control-label">Nombre</label>

                    <div class="controls">
                        <input type="text" name="nombre"> 
                    </div>
                </div>


                <div class="control-group">
                    <label class="control-label">Sistema Operativo</label>

                    <div class="controls">
                        <select name="sistema">
                            <option> Linux</option>
                            <option> Windows</option>
                            <option> OSX</option>
                        </select>
                    </div>
                </div>


                <div class="control-group">
                    <label class="control-label">¿Te gusta el fútbol?</label>

                    <div class="controls">
                        <input type="checkbox" name="futbol" value="1" /> 
                    </div>
                </div>



                <div class="control-group">
                    <label class="control-label">Sexo</label>

                    <div class="controls">
                        <input type="radio" name="sexo" value="M" /> Hombre
                    </div>
                    
                    <div class="controls">
                        <input type="radio" name="sexo" value="F" /> Mujer
                    </div>
                    <div class="controls">
                       <label for="sexo" style="display:none;" class="error">Este campo es obligatorio.</label>
                    </div>
                    </div>


                <div class="control-group">
                    <label class="control-label">Afición</label>

                    <div class="controls">
                        <textarea name="aficion"> </textarea>
                    </div>
                </div>

               

                <div class="btn-toolbar text-center">
                    <div class="btn-group">
                        <button type="submit" class="btn">Enviar</button>
                    </div>
                    
                    <div class="btn-group">
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
                        nombre: {required: true},
                        requerido: {required: true},
                        sexo: {required: true},
                        aficion: {required: true}
                         

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


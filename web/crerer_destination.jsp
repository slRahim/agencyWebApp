<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="static/css/bootstrap.min.css">

    <link rel="stylesheet" href="static/css/mycss.css">

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons">
    <link rel="stylesheet" href="static/css/mdb.min.css">


    <title>Nouvelle destination</title>
</head>
<body>

<nav class="navbar navbar-light " style="background-color: #576574">
    <span class="navbar-brand mb-0 h1" style="color: floralwhite"> <img src="static/image/icons8_Travel_Visa_40px.png" style="padding-right: 10px">Lotus voyage</span>
</nav>


<section style="background-color: orange"><br></section>
<section id="form-inscrit">
    <div class="container">
        <h4 style="text-align: center; padding-top: 40px">Créer une Destination</h4>
    </div>
    <br> <br>
    <div class="container">
        <div class="card text-dark bg-light mb-3" style="max-width: 100%; opacity: 0.8;">
            <div class="card-body">
                <form action="/Add" method="post">
                    <div class="form-group row">
                        <label for="start" class="col-sm-2 col-form-label">Designation:</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" id="start" name="designation" placeholder="Designation de destination">
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="hotel" class="col-sm-2 col-form-label">Hotel de sejour:</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" id="hotel" name="hotel" placeholder="Hotel">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="nb_jour" class="col-sm-2 col-form-label">Nombre de jour:</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" id="nb_jour" name="nb_jour" placeholder="Nombre de jour de sejour">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="date_depart" class="col-sm-2 col-form-label">Date de depart:</label>
                        <div class="col-sm-6">
                            <input type="date" class="form-control" id="date_depart" name="date_depart">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="p_adulte" class="col-sm-2 col-form-label">Prix Adulte :</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" id="p_adulte" name="p_adulte" placeholder="Prix par perssone adulte">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="p_enfant" class="col-sm-2 col-form-label">Prix enfant:</label>
                        <div class="col-sm-6">
                            <input type="tel" class="form-control" id="p_enfant" name="p_enfant" placeholder="Prix par perssone ado">
                        </div>
                    </div>

                    <div class="form-group row">
                        <label  class="col-sm-2 col-form-label"></label>
                        <div class="col-sm-2">
                            <div class="custom-control custom-checkbox my-1 mr-sm-2">
                                <input type="checkbox" class="custom-control-input" id="verefie" onclick="">
                                <label class="custom-control-label" for="verefie">Verefie moi! </label>
                            </div>
                        </div>
                    </div>
                    <br>
                    <div class="form-group row">
                        <div class="col-9">
                            <button type="submit" id="ok" class="btn btn-secondary">Valider</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

</section>
<br><br>
<section style="background-color:orange"><br></section>
<section style="background-color:#576574"><br></section>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDpggozHoXt96XOkFB2ekn6btmIBS1kiqE&libraries=places&callback=initAutocomplete"
        async defer></script>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="static/js/jquery-3.2.1.min.js" ></script>
<script src="static/js/popper.min.js"></script>
<script src="static/js/bootstrap.min.js"></script>
<script src="static/js/mdb.js"></script>
<script src="static/js/my_script.js"></script>

</body>
</html>
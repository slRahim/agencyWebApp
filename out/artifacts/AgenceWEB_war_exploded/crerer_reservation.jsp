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


    <title>Nouvelle reservation</title>
</head>
<body>

<nav class="navbar navbar-light " style="background-color: #576574">
    <span class="navbar-brand mb-0 h1" style="color: floralwhite"> <img src="static/image/icons8_Travel_Visa_40px.png" style="padding-right: 10px">Lotus voyage</span>
</nav>


<section style="background-color: orange"><br></section>
<section id="form-inscrit">
    <div class="container">
        <h4 style="text-align: center; padding-top: 40px">Reservation</h4>
    </div>
    <br> <br>
    <div class="container">
        <div class="card text-dark bg-light mb-3" style="max-width: 100%; opacity: 0.8;">
            <div class="card-body">
                <form action="/AddReservation" method="post">
                    <div class="form-group row">
                        <label for="destination" class="col-sm-2 col-form-label">Destination:</label>
                        <div class="col-sm-6">
                            <select class="browser-default custom-select" id="destination" name="destination">
                                <option selected>Choisissez une destination</option>
                                <c:forEach items="${liste_destination}" var="destination" varStatus="status">
                                    <option value="${destination.idDestination}">${destination.designation}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="type" class="col-sm-2 col-form-label">Type reservation :</label>
                        <div class="col-sm-6">
                            <select class="browser-default custom-select" id="type" name="type">
                                <option selected>Choisissez le type de la reservation</option>
                                <option value="adulte">pour adulte</option>
                                <option value="ado">pour enfant</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="date_reservation" class="col-sm-2 col-form-label">Date de reservation:</label>
                        <div class="col-sm-6">
                            <input type="date" class="form-control" id="date_reservation" name="date_reservation">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="nom" class="col-sm-2 col-form-label">Nom:</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" id="nom" name="nom" placeholder="votre nom">
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="prenom" class="col-sm-2 col-form-label">Prenom:</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" id="prenom" name="prenom" placeholder="votre prenom">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="age" class="col-sm-2 col-form-label">Age:</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" id="age" name="age" placeholder="Votre age">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="date_naissance" class="col-sm-2 col-form-label">Date de naissance:</label>
                        <div class="col-sm-6">
                            <input type="date" class="form-control" id="date_naissance" name="date_naissance">
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
                            <button type="submit" id="ok" class="btn btn-success" >Valider</button>
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


<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="static/js/jquery-3.2.1.min.js" ></script>
<script src="static/js/popper.min.js"></script>
<script src="static/js/bootstrap.min.js"></script>
<script src="static/js/mdb.js"></script>
<script src="static/js/my_script.js"></script>

</body>
</html>
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


    <title>Consulter</title>
</head>
<body>

<nav class="navbar navbar-light " style="background-color: #576574">
    <span class="navbar-brand mb-0 h1" style="color: floralwhite"> <img src="static/image/icons8_Travel_Visa_40px.png" style="padding-right: 10px">Lotus voyage</span>
</nav>
<section style="background-color:orange"><br></section>


<br><br><br><br>
<div class="container">
    <div class="card text-dark bg-light mb-3" style="max-width: 80rem;">
        <div class="card-header">
            <h5>Bon de reservation </h5>
        </div>
        <div class="card-body">
            <form>
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Id reservation:</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" value="${reservation.idReservation}" disabled>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Destination: </label>
                    <div class="col-sm-6">
                        <input type="text"  class="form-control" value="${destination.designation}" disabled>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Date reservation:</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control"  value="${reservation.dateReservation}" disabled >
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Type reservation: </label>
                    <div class="col-sm-6">
                        <input type="text"  class="form-control" value="${reservation.type}" disabled>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Nom:</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" value="${reservation.nom}" disabled>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Prenom: </label>
                    <div class="col-sm-6">
                        <input type="text"  class="form-control" value="${reservation.prenom}" disabled>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Date de naissance: </label>
                    <div class="col-sm-6">
                        <input type="text"  class="form-control" value="${reservation.dateNais}" disabled>
                    </div>
                </div>
            </form>
        </div>
        <div class="card-footer">
            <a href="javascript:window.print()" class="btn  btn-secondary">Imprimer</a>
        </div>
    </div>
</div>
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
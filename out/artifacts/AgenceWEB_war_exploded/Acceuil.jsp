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


    <title>Acceuil</title>
</head>
<body>

<nav class="navbar navbar-light " style="background-color: #576574">
    <span class="navbar-brand mb-0 h1" style="color: floralwhite"> <img src="static/image/icons8_Travel_Visa_40px.png" style="padding-right: 10px">Lotus voyage</span>
</nav>
<section style="background-color: orange"><br></section>
<section>
    <div class="row">
        <div class="col-3">
            <!-- la barre laterale de navigation -->
            <div class="nav flex-column orange lighten-4 py-4 font-weight-bold" id="v-pills-tab" role="tablist" aria-orientation="vertical" >
                <a class="nav-link lien" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-destination" role="tab"
                   aria-controls="v-pills-home" aria-selected="true" style="color: dimgrey" >Gestion des destinations</a>
                <br>
                <a class="nav-link lien" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-reservation" role="tab"
                   aria-controls="v-pills-profile" aria-selected="false" style="color: dimgrey">Gestion des reservations</a>
                <br><br><br><br><br><br><br><br><br><br>
                <div class="col">
                    <img src="static/image/icons8_Travel_Visa_80px_2.png" style="padding-left:33% ">
                </div>
                <br><br><br><br><br><br>
                <span style="text-align: center ; font-size: 12px">abderahim@slimani.com</span>
            </div>

        </div>
        <div class="col-9">
            <!-- le corp de la page -->
            <div class="tab-content" id="v-pills-tabContent">
                <!--gestion des destination-->
                <div class="tab-pane fade show active" id="v-pills-destination" role="tabpanel" aria-labelledby="v-pills-destination-tab">
                    <div class="container">
                        <br><br>
                        <div class="row">
                            <div class="col-5">
                                <input type="text" id="chercher_des" class="form-control" placeholder="Rechercher .....">
                            </div>
                            <div class="col-6" >
                                <a href="/Add" style="padding-left: 100%"><img src="static/image/icons8_Add_New_45px_2.png"></a>
                            </div>
                        </div>
                        <br>
                        <table class="table">
                            <thead>
                            <tr style="background-color:#576574 ; color: floralwhite">
                                <th scope="col">#</th>
                                <th scope="col"></th>
                                <th scope="col">Id_destination</th>
                                <th scope="col">Designation</th>
                                <th scope="col">Nombre jours</th>
                                <th scope="col">Prix adulte</th>
                                <th scope="col">Prix enfant</th>
                            </tr>
                            </thead>
                            <tbody id="maTable_destination">
                            <c:forEach items="${liste_destination}" var="destination" varStatus="status">
                                <tr>
                                    <td><strong>${status.count}</strong></td>
                                    <td>
                                        <a href="<c:url value="/Consulter_Destination">
                                        <c:param name="id_destination" value="${destination.idDestination}"/>
                                     </c:url>"><img src="static/image/icons8_Detective_23px.png"></a>

                                        <a href="<c:url value="/Edit_destination">
                                        <c:param name="id_destination" value="${destination.idDestination}"/>
                                     </c:url>" style="padding-left: 5% ; padding-right: 5%"><img src="static/image/icons8_Edit_File_23px.png"></a>

                                        <a href="<c:url value="/Dell_destination">
                                        <c:param name="id_destination" value="${destination.idDestination}"/>
                                     </c:url>" onclick="return(confirm('Voullez vous supprimer cette destination ?'))"><img src="static/image/icons8_Trash_Can_23px.png"></a>
                                    </td>
                                    <td>${destination.idDestination}</td>
                                    <td>${destination.designation}</td>
                                    <td>${destination.nbrJour}</td>
                                    <td>${destination.prixAdulte}</td>
                                    <td>${destination.prixAdo}</td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
                <!--gestion des reservation-->
                <div class="tab-pane fade" id="v-pills-reservation" role="tabpanel" aria-labelledby="v-pills-reservation-tab">
                    <div class="container">
                        <br><br>
                        <div class="row">
                            <div class="col-5">
                                <input type="text" id="chercher_res" class="form-control" placeholder="Rechercher .....">
                            </div>
                            <div class="col-6" >
                                <a href="/AddReservation" style="padding-left: 100%"><img src="static/image/icons8_Add_New_45px_2.png"></a>
                            </div>
                        </div>
                        <br>
                        <table class="table">
                            <thead>
                            <tr style="background-color:#576574 ; color: floralwhite">
                                <th scope="col">#</th>
                                <th scope="col"></th>
                                <th scope="col">Id_reservation</th>
                                <th scope="col">Date reservation</th>
                                <th scope="col">Type reservation</th>
                                <th scope="col">Nom</th>
                                <th scope="col">Prenom</th>
                            </tr>
                            </thead>
                            <tbody id="maTable_reservation">
                            <c:forEach items="${liste_reservation}" var="reservation" varStatus="status">
                                    <tr>
                                        <td><strong>${status.count}</strong></td>
                                        <td>
                                            <a href="<c:url value="/Consulter_reservation">
                                            <c:param name="id_reservation" value="${reservation.idReservation}"/>
                                         </c:url>" style="padding-right: 15px"><img src="static/image/icons8_Detective_23px.png"></a>
                                            <a href="<c:url value="/Dell_reservation">
                                            <c:param name="id_reservation" value="${reservation.idReservation}"/>
                                         </c:url>" onclick="return(confirm('Voullez vous supprimer cette reservation ?'))"><img src="static/image/icons8_Trash_Can_23px.png"></a>
                                        </td>
                                        <td>${reservation.idReservation}</td>
                                        <td>${reservation.dateReservation}</td>
                                        <td>${reservation.type}</td>
                                        <td>${reservation.nom}</td>
                                        <td>${reservation.prenom}</td>
                                    </tr
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>

            </div>

        </div>
    </div>
</section>
<section style="background-color:orange"><br></section>
<section style="background-color:#576574"><br></section>




<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="static/js/jquery-3.2.1.min.js" ></script>
<script src="static/js/popper.min.js"></script>
<script src="static/js/bootstrap.min.js"></script>
<script src="static/js/mdb.js"></script>
<script src="static/js/my_script.js"></script>
<!-- la fonction de filtrage -->
<script >

    $(document).ready(function(){
        $("#chercher_des").on("keyup",function(){
            var value = $(this).val().toLowerCase();
            $("#maTable_destination tr").filter(function() {
                $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
            });
        });
        $("#chercher_res").on("keyup",function(){
            var value = $(this).val().toLowerCase();
            $("#maTable_reservation tr").filter(function() {
                $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
            });
        });
    });

</script>


</body>
</html>
<?php 
	session_start();
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Acesso do Administrador</title>

    <!-- Custom fonts for this template -->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">
    <link rel="sortcut icon" href="img/aba-img.png" type="image/x-icon"/>
    <!-- Custom styles for this page -->
    <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
</head>

<body class="bg-adm">
    <div class="container">
        <!-- Outer Row -->
        <div class="row d-flex justify-content-center" style="width: 100%">

            <div class="col-xl-6 col-lg-12" style="display: flex; align-items: center; justify-content: center; height: 100vh;">

                <div class="card o-hidden shadow-sm my-5" style="width: 100%; min-width: 350px; max-width: 700px;">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="p-5">
                                    <div class="text-center">
                                        <img src="img/shortcut.png" alt="">
                                        <h1 class="h4 text-gray-900 mb-4">Acesso do Administrador</h1>
                                    </div>
                                    <form action="Controller/validaLogin.php" method="POST" class="user">
                                        <div class="form-group">
                                            <input type="email" class="form-control form-control-user" id="iLogin" name="nLogin" aria-describedby="emailHelp" placeholder="Digite seu login">
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control form-control-user" id="iSenha" name="nSenha" placeholder="Digite sua senha">
                                        </div>
                                        <hr>
                                        <div class="col-12">
                                            <button type="submit" class="btn bt-adm btn-user btn-block text-gray">Entrar</button>
                                        </div>
                                    </form>
                                </div>
                                <h6 align="center"><?php echo $_SESSION['msg-login']; ?></h6>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

</body>

</html>
<?php
    $_SESSION['logado']    = 0;
    $_SESSION['msg']       = '';
    $_SESSION['msg-login'] = '';
    session_destroy();
    header('Location: ../index.php');
?>
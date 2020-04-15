<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Connection Page</title>
    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <!-- CSS -->
    <link href="CSS/index.css" rel="stylesheet">

</head>

<header>
    <h1 class="h1">Connection</h1>
</header>

<body>

    <!-- <div class="container-fluid"> -->
    <div class="row justify-content-center">

        <form name="Connection" action="PHP/Connection.php" method="post">

            <div class="col-sm">

                <div class="row-sm">
                    Login
                    <input type="text" name="Login" value=""/>
                </div>

                <div class="row-sm">
                    Mod de passe
                    <input type="password" name="PWD" value=""/>
                </div>

                <div class="row-sm">
                <input type="submit" value="Connection" />
                <input type="reset" value="Annuler" />
                </div>

            </div>

        </form>
    </div>
    
</body>

<footer>
</footer>

</html>
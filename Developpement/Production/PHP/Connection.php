<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>
    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <!-- CSS -->
    <link href="../CSS/Connection.css" rel="stylesheet">
</head>
<h1 class="h1">Acceuil</h1>
<body>

<p>
<?php
    if(!empty($_POST['Login']))
    {
        print_r($_POST);
    }
    else
    {
        ?>
            <div class="alert alert-primary" role="alert">
                Entrer des informations valide, recharger la derniere page.
            </div>
        <?php
    }
?>

    
</body>
</html>
<?php
session_start();
if($_SESSION['rol'] == 2){
$nombreprod = $_POST['nombreprod'];
$descripcion = $_POST['descripcion'];
$precio = $_POST['precio'];
  

$servidor="localhost";
$usuarioBD="root";
$password="usbw";
$bd="daw2";
?>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initalice">
    <link rel="stylesheet" href="f.css"/>
 
    <link rel="stylesheet" href="./frontend/css/BARRA.css" />
    <link rel="stylesheet" href="./frontend/css/estilos.css" />
    <link rel="stylesheet" href="./frontend/css/navbar.css" />
    
 
</head>
    <body>
    <nav class="navbar">
      <div class="logo">Iron<span>BUG</span></div>

      <input type="checkbox" id="burger-checkbox" />
      <label for="burger-checkbox" class="burger-label"></label>

      <ul class="navbar-list">
        <li class="navbar-item"><a href="productos.php">Inicio</a></li>
        <li class="navbar-item"><a href="productos.php">Productos</a></li>
        <li class="navbar-item"><a href="productos.php">Foro</a></li>
        <?php
        if(isset($_SESSION["login"])){
            
            echo "<li class='navbar-item'><a href='logout.php'>Cerrar Sesion</a></li>";
            echo "<li class='navbar-item'><a href=''>".$_SESSION["login"]."</a></li>";
        if($_SESSION['rol'] == 2){
            echo "<li class='navbar-item'><a href='administrar.php'>Administrar</a></li>";
        }
        }else{
            echo "<li class='navbar-item'><a href='registrar.html'>Registrarse</a></li>";
            echo "<li class='navbar-item'><a href='iniciosesion.html'>IniciarSesion</a></li>";
        
        }
         ?>
      </ul>
    </nav>
    
<?php
echo "<body>
<div class='fondo'>
<div class='profile-card'>
    <h1>Productos</h1>
   <form enctype='multipart/form-data' action='/adminproduc.php' method ='POST'>
    <label >Nombre de Producto</label>
    <input type='text' name='nombreprod' class='form-styling'>
    <br></br>
    <label >Descripcion</label>
    <input type='text' name='descripcion' class='form-styling'>
    <br></br>
    <label>Precio</label>
    <input type='text' name='precio' class='form-styling'>
    <br></br>
    <div class='file-upload'>
    <label>Foto</label>
    <label for='foto' class='file-upload__label'>Sube tu imagen</label>
    <input id='foto' class='file-upload__input' type='file'name='foto2'>
    </div>
    <br></br>
    <input type='submit' value='submit' name='Submit' class='crear'>
   </form>

   </div>
   </div>";



if(isset($_POST['Submit']))
{ 
$filepath = $_FILES["foto2"]["name"];
if(move_uploaded_file($_FILES["foto2"]["tmp_name"], $filepath)) 
{
echo "<img src=".$filepath." height=200 width=300 />";
} 
else 
{
echo "Error !!";
}
} 

$base64 = base64_encode($filepath);
$con=mysqli_connect($servidor,$usuarioBD,$password,$bd);
if(!$con){
die("no se ha podido realizar la conexion".mysqli_connect_error());
}else{
    mysqli_set_charset($con,"utf8");
    echo "se ha conectado correctamente";
    $sql="INSERT INTO `productos` (`id`, `nombreprod`, `descripcion`,`precio`, `foto`) VALUES (null,'".$nombreprod."', '".$descripcion."',$precio,'".$base64."')";
    $consulta=mysqli_query($con,$sql);
    if(!$consulta){
        die("no se ha podido realizar el insert");
    }else{
        echo "la consulta o insert se ha realizado correctamente";
    }

}
}else{
    header('Location:index.html');
  }
?>

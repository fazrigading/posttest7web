<?php
  session_start();
  $db = mysqli_connect("localhost", "root", "", "fazrigading");
  if ( !isset($_SESSION["login"])){
    header('Location: login.php');
    exit;
  } 
  $i = 1;
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Products Dashboard</title>
</head>
<body>
  <div>
    <a href="index.php" role="button"> Back to Home</a>
    <a href="dashboard.php" role="button"> Dashboard</a>
  </div>
  <h1>Catalog</h1>
  <form method="get" action="">
    <label for="cari">Cari Produk: </label>
    <input type="text" name="cari">
  </form>
  <br>
  <table border="1">
    <tr>
      <th>No</th>
      <th>ID</th>
      <th>Name</th>
      <th>Stock</th>
      <th>Price</th>
      <th>Category</th>
    </tr>
    <tbody>
      <?php 
        $query = mysqli_query($db, "SELECT * FROM products");
        if (isset($_GET['cari'])){
          $query = mysqli_query($db, "SELECT * FROM products WHERE product_name LIKE '%".$_GET['cari']."%'");
        }

        while ($row = mysqli_fetch_array($query)){
      ?>
      <tr>
        <td><?= $i++; ?></td>
        <td><?= $row['id']; ?></td>
        <td><?= $row['product_name']; ?></td>
        <td><?= $row['stock']; ?></td>
        <td><?= $row['price']; ?></td>
        <td><?= $row['category']; ?></td>
      </tr>
      <?php } ?>
    </tbody>
  </table>
</body>
</html>
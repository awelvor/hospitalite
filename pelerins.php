<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"  >

    <title>pelerins</title>
  </head>
  <body>
    <h1>Les pèlerins</h1>
    <div class="container">
     <?php 
   include ('common.php'); 

$sql = "select * from tab_pelerins order by nom";

$sth = $pdo->query($sql);
while ($el = $sth->fetch(PDO::FETCH_OBJ)){
	$html .= "<tr>";
	$html .= "<td  class='text-left'>".$el->civil." ".$el->nom." ".$el->prenom."</td>";
	$html .= "<td class='text-left'>".$el->naissA."</td>";
	$html .= "<td class='text-left'>".$el->adresse."</td>";
	$html .= "<td class='text-left'>".$el->ville."</td>";
	$html .= "<td class='text-left'>".$el->cp."</td>";
	$html .= "<td class='text-left'>".$el->tel."</td>";
	$html .= "<td class='text-left'>".$el->port."</td>";
	$html .= "</tr>";
}
echo $html;
?>
</tbody>
  </table>
  </div>
      

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"  ></script>

    
  </body>
</html>

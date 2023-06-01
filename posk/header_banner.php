<?php
	$menu = '
		<li><a class="menu" href="index.php">О нас</a></li>
		<li><a class="menu" href="catalog.php">Каталог</a></li>
		<li><a class="menu" href="where.php">Где нас найти?</a></li>
		%s
	';

	$m = '';
	if(isset($_SESSION["role"])) {
		$m = '<li><a class="menu" href="cart.php">Корзина</a></li>';
		$m .= ($_SESSION["role"] == "admin") ? '<li><a class="menu" href="admin">Заказы</a></li>' : '';
		$m .= '<li><a class="menu" href="controllers/logout.php"><button>Выход</button></a></li>';
	} else
		$m = '
			<li><a href="/login.php"><button>Вход</button></a></li>
			<li><a href="/register.php"><button>Регистрация</button></a></li>
		';

	$menu = sprintf($menu, $m);
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Интернет-магазин</title>
	<link rel="stylesheet" href="style.css">
	<link rel="shortcut icon" href="logo/logo.png" type="image/png">
	<script src="scripts/filter.js"></script>
	<script>
		let role = "<?= (isset($_SESSION["role"])) ? $_SESSION["role"] : "guest" ?>";
	</script>
</head>
<body>
	
	<header>
		<div class="content">
			<ul>
				<div class="row">
				<a href="index.php">
					<img src="logo/logo.png" alt="">
					</a>
				</div>
				<?= $menu ?>
			</ul>
		</div>
		<div class="banner">
			<h2>Cлоган вашей компании!</h2>
		</div>
	</header>

	<div class="message"><?= (isset($_GET["message"])) ? $_GET["message"] : ""; ?></div>
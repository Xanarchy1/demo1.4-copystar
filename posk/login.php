<?php
	session_start();
	include "connect.php";
	include "header.php";
	
?>
	<main>
		<div class="content">
			<div class="head" id="login">Вход</div>
			<form action="controllers/login.php" method="POST">
				<input type="text" placeholder="Логин" name="login" required>
				<input type="password" placeholder="Пароль" name="password" required>
				<button>Войти</button>
			</form>

		</div>
	</main>
<?php include "footer.php" ?>
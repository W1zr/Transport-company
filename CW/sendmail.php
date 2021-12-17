<?php
	use PHPMailer\PHPMailer\PHPMailer;
	use PHPMailer\PHPMailer\Exception;

	require 'phpmailer/src/Exception.php';
	require 'phpmailer/src/PHPMailer.php';

	$mail = new PHPMailer(true);
	$mail->CharSet = 'UTF-8';
	$mail->setLanguage('ru', 'phpmailer/language/');
	$mail->IsHTML(true);

	$mail->Host       = 'smtp.yandex.ru'; // SMTP сервера вашей почты
	$mail->Username   = 'DHL.Cargo@yandex.by'; // Логин на почте
	$mail->Password   = 'Awqsawqs24'; // Пароль на почте
	$mail->SMTPSecure = 'ssl';
	$mail->Port       = 465;
	//От кого письмо
	$mail->setFrom('DHL.Cargo@yandex.by', 'Фрилансер по жизни');
	//Кому отправить
	$mail->addAddress('mioshima@yandex.ru');
	//Тема письма
	$mail->Subject = 'Привет! Это "Фрилансер по жизни"';

	//радио
	$consult = "Да";
	if($_POST['consult'] == "no"){
		$hand = "Нет";
	}

	//Тело письма
	$body = '<h1>Письмо с сайта DHL Cargo</h1>';
	
	if(trim(!empty($_POST['name']))){
		$body.='<p><strong>Имя:</strong> '.$_POST['name'].'</p>';
	}
	if(trim(!empty($_POST['email']))){
		$body.='<p><strong>E-mail:</strong> '.$_POST['email'].'</p>';
	}
	if(trim(!empty($_POST['consult']))){
		$body.='<p><strong>Обращался в консультацию до этого?:</strong> '.$consult.'</p>';
	}
	if(trim(!empty($_POST['them']))){
		$body.='<p><strong>Тема вопроса:</strong> '.$_POST['them'].'</p>';
	}
	
	if(trim(!empty($_POST['message']))){
		$body.='<p><strong>Сообщение:</strong> '.$_POST['message'].'</p>';
	}
	
	//Прикрепить файл
	if (!empty($_FILES['image']['tmp_name'])) {
		//путь загрузки файла
		$filePath = __DIR__ . "/files/" . $_FILES['image']['name']; 
		//грузим файл
		if (copy($_FILES['image']['tmp_name'], $filePath)){
			$fileAttach = $filePath;
			$body.='<p><strong>Фото в приложении</strong>';
			$mail->addAttachment($fileAttach);
		}
	}

	$mail->Body = $body;

	//Отправляем
	if (!$mail->send()) {
		$message = 'Ошибка';
	} else {
		$message = 'Данные отправлены!';
	}

	$response = ['message' => $message];

	header('Content-type: application/json');
	echo json_encode($response);
?>
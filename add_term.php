<?php
require_once 'connect.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $term = $mysqli->real_escape_string($_POST['term']);
    $definition = $mysqli->real_escape_string($_POST['definition']);

    if (!empty($term) && !empty($definition)) {
        $query = "INSERT INTO terms (term, definition) VALUES ('$term', '$definition')";
        if ($mysqli->query($query)) {
            echo "<p>Термин успешно добавлен!</p>";
        } else {
            echo "<p>Ошибка: " . $mysqli->error . "</p>";
        }
    } else {
        echo "<p>Пожалуйста, заполните все поля.</p>";
    }
}
?>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>Добавить термин</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <header>
        <h1>Добавление нового термина</h1>
    </header>
    <main>
        <form action="add_term.php" method="POST">
            <label for="term">Термин:</label>
            <input type="text" id="term" name="term" required>

            <label for="definition">Определение:</label>
            <textarea id="definition" name="definition" required></textarea>

            <button type="submit">Добавить</button>
        </form>
        <p><a href="terms.php">Вернуться к списку терминов</a></p>
    </main>
</body>
</html>
<?php
require_once 'connect.php';

$query = "SELECT * FROM terms ORDER BY id";
$result = $mysqli->query($query);

if (!$result) {
    die("Ошибка запроса: " . $mysqli->error);
}
?>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>Список терминов</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <header>
        <h1>Список терминов</h1>
    </header>
    <main>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Термин</th>
                    <th>Определение</th>
                </tr>
            </thead>
            <tbody>
                <?php while ($row = $result->fetch_assoc()): ?>
                    <tr>
                        <td><?= htmlspecialchars($row['id']) ?></td>
                        <td><?= htmlspecialchars($row['term']) ?></td>
                        <td><?= htmlspecialchars($row['definition']) ?></td>
                    </tr>
                <?php endwhile; ?>
            </tbody>
        </table>
        <p><a href="add_term.php">Добавить новый термин</a></p>
    </main>
</body>
</html>
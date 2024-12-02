<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="style.css">

    <title>Contact Page</title>
</head>

<body>

    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Navbar</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarNavDarkDropdown" aria-controls="navbarNavDarkDropdown" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDarkDropdown">
                <ul class="navbar-nav">
                    <li class="nav-item dropdown">
                        <button class="btn btn-dark dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                            Menu
                        </button>
                        <ul class="dropdown-menu dropdown-menu-dark">
                            <li><a class="dropdown-item" href="content.php?id=1">Organisational Requirements </a></li>
                            <li><a class="dropdown-item" href="content.php?id=2">Team facilitation techniques</a></li>
                            <li><a class="dropdown-item" href="content.php?id=3">Mentoring and coaching techniques </a></li>
                            <li><a class="dropdown-item" href="content.php?id=4">Conflict resolution</a></li>
                            <li><a class="dropdown-item" href="content.php?id=5">Communication methods and styles </a></li>
                            <li><a class="dropdown-item" href="content.php?id=6">Cross cultural communication </a></li>
                            <li><a class="dropdown-item" href="content.php?id=7">Professionalism</a></li>
                            <li><a class="dropdown-item" href="content.php?id=8">Workplace Contingencies </a></li>
                            <li><a class="dropdown-item" href="content.php?id=9">Teamwork Challenges </a></li>
                        </ul>

                    </li>

                    <ul class="nav ms-auto">

                        <li class="nav-item"><a class="nav-link  " href="index.htm">Home</a></li>
    
                    </ul>

                    <ul class="nav ms-auto">
                        <li class="nav-item"><a class="nav-link " href="contact.htm">Contact us</a></li>
                    </ul>
                </ul>
            </div>
        </div>
    </nav>






    <div class="container mt-5">
        <?php
        // Database credentials
        $servername = "localhost";
        $username = "root";
        $password = "";
        $dbname = "at3_db";

        // Get the question ID from the URL, default to 1 if not provided
        $id = isset($_GET['id']) ? intval($_GET['id']) : 1;

        try {
            // Establish a database connection
            $conn = new PDO("mysql:host=$servername;dbname=$dbname;charset=utf8mb4", $username, $password);
            $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

            // Fetch the question, answer, and DESCRIPTION
            $sql = "SELECT QUESTION, ANSWER, DESCRIPTION FROM knowledgebase WHERE ID = :id";
            $stmt = $conn->prepare($sql);
            $stmt->bindParam(':id', $id, PDO::PARAM_INT);
            $stmt->execute();

            $row = $stmt->fetch(PDO::FETCH_ASSOC);
            if ($row) {
                // Display the content in a table layout
                echo "<table class='table table-bordered'>";
                echo "<thead class='table-dark'>";
                echo "<tr>";
                echo "<th colspan='2'>Question #{$id}: " . htmlspecialchars($row['QUESTION']) . "</th>";
                echo "</tr>";
                echo "</thead>";
                echo "<tbody>";
                echo "<tr>";
                echo "<td><strong>Answer:</strong></td>";
                echo "<td>" . nl2br(htmlspecialchars($row['ANSWER'])) . "</td>";
                echo "</tr>";
                echo "<tr>";
                echo "<td><strong>Description:</strong></td>";
                echo "<td>" . nl2br(htmlspecialchars($row['DESCRIPTION'])) . "</td>";
                echo "</tr>";
                echo "</tbody>";
                echo "</table>";

            } else {
                // If no content is found for the given ID
                echo "<div class='alert alert-warning'>No content found for ID $id</div>";
            }
        } catch (PDOException $e) {
            // Display connection error
            echo "<div class='alert alert-danger'>Connection failed: " . htmlspecialchars($e->getMessage()) . "</div>";
        }
        ?>
    </div>

  
</body>
</html>

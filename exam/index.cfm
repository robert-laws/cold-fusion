<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Exam</title>
</head>
<body>
  <cf_header />
  <h1>Exam</h1>
  <cfquery name="users">
    SELECT *
    FROM Users
  </cfquery>

  <cfoutput query="users">
    <p>#FirstName#</p>
  </cfoutput>
</body>
</html>
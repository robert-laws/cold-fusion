<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title></title>
  <link rel="stylesheet" href="resources/css/normalize.css" />
</head>
<body>
  <cfscript>
    writeDump(application);

    if(structKeyExists(session, "userName")) {
      writeDump(Session.userName);
    } else {
      writeDump("Not logged in");
    }
  </cfscript>
  <main>
    <p>CF App</p>

    
  </main>
</body>
</html>
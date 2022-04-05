<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Page</title>
</head>
<body>
  <cfscript>
    myItem = new components.Item("Pencil");
    writeOutput(myItem.getItem());
    writeOutput(components.Item::sayName());
  </cfscript>
  <h2>New Page</h2>
  <cfoutput>
    <p>#session.userName#</p>
    <p>#myItem.myName#</p>
  </cfoutput>
</body>
</html>
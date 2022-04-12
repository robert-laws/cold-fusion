# Cold Fusion Application - Basics

## Application.cfc

Application.cfc file governs the settings for an application. It's possible to add Application.cfc files to subdirectories of a webroot to create distinct applications at those locations.

```cfml
component
{
  this.name = "myColdFusionApp";
  this.datasource = "applicationDatabase";
  this.applicationTimeout = CreateTimeSpan(0, 5, 0, 0);

  this.sessionManagement = true;
  this.sessionTimeout = CreateTimeSpan(0, 0, 30, 0);
}
```

## Variables

Variables are used to store different data types for use in coldfusion applications. Major data types are:

- String
- Integers
- Booleans
- Arrays
- Structures
- Query
- Lists (String)
- Dates (String)

## Constructs

ColdFusion constructs include decision making and looping logic. The main decision making logic include if and switch statements.

```cfml
department = "marketing";
sales = 1637;
isAvailable = true;

// if statement
if(isAvailable) {
  writeOutput("The #department# department is available now.");
}

// switch statement
switch(department) {
  case "sales":
    writeOutput("Sales department");
    break;
  case "marketing":
    writeOutput("Marketing department");
    break;
  case "support":
    writeOutput("Support department");
    break;
  default:
    writeOutput("Unknown department");
}
```

Loops are used to iterate over a collection of data.

```cfml
items = ["pen", "pencil", "notebook", "eraser", "paper"];

for(i = 1; i <= items.len(); i++) {
  writeOutput(items[i]);
}

for(item in items) {
  writeOutput("The item name is #item#.");
}

schedule = {
  monday: "biology",
  tuesday: "math",
  wednesday: "english",
  thursday: "science",
  friday: "history"
}

for(key in schedule) {
  writeOutput("On #key# the class is #schedule[key]#.");
}
```

Functions give a way to reuse code and encapsulate logic within the function itself. The `var` keyword in functions is used to declare variables that are local to the function.

```cfml
numeric function average(required numeric number1, required numeric number2)
{
  return (number1 + number2) / 2;
}

average(436, 789); // returns 612.5

myNumbers = {
  number1: 273,
  number2: 93
}

average(argumentCollection = myNumbers); // returns 183

function greet(name, age) {
    var helloText = "hello"; // variable is only available within the function
    return "#helloText#, my name is #name# and I am #age# years old";
}
```

## Scopes

- variables scope - is the default scope on a page is available only on the page and/or any includes used on the page.
- CGI scope - contain contextual details
- application scope - variables associated with a single named application on the server
- session scope - variables associated with a single session and saved on the server and can be set to time out after a period of time
- cookie scope - variables saved on a user's browser
- server scope - variables available from the server and to all applications running on the server

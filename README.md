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
schedule = {
  monday: "biology",
  tuesday: "math",
  wednesday: "english",
  thursday: "science",
  friday: "history"
}

for(item in items) {
  writeOutput("The item is a #item#.");
}
```

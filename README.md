# Cold Fusion Application - Basics

### Application.cfc

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

### Variables

Variables are used to store different data types for use in coldfusion applications. Major data types are:

- String
- Integers
- Booleans
- Arrays
- Structures
- Query
- Lists (String)
- Dates (String)

### Constructs

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

### Scopes

- variables scope - is the default scope on a page is available only on the page and/or any includes used on the page.
- CGI scope - contain contextual details
- application scope - variables associated with a single named application on the server
- session scope - variables associated with a single session and saved on the server and can be set to time out after a period of time
- cookie scope - variables saved on a user's browser
- server scope - variables available from the server and to all applications running on the server

---

# Adobe Certified Professional: Adobe ColdFusion

## Introduction to the Course

Getting the exercise files
Downloading and Installing CommandBox
Installing and configuring VS code for ColdFusion

## Introduction to ColdFusion

#### What is ColdFusion

- application server and coding language

#### Printing data on the screen

```cfml
<cfset userName="Bob">
<cfoutput>
  Hello there, #userName#!
</cfoutput>
```

#### Discovering the cfscript syntax

```cfml
<cfscript>
  username = "Hal";
  writeOutput("Hello, #username#!");
</cfscript>
```

#### Commenting code in tag syntax

```cfml
<!--#### <cfset score = 34> --->
<cfset title = "manager">
```

#### Commenting code in script syntax

```cfml
<cfscript>
  // score = 34;
  items = ["pen", "pencil", "notebook", "eraser", "paper"];

  /*
  for (item in items) {
    writeOutput(items[item]);
  }
  */

</cfscript>
```

#### Using <cfdump> and writedump()

```cfml
<cfset items=["pen", "pencil", "notebook", "eraser", "paper"]>
<cfdump var="#items#" abort=true label="Array of Items">
```

```cfml
<cfscript>
employee = { name: "Bob", age: 34, salary: 50000 };
writeDump(employee);
writeDump(var = employee, label = "Employee Information");
</cfscript>
```

#### Touring the ColdFusion administrator

## Variables and Datatypes

#### Creating simple variables

```cfml
<cfset name = "Bob">
<cfset age = 34>

<cfscript>
  isEmployed = false;
  items = ["pen", "pencil", "notebook", "eraser", "paper"];

  writeOutput(ITEMS[1]);
</cfscript>
```

#### CFML is weakly typed

```cfml
location = "New York City";
location = 10007;
```

#### Creating Lists

Lists are technically strings, but can be handled in special ways by CF using List methods.

```cfml
people = "Bob, Ned, Sally, Joe";
writeOutput(people);

ListAppend(people, "Steve", "|");
morePeople = people.listAppend("Steve", "%");
evenMorePeople = listAppend(morePeople, "Melvin", "|");
writeOutput(evenMorePeople);
```

#### Discovering the ColdFusion functions

The ColdFusion documentation has [extensive documentation on functions](https://helpx.adobe.com/coldfusion/cfml-reference/coldfusion-functions/functions-by-category.html) available organized by category.

#### Understanding the list delimiter

```cfml
people = "Bob, Ned, Sally, Joe, Mike";
writeOutput(people.listLen()); // 5
```

#### Lists with Empty items

```cfml
people = "Bob, Ned, Sally, Joe,,,James";
writeOutput(listGetAt(people, 5, ",", false)); // James
```

#### Finding items in lists

```cfml
people = "Bob Cobb,Ned Nail,Sally Soap,Jim Jupe,Mel Mope";
writeOutput(listFind(people, "Bob Cobb")); // 1
writeOutput(listContains(people, "Mel")); // 5
writeOutput(listContainsNoCase(people, "nail")); // 2
writeOutput(people.listContainsNoCase("bob")); // 1
```

#### Creating arrays

```cfml
<cfset people = ["Bob", "Ned", "Sally", "Joe"]>

<cfscript>
users = ArrayNew(1); // new array with one dimension
users[1] = "Bob";
users[2] = "Ned";
users[3] = "Sally";
arrayAppend(users, "Joe");
writeDump(users);
</cfscript>
```

```cfml
users = ["Bob", "Ned", "Sally", "Joe"];
users.append("Melvin");
writeDump(users);
```

#### Empty items in arrays

```cfml
items = ArrayNew(1);
items[1] = "pen";
items[2] = "pencil";
items[3] = "notebook";
items[6] = "eraser"; // will produce two undefined elements at position 4 and 5
writeDump(items);
```

#### Finding items in an array

#### Merging arrays

#### Multi-dimensional arrays

#### Exploring Array functions

#### Creating structures

#### About key names in structs

#### Finding items in structures

#### Merging and copying structures

#### Shallow Copy vs Deep Copy

#### Null Support in ColdFusion

#### Caching variables

## Main ColdFusion Constructs

#### Simple if statement in script syntax

#### Nested ifs

#### Simple if statement in tag syntax

#### Comparison operators in the tag syntax

#### The Ternary operator

#### The switch case construct

#### The break keyword in a switch case

#### If statements in switch case

#### Reviewing the for loop

#### Reviewing the while loop and the do-while loops

#### Reviewing the For In loop

#### Looping over lists

#### Looping over arrays

#### Looping over structures

#### Break and continue

## ColdFusion Functions

#### Creating a simple function

#### Function arguments

#### Required and optional arguments

#### Type checking the arguments

#### Passing arguments into functions

#### Returning data from a function

#### Creating functions with tags

## Scopes

#### About scopes in general

#### The default variables scope

#### The var scope of a function

#### The CGI Scope

#### The Application.cfc file

#### The older Application.cfm file

#### The Application scope

#### The Session scope

#### Session Identifiers and the Cookie scope

#### The Server Scope

#### Locking

## Reusing Code

#### Using simple <cfinclude>

#### <cfinclude> and the variables scope

#### Use cases for cfincludes

#### Using cfinclude with functions

#### When cfinclude is not a good idea

#### Custom tags with <cfimport>

#### Opening and closing custom tags

#### Passing attributes to custom tags

#### The request scope

#### Custom tags with <cfmodule>

#### Custom tags with the <cf\_> syntax

#### The Application Framework

#### The main app framework variables

#### Include non .cfm files

#### onApplicationStart() and onSessionStart()

#### Request event handlers

#### onsessionEnd() and on ApplicationEnd()

#### Other event handlers

#### Using cfInclude in Application.cfc

## Basic Database Operations

#### Creating a DSN

#### Using CFquery

#### This.datasource in Application.cfc

#### Displaying Query Data

#### Grouping Query output

#### Creating dynamic queries

#### Using Query parameters

#### Query metadata

#### Using queryexecute()

#### Caching queries

#### Queries of queries

#### Using the ValueList() function

#### Other tags for creating queries

#### Object Oriented Programming in ColdFusion

## Creating Components

#### Methods in components

#### Creating component instances

#### The constructor method

#### Understanding components, instances and objects

#### Public and private methods in components

#### Understanding the need for accessors

#### Creating accessors manually

#### Cfproperty and the automatic accessors

#### Overriding the implicit accessors

#### Using the Getter and setter attributes of the <cfproperty> tag

#### Inheritance : the "is a" relationship

#### Using the extends attribute

#### The super keyword

#### Multi-level inheritance

#### Using Abstract componentd

#### Inheritance best practices

#### Composition, the "has a" relationship

#### Advanced composition

#### Using composition and inheritances in an application

#### Understanding the use of interfaces

#### Creating interfaces

#### Using interfaces

#### What interfaces do

#### Using interfaces with multiple components

#### Basic CRUD operations with CFC

#### Building a search functionality

#### Building a model layer in your app

#### Caching component instances in the application scope

#### Caching in the session scope

## An introduction TO ORM

#### Enabling ColdFusion ORM

#### Building a simple ORM entity

#### Creating and displaying ORM data

#### Updating and deleting ORM entities

#### Creating relationships

#### Managing ORM sessions

#### Basic Error Handling in ColdFusion

#### Try Catch

#### Throw and rethrow

#### Using OnError

## Forms

#### Introduction to forms, cfforms and data validation

#### The URL and the FORM scopes

#### Protecting against CSRF attacks

#### Logging In users in and out

#### Encoding data

#### Using remote CFC methods

#### Uploading files to ColdFusion

#### Securing file uploads

## PDF and Spreadsheet Support in ColdFusion

#### Using <cfdocument>

#### Creating PDF files from a URL

#### Using <cfdocumentitem> and <cfdocumentsection>

#### Saving PDF files with <cfdocument>

#### PDF best practices

#### Using <cfhtmltopdf>

#### Using <cfpdf>

#### DDX support in ColdFusion

#### Manipulating spreadsheets in ColdFusion

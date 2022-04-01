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

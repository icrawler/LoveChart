LoveChart - A data chart library for LÖVE
=========================================

**LoveChart** is a data chart library for LÖVE.

LoveChart uses the **Simple Educative Class System** (SECS) Advanced version by bartbes.

How to install LoveChart
------------------------
1. Place the files lovechart.lua and class.lua into the main directory of your project.
2. Place the folder lovechart/ into the main directory of your project.
3. Require LoveChart using:
```lua
lchart = require "lovechart.lua"
```

Documentation
-------------
Documentation for LoveChart.
### Global Variables
* *lovechart_dir* - directory of lovechart. Default directory: "lovechart/"

### Classes
#### lchart.dataset
##### Methods
* *new()* - creates a new Dataset.
* *addValue(value:number, label:string)* - adds a value to the dataset with specified label
* *getLength()* - gets the length of the dataset
* *getValue(index:number)* - gets a value with specified index
* *pop()* - removes and returns the first entry of the dataset
* *removeAll()* - removes all entries of the dataset
* *toString()* - returns the string representation of the dataset
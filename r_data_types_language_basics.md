---
title: "R Data Types & Language Basics"
author: "Brian High, Nancy Carmona & Chris Zuidema"
date: "![CC BY-SA 4.0](images/cc_by-sa_4.png)"
output:
  ioslides_presentation:
    fig_caption: yes
    fig_height: 3
    fig_retina: 1
    fig_width: 5
    keep_md: yes
    logo: images/logo_128.png
    smaller: yes
---



## Learning Objectives

You will learn:

* The basics of R "data objects" and "classes"
* The basic "primitive" data types in R
* How to inspect the properties of data objects
* How to create categorical variables in R
* How to convert data objects to other types
* How to access, assign and display data in R
* How to call functions
* How to use vectorized operations
* How to store, load, and remove data
* How to make comments in R code
* What is unusual about R
* The overall structure of the R language
* The basic "higher order" data structures in R

## Data Objects

R is an *object oriented* language - everything in R is an *object*. What 
this means is that all of your data and code structures are stored in your 
computer's memory using the same framework. 

There are a core set of basic object types and classes built into R. All other
objects are built upon these.

*Data objects* are those structures which you use to store data. Objects can 
also store functions, packages, connections, and other structures intended for 
other uses. 

Like other objects, data objects have a *type* and a *class*. The type defines
*how* the data are stored, while the class defines *what* data are contained 
within an object.

## Accessing Data

If you just enter a value at the R command prompt, R will print out the value 
to your screen:


```r
68.1
```

```
## [1] 68.1
```

Or you can call the `print()` function instead (to be explicit about it):


```r
print('A')
```

```
## [1] "A"
```

## Variable assignment with `<-`

The `<-` (arrow) symbol is the primary assignment operator in R.

To store data in memory (in the environment) *assign* values to variables (using `<-`).


```r
number <- 68.1
number
```

```
## [1] 68.1
```

This value will be stored in your computer's memory for the duration of the 
current session, or until it is modified or deleted by you, your code, or your
environment (execution context).

## Argument assignment with `=`

The `=` symbol is an additional assignment operator, most generally used within function calls.

The `=` symbol tells R that the expected argument (parameter) `x` should take 
the value of our `number` variable.


```r
print(x = number)
```

```
## [1] 68.1
```

This assignment takes place within the function call and is not available 
outside of the function or after the function call has competed.

## Implicit (unnamed) function arguments

Since the `x` argument is the first parameter expected by the function, we do
not have to explicitly assign our value as a named argument, if we supply our
value as the first (or only) argument.


```r
print(number)
```

```
## [1] 68.1
```

## Assignment operators

Just remember: 

* use `<-` for variable assignment (but you may also see `=` here too)


```r
number <- 68.1
```

* use `=` for argument assignment within function calls (almost never `<-`)


```r
print(x = number)
```

## Code Comments in R

The `#` is used for comments. Everything on a line of code after the `#` will be ignored by R.


```r
# Assign a value to "val".
val <- 1234
val    # This is a bad name for a variable because it is not very descriptive.
```

```
## [1] 1234
```

It's usually better to put comments on their own line, as in the first example. 
If comments are added to a line of code, as in the second example, both comments and code can be harder to read.

It's common to indent the comment to line up with the code it's commenting.

It's also common for the comment to read like a spoken-language command 
(e.g., "Do this"), so that it's like a verbal command you are giving to 
the computer. Then the code implements what the comment says to do.

## Data Types and Classes

The most basic data types are `numeric` (`double` and `integer`), `complex`, 
`logical` (boolean), and `character` (string).


```r
typeof(1)       # "double"    -- double precision floating point number
```

```
## [1] "double"
```

```r
typeof(1L)      # "integer"   -- "L" after one or more digits makes it an integer
```

```
## [1] "integer"
```

```r
typeof(TRUE)    # "logical"   -- either TRUE or FALSE
```

```
## [1] "logical"
```

## Data Types and Classes: Character

Characters are entered with quotes around them (single or double quotes).


```r
typeof('abcd')  # "character" -- a non-numeric "string" of text characters
```

```
## [1] "character"
```

If you omit the quotes of an alphanumeric string, R will assume you are 
referring to a variable name.


```r
val <- 1234
typeof(val)
```

```
## [1] "double"
```

## Data Types and Classes

You can show the "higher order" (if any) type of a data object with `class()`.


```r
typeof(1234)        # double  (the more basic "primitive" type)
```

```
## [1] "double"
```

```r
class(1234)         # numeric (the more general "higher order" type)
```

```
## [1] "numeric"
```

```r
typeof('abcd')      # character
```

```
## [1] "character"
```

```r
class('abcd')       # character
```

```
## [1] "character"
```


## Dates and Times

There are special classes for dates and time to allow for date/time arithmetic 
and formatting.


```r
# Class: "Date"
my_date <- as.Date("2020-09-30", format = '%Y-%m-%d')

# Class: "POSIXct" (date, time, timezone, etc.) and "difftime"
my_datetime <- as.POSIXct("2020-09-30 12:00:", tz = "US/Pacific")
```

## Single-Value (Scalar) Data Types

Data types consisting of only a single value are also called "scalar" types.

Example    | Type      | Class             | Storage Mode
-----------|-----------|-------------------|-------------
1L         | integer   | integer           | numeric
1          | double    | numeric           | numeric
'1'        | character | character         | character
TRUE       | logical   | logical           | logical
Sys.Date() | double    | Date              | numeric 
Sys.time() | double    | POSIXct,  POSIXlt | numeric 

## Data Types and Classes: Factors

Factors are categorical variables. Let's create an example and explore its 
properties.


```r
country <- factor(c("usa", "canada", "mexico", "usa", "mexico"))
country
```

```
## [1] usa    canada mexico usa    mexico
## Levels: canada mexico usa
```

```r
class(country)
```

```
## [1] "factor"
```

This looks like a character variable with the additional attribute of "Levels", 
where the levels are the unique values. But how is this implemented?

## Factors


```r
typeof(country)
```

```
## [1] "integer"
```

```r
str(country)
```

```
##  Factor w/ 3 levels "canada","mexico",..: 3 1 2 3 2
```

```r
attributes(country)
```

```
## $levels
## [1] "canada" "mexico" "usa"   
## 
## $class
## [1] "factor"
```

So factors in R are objects of class "factor" composed of an integer vector and 
a `$class` attribute and a `$levels` attribute containing a character vector.


## Data Structures: Vector

In R, a vector is a group of values or variables. You can create a vector from a 
collection of data values using the `c()` (combine) function.


```r
id <- c('A', 'B', 'C', 'D')
origin <- factor(c("usa", "canada", "mexico", "canada"))
height <- c(68.1, 69.4, 71.2, 68.9)
weight <- c(159.2, 162.3, 203.5, 181.3)
```

Here, we created three vectors, which we may describe as follows:

* `id` is a character vector containing alphabetic identifiers
* `origin` is a factor vector containing countries of origin
* `height` is a numeric vector containing heights in inches
* `weight` is a numeric vector containing weights in pounds

More technically speaking, a vector is an ordered collection of one or more 
individual values of the same data type. 

In other computer languages this data structure would be called an array or a 
list, but R uses those terms for other, more complex data structures.

## Data Structures: Matrix

A Matrix is a two-dimensional structure of values, all of the same data type. 
It can be constructed from a Vector, as supplied by the "data" argument for the 
`matrix()` function.


```r
mat <- matrix(data = 1:9, nrow = 3)
mat
```

```
##      [,1] [,2] [,3]
## [1,]    1    4    7
## [2,]    2    5    8
## [3,]    3    6    9
```

## Data Structures: Data Frame

You can store a two dimensional collection of data (a "table") as a data frame. This
is the most common way to work with data in R. A data frame is often constructed
from one or more vectors, where each vector becomes a column.


```r
df <- data.frame(id, origin, height, weight)
df
```

```
##   id origin height weight
## 1  A    usa   68.1  159.2
## 2  B canada   69.4  162.3
## 3  C mexico   71.2  203.5
## 4  D canada   68.9  181.3
```

The rows represent observations or cases and the columns represent variables.

We can see that our data frame, `df`, is a data frame by using the `class()` 
function.


```r
class(df)
```

```
## [1] "data.frame"
```


## Data Structures: List 

Lists are objects that can contain elements of different types (i.e. elements 
may be heterogeneous or "non-atomic"). This is a complicated but very powerful
idea. We can put any object in a list.


```r
l <- list(x = 1:3, z = LETTERS[1:2], df = df, frml = formula(height~origin))
l
```

```
## $x
## [1] 1 2 3
## 
## $z
## [1] "A" "B"
## 
## $df
##   id origin height weight
## 1  A    usa   68.1  159.2
## 2  B canada   69.4  162.3
## 3  C mexico   71.2  203.5
## 4  D canada   68.9  181.3
## 
## $frml
## height ~ origin
```

## Data Structures: List

For example, this list was created with several named objects: 

* vectors of different lengths (`x` and `z`) 
* a dataframe (`df`) 
* a formula (`frml`)

We can even include things like graphics (plot objects).

Let's use `sapply()` to see the class of each list item.


```r
sapply(X = l, FUN = class)
```

```
##            x            z           df         frml 
##    "integer"  "character" "data.frame"    "formula"
```

## Data Structures: List

Because a list is non-atomic, it can contain other non-atomic objects. 


```r
is.atomic(l)
```

```
## [1] FALSE
```

Let's use `sapply()` to see if each list item is atomic or not.


```r
sapply(X = l, FUN = is.atomic)
```

```
##     x     z    df  frml 
##  TRUE  TRUE FALSE FALSE
```

The two vectors are atomic data types because each item they store can only be an individual value, like a single number or character string. 

The dataframe and formula are not atomic because they can store items containing multiple values.

## Viewing data

You can see data frames in a grid format by using the `View()` function.


```r
View(df)
```

This will open the data frame in a new window or tab and display it like a 
spreadsheet. 

![](images/df.png)

However, unlike a spreadsheet, you will not be able to manipulate
your data in this display.

## Accessing Data Elements: Indexing

Data are accessed though ["indexing."](https://cran.r-project.org/doc/manuals/R-lang.html#Indexing) Today, we'll learn two primary methods.

Using our matrix example, `mat`, you can access data in the matrix by position 
using single brackets, `[`. 


```r
# Display the 4th element (which in this case is 4).
mat[4]
```

```
## [1] 4
```

```r
# Display the element in the first row and second column.
mat[1, 2]
```

```
## [1] 4
```

```r
# Display all of the rows of the second colmn.
mat[ , 2] 
```

```
## [1] 4 5 6
```

## Accessing Data Elements by Variable Names

You can access data in dataframes positionally using double brackets (`[[`), 
but also with variable names using the `$` operator. 


```r
# Using position 
df[[1]]
df[[3]]
 
# Using variable names
df[['id']]
df[['height']]

# Using variable names
df$id
df$height
```

What is an advantage to indexing by column name?

## Performing calculations

R is basically a calculator. You can use many built-in operators and functions.


```r
2*2
```

```
## [1] 4
```

```r
2/2
```

```
## [1] 1
```

```r
2^2
```

```
## [1] 4
```

```r
sqrt(2)
```

```
## [1] 1.414214
```

## Vectorized operations

R allows you to perform calculations on all items in a vector or all rows of a 
data frame at the same time. 

Operations that allow this are called *vectorized* operations. They may be 
much faster than the alternatives (e.g. "loops"). 


```r
# Add a new column for adult BMI calculated from the weight and height columns
df$bmi <- (df$weight / df$height ^ 2) * 703
df
```

```
##   id origin height weight      bmi
## 1  A    usa   68.1  159.2 24.13260
## 2  B canada   69.4  162.3 23.68945
## 3  C mexico   71.2  203.5 28.22018
## 4  D canada   68.9  181.3 26.84817
```

## Storing and loading data

While we have seen how to create data objects using the assignment operator, 
`<-`, these objects only reside is our computer's volatile memory. Much of the
time, this is all we need to do in order to perform calculations on our data.

Sometimes we want to store our data on our disk drive or our network for long-term
storage or for sharing with collaborators. We can do this by saving the data as
a file using the `save()` function.


```r
save(df, file="df.rda")
```

You can read a data file and load it's contents in memory with `load()`.


```r
load("df.rda")
df
```

```
##   id origin height weight      bmi
## 1  A    usa   68.1  159.2 24.13260
## 2  B canada   69.4  162.3 23.68945
## 3  C mexico   71.2  203.5 28.22018
## 4  D canada   68.9  181.3 26.84817
```

## Removing data

You can remove a data object from your working (volatile) memory with `rm()`.


```r
rm(df)
```

You can remove a file with `unlink()`.


```r
unlink("df.rda")
```

## What is unusual about R

Compared to other popular computer languages, R has some quirks.

**_Assignment_**

* The preferred assignment operator is `<-` not `=` (except within a function call).


**_The Period:_**

* The `.` is often used to separate words in a variable name.
* Many other languages use the `.` to refer to "properties" -- R uses `$`.

**_Vectors:_**

* A set of values of the same type is called a "vector" (not an "array", etc.).
* Many common functions and operators work directly on vectors ("vectorized").
* Vectors in R are indexed starting from `1` not `0`.

**_Usage:_**

* R is often used for interactive data analysis at a command prompt.

## The R Language (Some Jargon)

R is a language of **_objects_**. Everything in R is an object. Even functions,
operators, and and variable names are objects. R is an *object oriented language*.

What does this mean?

* You compose R commands as **_expressions_** of R objects.
* Some of those objects are **_functions_** which perform **_operations_**.
* Functions operate on other objects, such as **_data objects_**.
* Feeding objects to a function is called **_calling_** a function.
* You feed the objects to functions as **_arguments_**.
* Based on the arguments you provide, the function will perform operations.
* The operations will **_return_** results which returned as objects.
* You can then use these returned objects for further operations.

So, in R you write expressions composed of function calls which perform 
operations on objects. Even the mathematical **_operators_** are actually functions.

## What's an object?

An object is:

* an instance of a "class"
* data (attributes)
* functions (methods)

Analogy:

* "my car" is in instance of class "car" or even the class "Toyota Echo"
* its size, weight, color, etc. are its attributes
* my car can start, go forward, go backward, stop, etc. (its functions)

Example:

* the data frame `df` is an instance of the class `data.frame`
* attributes are `$row.names`, column `$names`, etc. and its `$class`
* methods are `summary`, `subset`, `rownames`, `print`, `plot`, etc.

## 


<pre style="color: indigo; background: linear-gradient(to right, gold, rgba(255,0,0,0)); padding-top: 50px; padding-bottom: 50px;">
                                                                                        
                                                  ,,                                    
  .g8""8q.                                 mm     db                           ,M"""b.  
.dP'    `YM.                               MM                                  89'  `Mg 
dM'      `MM `7MM  `7MM  .gP"Ya  ,pP"Ybd mmMMmm `7MM  ,pW"Wq.`7MMpMMMb.  ,pP"Ybd    ,M9 
MM        MM   MM    MM ,M'   Yb 8I   `"   MM     MM 6W'   `Wb MM    MM  8I   `" mMMY'  
MM.      ,MP   MM    MM 8M"""""" `YMMMa.   MM     MM 8M     M8 MM    MM  `YMMMa. MM     
`Mb.    ,dP'   MM    MM YM.    , L.   I8   MM     MM YA.   ,A9 MM    MM  L.   I8 ,,     
  `"bmmd"'     `Mbod"YML.`Mbmmd' M9mmmP'   `Mbmo.JMML.`Ybmd9'.JMML  JMML.M9mmmP' db     
      MMb                                                                               
       `bood'
</pre>
<!-- http://patorjk.com/software/taag/#p=display&f=Georgia11&t=Questions%3F%0A -->

---
title: "Literate Programming & Tidyverse Introduction"
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

* What literate programming is and why it's important 
* How to use R Markdown for literate programming
* What the tidyverse is
* What data "wrangling" is
* Packages and functions used to tidy and wrangle data in R
* How to tidy and wrangle data with R


## Reproducibility 

For the purpose of this discussion, let's define:

* **_Replicate_**: to repeat a study (with new samples and data)
* **_Reproduce_**: to regenerate the results of an analysis (with the same data)

Our studies may be difficult to fully *replicate* ... but our analysis should always be *reproducible*.

Or in other words:

We should always be able to go from raw data to final results at any time ...
*and always get the same results* from the same data and the same analysis*.

`*` Even if you are doing modeling with randomly-generated values, you can set
the *seed* to produce the same values each time you run the analysis.

## Literate Programming

In the light of reproducibility, Literate Programming is:

Interspersing explanatory text with code to make a report that is executable 
and improves reproducibility. 

It allows a recipient to re-render the report to review the code/analysis and 
verify the results (including plots and figures).

## Literate Programming Tools

There are two main platforms for literate programming:

* **_Python_**: Jupyter Notebook (a future topic!)
* **_R_**: R Markdown and *knitr* (today's focus)

Both platforms can be used with other programming languages or a mix of them.


## R Markdown and *knitr*

To use R Markdown and *knitr* for Literate Programming, all you need is a text
editor, R, and a few packages such as *knitr*. These tools are well integrated into 
RStudio.

* R Markdown: The text notation you use for formatting, based on Markdown
* *knitr*: A package by Yihui Xie used to render R Markdown documents

![Markdown document rendered as a webpage. Image by: [RStudio Blog](https://blog.rstudio.org/2014/06/)](images/storms-004.png)

## Installing R Markdown and *knitr*

You need the R packages *htmltools*, *rmarkdown* and *knitr*.


```r
install.packages(c("htmltools", "rmarkdown", "knitr"), dependencies = TRUE)
```


## R Markdown Syntax
[R Markdown](https://rmarkdown.rstudio.com/) is a "wiki" syntax based on 
[Markdown](https://daringfireball.net/projects/markdown/). Here is an 
example:

![](images/rmarkdown_document.png)

## R Markdown Cheat Sheet
[R Markdown cheat sheet](https://www.rstudio.com/wp-content/uploads/2016/03/rmarkdown-cheatsheet-2.0.pdf) (More on R "cheat sheets" later)

![](images/cheatsheet.png) 

## *knitr*

The R package which renders the R Markdown document is *knitr*. It uses other 
packages and utilities as needed to produce different document formats.

In RStudio, you would normally run *knitr* using the *Knit HTML* button. 

If your document has been configured in R Markdown to generate a PDF document,
the the button will show as *Knit PDF*.

The appearance of the button changes depending on the document type.

You can also use the *File* -> *Knit Document* or *File* -> *Compile Notebook*
menu options.


## Creating a .Rmd file

Let's make our first .Rmd file. This is similar to making a script:

File -> New File -> R Markdown...

![](images/Rmd_save.png)

Be sure to save it! "onramp_example.Rmd" works


## Features of the Markdown Document 

* YAML Header
* Text
* Code chunks

![](images/Rmd_example.png)


## Introduction to the Tidyverse

Before we get into data wrangling, let's look at the [Tidyverse](https://www.tidyverse.org/)

"The tidyverse is an opinionated collection of R packages designed for data science. 
All packages share an underlying design philosophy, grammar, and data structures."



There are tidyverse packages for data wrangling, modeling, and visualization.

## Data wrangling with *dplyr*

"[*dplyr*](https://dplyr.tidyverse.org/) is a grammar of data manipulation, 
providing a consistent set of verbs that help you solve the most common data 
manipulation challenges"

Common functions include:

* Creating new variables 
* Choosing variables based on their name 
* Choosing rows based on a condition 
* Grouping data by a variable 



```r
# load pacman, installing if needed
if(!require("pacman")){install.packages("pacman", repos="http://cran.r-project.org")}

# load packages as needed (dplyr for wrangling; ggplo2 for data visualization)
pacman::p_load(dplyr, ggplot2)
```

## Example Dataset `airquality`

R has many built-in datasets - let's use one on air quality from New York in 1973. 


```r
# load the "airquality" dataset into the environment
data(airquality)

## explore some data attributes
# show the class of the dataset
class(airquality)
```

```
## [1] "data.frame"
```

```r
# display the dimensions (153 rows and 6 columns of the dataset)
dim(airquality)
```

```
## [1] 153   6
```


## Example Dataset `airquality`


```r
# display the first several rows of data
head(airquality)
```

```
##   Ozone Solar.R Wind Temp Month Day
## 1    41     190  7.4   67     5   1
## 2    36     118  8.0   72     5   2
## 3    12     149 12.6   74     5   3
## 4    18     313 11.5   62     5   4
## 5    NA      NA 14.3   56     5   5
## 6    28      NA 14.9   66     5   6
```


## Wrangle *airquality*

Common data tasks are simplified with dplyr, once you learn the verbs.

Let's add a variable to airquality using `mutate()`


```r
# Add the year of the measurements and look at the first 10 rows
head(mutate(airquality, Year = 1973), n = 10)
```

```
##    Ozone Solar.R Wind Temp Month Day Year
## 1     41     190  7.4   67     5   1 1973
## 2     36     118  8.0   72     5   2 1973
## 3     12     149 12.6   74     5   3 1973
## 4     18     313 11.5   62     5   4 1973
## 5     NA      NA 14.3   56     5   5 1973
## 6     28      NA 14.9   66     5   6 1973
## 7     23     299  8.6   65     5   7 1973
## 8     19      99 13.8   59     5   8 1973
## 9      8      19 20.1   61     5   9 1973
## 10    NA     194  8.6   69     5  10 1973
```

## Wrangle *airquality*

Let's take a look at the new `airquality` dataframe.


```r
# show the dataframe, looking at the first few rows
head(airquality)
```

```
##   Ozone Solar.R Wind Temp Month Day
## 1    41     190  7.4   67     5   1
## 2    36     118  8.0   72     5   2
## 3    12     149 12.6   74     5   3
## 4    18     313 11.5   62     5   4
## 5    NA      NA 14.3   56     5   5
## 6    28      NA 14.9   66     5   6
```

What happened here? Where did the `Year` column go? 

In our previous step, a dataframe printed to the console (if you entered the command at the promt) or displayed below the code chunck (if you ran the command from the Rmarkdown document) with the new `Year` variable.

We performed a task on the original `airquality` object, but since we did not make a new assignment, the change was not "saved" to the object in the environment.

## Wrangle *airquality*

Now we'll add `Year` and make a new assignment 


```r
# Add year to the dataframe
airquality <- mutate(airquality, Year = 1973)

# take a look!
head(airquality)
```

```
##   Ozone Solar.R Wind Temp Month Day Year
## 1    41     190  7.4   67     5   1 1973
## 2    36     118  8.0   72     5   2 1973
## 3    12     149 12.6   74     5   3 1973
## 4    18     313 11.5   62     5   4 1973
## 5    NA      NA 14.3   56     5   5 1973
## 6    28      NA 14.9   66     5   6 1973
```

Better! 

## Wrangle *airquality*

Now let's create a date column. We'll create a character string first to break the steps down.


```r
#make a character variable, then a date variable
airquality <- mutate(airquality, Date_char = paste(Year, Month, Day, sep = "-"))
airquality <- mutate(airquality, Date = as.Date(Date_char, format = "%Y-%m-%d"))

head(airquality)
```

```
##   Ozone Solar.R Wind Temp Month Day Year Date_char       Date
## 1    41     190  7.4   67     5   1 1973  1973-5-1 1973-05-01
## 2    36     118  8.0   72     5   2 1973  1973-5-2 1973-05-02
## 3    12     149 12.6   74     5   3 1973  1973-5-3 1973-05-03
## 4    18     313 11.5   62     5   4 1973  1973-5-4 1973-05-04
## 5    NA      NA 14.3   56     5   5 1973  1973-5-5 1973-05-05
## 6    28      NA 14.9   66     5   6 1973  1973-5-6 1973-05-06
```

```r
# check the class
class(airquality$Date)
```

```
## [1] "Date"
```

## Wrangle *airquality*

Say we're only interested in data from May, we can restrict our data. The `filter()` function takes a logical condition, requiring `==` (which is different than `=` when we are assigning variables within functions).

```r
airquality <- filter(airquality, Month == 5)
head(airquality)
```

```
##   Ozone Solar.R Wind Temp Month Day Year Date_char       Date
## 1    41     190  7.4   67     5   1 1973  1973-5-1 1973-05-01
## 2    36     118  8.0   72     5   2 1973  1973-5-2 1973-05-02
## 3    12     149 12.6   74     5   3 1973  1973-5-3 1973-05-03
## 4    18     313 11.5   62     5   4 1973  1973-5-4 1973-05-04
## 5    NA      NA 14.3   56     5   5 1973  1973-5-5 1973-05-05
## 6    28      NA 14.9   66     5   6 1973  1973-5-6 1973-05-06
```

```r
dim(airquality)
```

```
## [1] 31  9
```

Great, that's what we were expecting.

## Wrangle *airquality*

Next, let's learn about the pipe operator `%>%` which will help us streamline these operations so it is clear and more succinct. The pipe operator feeds the output of one function into the input of the next, avoiding having to make multiple assignments.


```r
# reload dataset to start fresh
data(airquality)

# wrangle airquality with pipe operators starting with original dataframe
airquality_may <- airquality %>% 
  
  # add year and date variables using mutate
  mutate(Year = 1973,
         Date_char = paste(Year, Month, Day, sep = "-"), 
         Date = as.Date(Date_char, format = "%Y-%m-%d")) %>% 
  
  # filter dataframe to the month of May
  filter(Month == 5) %>% 
  
  # select the variables of interest
  select(Ozone, Temp, Date)
```

## Wrangle *airquality*

Let's take a look.


```r
# show the dataframe
head(airquality_may)
```

```
##   Ozone Temp       Date
## 1    41   67 1973-05-01
## 2    36   72 1973-05-02
## 3    12   74 1973-05-03
## 4    18   62 1973-05-04
## 5    NA   56 1973-05-05
## 6    28   66 1973-05-06
```

## Wrangle *airquality*

What if we're interested in the average ozone and temperature by month? Would we have to repeat this process for each month? dplyr has easy and powerful functions to perform data wrangling tasks on groups: `group_by()` and `summarise()`


```r
# average by month, note the argument `na.rm = TRUE` is required to ignore the 
# NA values. Otherwise NA would be returned 
airquality_by_month <- airquality %>% 
  
  # group dataframe by month
  group_by(Month) %>% 
  
  # calculate average ozone concentration and temperature
  summarise(Ozone_avg = mean(Ozone, na.rm = TRUE), 
            Temp_avg = mean(Temp, na.rm = TRUE))
```

## Wrangle *airquality*


```r
# show new dataframe
airquality_by_month
```

```
## # A tibble: 5 x 3
##   Month Ozone_avg Temp_avg
##   <int>     <dbl>    <dbl>
## 1     5      23.6     65.5
## 2     6      29.4     79.1
## 3     7      59.1     83.9
## 4     8      60.0     84.0
## 5     9      31.4     76.9
```


## Make a plot using *ggplot2*

Now let's make a simple plot so we have an example for our rendered document. The goal here is just to introduce the main plotting tool of the Tidyverse - we'll be covering *ggplot2* in more detail in the future.


```r
# initialize ggplot
p <- ggplot(data = airquality_may) + 
  
  # specify the type of geometry and the aesthetic features
  geom_line(aes(x = Date, y = Ozone)) + 
  
  # specify labels
  labs(y = "Ozone Conc. (ppb)") + 
  
  # choose theme
  theme_classic()
```

## Make a plot using *ggplot2*


```r
# show plot
print(p)
```

![](r_intro_tidyverse_literate_programming_files/figure-html/unnamed-chunk-16-1.png)<!-- -->


## Render Markdown Document

Next, let's render the document using the "Knit" button.




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





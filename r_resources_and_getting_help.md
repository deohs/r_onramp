---
title: "R Resources & Getting Help"
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

You will learn about:

* R's Internal Help Features
* R Package Documentation
* Support through Online Forums
* How to Ask for Help
* Free Online R Courses
* Free Online R Tutorials
* Free R Books

## R's Internal Help Features

You can access R's internal documentation with functions like:


```r
# Example                               # Description
# ------------------------------------- # --------------------------------------
help.start()                            # Open the top-level help index
help(vector)                            # Search the help system by topic
?matrix                                 # (same as above)
help.search("RNA")                      # Search the help system by string
??hookworm                              # (same as above)
apropos("array")                        # Find objects by partial name
args(read.table)                        # Shows the arguments for a function
example(data.frame)                     # Run the example code from the package
vignette(package = "data.table")        # Show list of vignettes for this package
vignette("datatable-intro-vignette")    # Open this vignette in the help viewer
browseVignettes("grid")                 # Show an HTML page of vignettes for a topic
RSiteSearch("tibble")                   # Search http://search.r-project.org
demo(graphics)                          # Run the demo script for this package
```

As shown above, some help functions expect the argument to be quoted.

The first link provided by `help.start()` goes to [An Introduction to R](https://cran.r-project.org/doc/manuals/r-release/R-intro.html). 

See also: [R FAQ](https://cran.r-project.org/doc/FAQ/R-FAQ.html), 
[Getting Help with R](https://www.r-project.org/help.html) (R Project), 
and [Getting Help with R](https://support.rstudio.com/hc/en-us/articles/200552336-Getting-Help-with-R) (RStudio).

## The Help Tab in the Viewer Pane 

![](images/help.png)

## R Package Documentation

A package will usually have documentation containing one or more of the following:

* index
* a DESCRIPTION file
* guides for functions (with examples), classes, and data
* vignettes, including tutorials and FAQs
* demos
* a NEWS file

The index for CRAN packages can be found using a URL like:

```
https://cran.r-project.org/web/packages/PACKAGE/index.html
```

... where PACKAGE would be replaced with the actual package name.

Example: [tidyr package index](https://cran.r-project.org/web/packages/tidyr/index.html)

## R Cheat Sheets

Many R packages have [Cheatsheets](https://posit.co/resources/cheatsheets/) 
to help with common tasks and questions.

![](images/cheatsheet.png)

## Support through Online Forums

If you have searched [R Seek](http://rseek.org/), the online documentation, and 
the web in general -- and still can't solve your problem, you can request help by 
posting to an online forum.

### Help Forums

* [r-help](https://stat.ethz.ch/mailman/listinfo/r-help) - primary support mailing list
* [Stack Overflow](http://stackoverflow.com/questions/tagged/r) - programming questions
* [Cross Validated](http://stats.stackexchange.com/questions/tagged/r) - stats questions

### General Discussion Forums

* Reddit [R language](https://www.reddit.com/r/Rlanguage/)
* Quora [R programming language](https://www.quora.com/topic/R-programming-language)

## How to Ask for Help

There are several guides to asking for help in a way which will not annoy the
support forum.

* [How to ask for R help](http://blog.revolutionanalytics.com/2014/01/how-to-ask-for-r-help.html)
* [Three tips for posting good questions to R-help and Stack Overflow](https://www.r-bloggers.com/three-tips-for-posting-good-questions-to-r-help-and-stack-overflow/)
* [Seeking Help](http://r-bio.github.io/seeking-help/)
* [How to Get Help](https://www.youtube.com/watch?v=ZFaWxxzouCY) (Youtube video by Roger Peng)

Basically, when posting questions:

* Do your homework carefully
* Be clear, specific, and thorough
* Be respectful and mature
* Provide a [reproducible example](http://stackoverflow.com/questions/5963269/how-to-make-a-great-r-reproducible-example%20) of your problem
* Don't expect strangers on the Internet to solve your homework problems for you

## Our Favorite Free Online R Courses

* [Introduction to Data Science with R](https://www.youtube.com/watch?v=EiKxy5IecUw&list=PLycnP7USbo1XGmTeFAAzr79e8V7zr7Ccx)
    - By Roger Peng - YouTube - **free**
    - See: [his books](https://leanpub.com/u/rdpeng)
    - See also: [Coursera Data Science Specialization](https://www.coursera.org/specializations/jhu-data-science), **free to audit with registration**
* [Learning R](https://www.linkedin.com/learning/learning-r-2) (3 hours) 
    - By Barton Poulson - LinkedIn - **free with [UW login](https://lnkd.in/ge35aet)**
    - See also: R Essential Training [Part 1](https://bit.ly/3hvZk14) and [Part 2](https://bit.ly/35sPYRs) (8 hours total)
    - And: [Master R for Data Science](https://www.linkedin.com/learning/paths/master-r-for-data-science) learning path (9 courses, 20 hours total)
* [R for the Intimidated](https://www.datacamp.com/courses/r-for-the-intimidated) (2 hours)
    - By Annika Salzberg - DataCamp - **free with registration**
* [Statistics and R for the Life Sciences](https://www.edx.org/course/statistics-r-life-sciences-harvardx-ph525-1x)
    - By Rafael Irizarry and Michael Love - edX - **free with registration**
    - Part of an entire 8-course series

## Our Favorite Free Online R Tutorials

### CodeSchool's Try-R

You do not need to "register" or create an account to run the tutorial. This tutorial is aimed at first-time R users. ([Try-R](http://tryr.codeschool.com/))

### Swirl tutorials

See if you can get through all 15 segments of the "R Programming: The basics of programming in R" course ([Swirl](http://swirlstats.com/students.html),
[Swirl Guide](https://github.com/ClaudiaBrauer/A-very-short-introduction-to-R/blob/master/documents/Using%20swirl%20to%20practise%20R.pdf)). Use the alternative version, "R Programming Alt". Install it like this:


```r
install.packages("swirl")
library(swirl)
install_from_swirl("R Programming Alt")
swirl()
```

## R Books: "Free" (UW-licensed) eBooks

These are available at no cost to [UW](https://www.lib.washington.edu/) students, 
staff, or faculty. The links we have provided (for the title text) are to the 
UW-licensed copy. There are many more R books available through the UW, but these
are some of our favorites.

- [Beginning Data Science with R](http://alliance-primo.hosted.exlibrisgroup.com/UW:all:CP71215329450001451)
    - by Manas A. Pathak
- [R for Stata Users](http://alliance-primo.hosted.exlibrisgroup.com/UW:all:CP71161669170001451)
    - by Robert A. Muenchen and Joseph Hilbe
- [R in a Nutshell](http://alliance-primo.hosted.exlibrisgroup.com/UW:all:CP71155074480001451) First Edition and [R in a Nutshell](https://alliance-primo.hosted.exlibrisgroup.com/permalink/f/kjtuig/CP71189583280001451) Second Edition
    - by Joseph Adler and M. Eng
- [R by example](http://alliance-primo.hosted.exlibrisgroup.com/UW:all:CP71109296790001451)
    - by Jim Albert and Maria L. Rizzo
- [The Art of R Programming: A Tour of Statistical Software Design](https://alliance-primo.hosted.exlibrisgroup.com/permalink/f/kjtuig/CP71185032870001451) 
    - by Norman Matloff
- [Data Science in R](http://alliance-primo.hosted.exlibrisgroup.com/UW:all:CP71284212860001451)
    - by Deborah Nolan

## More of Our Favorite R Books

These ebooks are from the developers of the Tidyverse family of packages:

* [R for Data Science](https://r4ds.hadley.nz/)
    - by Hadley Wickham, Mine Çetinkaya-Rundel & Garrett Grolemund
* [Advanced R](https://adv-r.hadley.nz/)
    - by Hadley Wickham

The [UW](https://www.lib.washington.edu/) has all of these (in print and ebook 
editions) and the Seattle Public Library ([SPL](http://www.spl.org/)) has two 
of these as eBooks through O'Reilly's Safari website. Seattle residents may 
obtain a free SPL [library card](http://www.spl.org/using-the-library/get-started/get-a-library-card) to gain access to these eBooks. The title text has been linked to the publisher's website for each book.

* [R for Everyone: Advanced Analytics and Graphics](http://www.jaredlander.com/r-for-everyone/)
    - by Jared P. Lander ( [GOOG](https://www.google.com/search?tbo=p&tbm=bks&q=intitle:%22R+for+Everyone%3A+Advanced+Analytics+and+Graphics%22&num=10&gws_rd=ssl) | [AMZN](http://www.amazon.com/dp/0321888030/?tag=5308-0610-7646) | [UW](http://alliance-primo.hosted.exlibrisgroup.com/primo_library/libweb/action/search.do?fn=search&ct=search&vid=UW&vl%28753972432UI0%29=title&vl%281UIStartWith0%29=starts+with&vl%28freeText0%29=%22R+for+Everyone%3A+Advanced+Analytics+and+Graphics%22&Submit=Search) )
* [R in Action: Data Analysis and Graphics with R](https://www.manning.com/books/r-in-action-second-edition) 
    - by Robert Kabacoff ( [GOOG](https://www.google.com/search?tbo=p&tbm=bks&q=intitle:%22R+in+Action%3A+Data+Analysis+and+Graphics+with+R%22&num=10&gws_rd=ssl) | [AMZN](http://www.amazon.com/dp/1617291382/?tag=5308-0610-7646) | [SPL](https://seattle.bibliocommons.com/search?t=title&search_category=title&q=%22R+in+Action%3A+Data+Analysis+and+Graphics+with+R%22&commit=Search) | [UW](http://alliance-primo.hosted.exlibrisgroup.com/primo_library/libweb/action/search.do?fn=search&ct=search&vid=UW&vl%28753972432UI0%29=title&vl%281UIStartWith0%29=starts+with&vl%28freeText0%29=%22R+in+Action%3A+Data+Analysis+and+Graphics+with+R%22&Submit=Search) )

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

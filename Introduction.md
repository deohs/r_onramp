---
title: "Introduction to R and R Studio"
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

* What R is (and isn't)
* Why R is so popular
* What RStudio is and isn't
* Reasons to use RStudio
* How to use RStudio


## What is R?

* R is a cross-platform software **_application_** for data analysis and visualization
* R is **_free_** to use, **_free_** to share, and **_free_** to modify
* R is a programming **_language_** with over 10,000 user-contributed packages
* R is an open source and **_community_**-driven software development **_project_**

## What R Isn't

* R is not a point-and-click software application (though some are available for R)
* R is not a proprietary commercial product (though some do sell it)
* R is not something you can master in a day (or a week, or a month)

## Why R is so popular

* It is free
* Support from a very helpful community of thousands of users
* Available code or packages which are only available in R
* Ability to generate quality graphics for publication
* Supports data analysis "best practices"
* End-to-end solution for reproducible data analysis
* Capable of handling "Big Data"


## What RStudio is and isn't

### RStudio is:

* A full-featured, cross-platform, open source application for working with R
* A graphical user interface (GUI) for working with R

### RStudio isn't:

* A point-and-click spreadsheet app (like Excel)
* A point-and-click plotting app (like Tableau)
* A text-only command-line utility (but it includes a text Console)
* An R language interpreter (as R is installed as a separate app)

## Why use RStudio?

* It is a user-friendly way to use R
    - The interface feels familiar to many people  
    - Integrates common data analysis workflows
* You can use it for free on most computer systems
* It is very popular, so your collaborators may already be using it
* Very few alternatives (R-GUI, JGR, Visual Studio) are as full-featured
* It performs well, is designed well, and is backed by a respected company

We are going to gear our instruction towards the use of RStudio and will not 
be covering the other alternatives.

## Ways to use RStudio

### RStudio Server accessed through a web browser

* Easier to learn and teach on because it's centrally managed by IT.
* SPH runs an RStudio Server on "rstudio.sph" for use by all SPH departments.
   - Link: [https://rstudio.sph.washington.edu](https://rstudio.sph.washington.edu)
   - Free for SPH affiliates (students, staff, faculty, postdocs, etc.) to use. 
   - Requires UW NetID.
* DEOHS runs as RStudio Server on "Plasmid", a Linux virtual machine.
   - Link: [https://plasmid.deohs.washington.edu](https://plasmid.deohs.washington.edu)
   - Free for DEOHS affiliates (students, staff, faculty, postdocs, etc.) to use. 
   - Requires UW NetID and DEOHS account.
   - Access directly from UW Campus or remotely through [Husky OnNet VPN](https://itconnect.uw.edu/connect/uw-networks/about-husky-onnet/).
   - Easily access your departmental storage (i.e., network "drives").
* This "onramp" is geared towards using RStudio Server, but any RStudio will work.

## Ways to use RStudio

### RStudio Cloud

[Rstudio Cloud](https://rstudio.cloud/) is a internet-based option to run Rstudio: [https://rstudio.cloud/](https://rstudio.cloud/). 

Eliminates hardware and software configuration and management required when running R & RStudio locally.

Requires

* Internet connection & browser
* Account sign-up

Free for individual use with some restrictions (e.g. number of projects, memory), 
and has paid subscription upgrade.

## Ways to use RStudio

### Download and run locally

* The RStudio Desktop application is available for free on the [internet](https://www.rstudio.com/products/rstudio/download/).
* We will not focus on local installation or use during this introductory onramp,
but some instructions are at the end of this presentation.

## Accessing the DEOHS Plasmid Server (from off-campus)

* This option requires a DEOHS departmental comuting account.
* First, make sure the [Husky OnNet VPN](https://itconnect.uw.edu/connect/uw-networks/about-husky-onnet/) software installed on your computer.
* Next, launch the VPN app ("Big-IP Edge Client") and sign into the UW network.

![](images/big_ip_edge_client.png)

## Login to the DEOHS Plasmid Server

* Next (whether on-campus or not) use this link to sign into DEOHS Plasmid: [https://plasmid.deohs.washington.edu](https://plasmid.deohs.washington.edu)
* If you see a UW Weblogin prompt, log in using your UW NetID and UW password
* At the RStudio Server login screen, use your UW NetID and DEOHS password

## How to use RStudio

Welcome to RStudio! Next, we'll provide an orientation to: 

* Screen/panel layout
    - panes
    - tabs
    - menus
    - buttons
* Customization and Global options
* File management

## Orientation: Default Pane Locations

1. If there is a file open, it will appear in the upper-left ("Source") pane
2. The session information will be found in the upper-right ("Environment") pane
3. The "Viewer" pane with tabs for files, Plots, Help, etc. is in the 
   lower-right
4. The interactive R prompt ("Console") will appear in the left or lower-left pane

![](images/rstudiopanes630x450.png)

## Orientation: Source Pane

The "Source" pane is where files will display when opened and where data grids
will display.

The reason it is called the "Source" pane is because it is primarily used to
edit source code such as R scripts and other text files. 

When text files are opened in RStudio, the tab they are displayed in is a 
full-featured text editor with syntax highlighting, search-and-replace and
many other features.

*You can select syntax highlighting for many programming languages in a pick list.
* Editor and other options may be set under Tools -> Global Options.

## Orientation: Environment Pane

The "Environment" pane contains tabs for the "Environment" variables, the 
command "History", and other content related to your current session or Project.

The "Environment" variables are those data objects which are currently loaded
into memory. 

* A little bit of information about their structure and contents will be 
  displayed here. 
* You can click an item to view it, often as a grid in the "Source" pane

The "History" tab is for your command history. You can send commands from 
your history to your Console tab in the Console pane or to the selected editor 
tab in the Source pane.

The "Git" tab will only show when you are working with a Project managed by
the Git version control system. (More on this later.)

## Orientation: Viewer Pane

The "Viewer" pane is where you can view and manipulate:

* Files
* Plots
* Packages
* Help
* Additional web content ("Viewer" tab)

There is a tab for each of these.


## The Help Tab in the Viewer Pane 

![](images/help.png)



## Orientation: Console Pane

The Console is where you can type (or paste) commands at an interactive R prompt.

The prompt will be found at the bottom of the Console tab of the Console pane.

Code selected from the text editor in the Source pane or from the command history in the Environment pane can also be run here.

There may be other tabs for additional program output in the Console pane. 

For example, output from pressing the "Knit" button will appear in a "R Markdown" tab in the Console pane.

There is also a Terminal tab for interacting with the command "shell" of your operating system, such as "Bash"

## How the Console prompt works

Input:

* The prompt waits for R commands
* You type a, R command at the prompt and press *Enter* (or *Return*)
* R will parse your commands and try execute them

Output:  

* R will either show an error, show results, or silently complete the task
* R will display the prompt with a `>` character (by default)
* R will display a `+` prompt if it expects more from you than you provided
* R will display output below the command, with `[#]` often preceding data

## How to use Console output

R returns data by:

* Showing data on the screen in the console
* Saving data to a variable (in memory)
* Saving data to a file (on your disk or the network)
* Saving data to a database (either locally or over the network)

Usually, you manipulate data in memory and then save it to a file or database when you are done working with it.

While you could copy text results shown to the screen and paste them elsewhere, this method should be avoided. 

## Orientation: Panes and Tabs

Each pane has two grey buttons in the upper left which allow you to minimize or
maximize the pane. Maximizing increases the height, not the width.

Each pane has one or more tabs which allow you to pick what you view in that
pane.

Some tabs have a grey "X" in the upper left corner of that tab that let's you
close the tab.

Some tabs offer a menu of buttons with text labels beneath the tab. These allow
you to perform operations related to the contents of the tab. Some of the buttons are pick-lists.

Some tabs offer "refresh", "clear" and three dot (...) menu buttons.

The "Files" tab offers a "breadcrumb" navigation feature under the row of buttons.

## Orientation: Menus and Buttons

The top-level application menus will have the same choices regardless of
which pane you are using. 

Some choices will be "greyed out" if they are not available for a particular 
operation.

The menus, buttons, and pick-lists in the panes will vary depending on the
content of the pane and the context of the operation you are performing.

There is a button with an icon of a whisk broom (or brush). The text associated
with this button is "Clear" or "Clear All". You can use it to clear the 
contents of the tab.

Some tabs offer a Search box with a magnifying glass icon. Tabs with this
feature include the Environment, Files, Packages, and Help tabs.

## Customization and Global Options

You can customize many aspects of RStudio with the Tools -> Global Options
menu choice.

This opens a configuration settings window with navigation on the side.

Here are some recommended settings:

* Code -> (Editing) -> [x] Insert spaces for tab, Tab width 2
    - ![](images/insert_spaces_for_tab.png)
* Code -> (Display) -> [x] Show margin, Margin column 80
    - ![](images/show_margin.png)

These settings will help you write more readable code. (More on this later.)

You may also wish to customize your pane layout in "Pane Layout".

## File Management

The Files tab of the Viewer pane is useful for file navigation and management.

You can navigate to your files and move, copy, rename, and delete them. You can
create new folders. 

In RStudio on the Plasmid you will also upload and download files using this tab.

The home (~) folder for RStudio on Plasmid is your DEOHS H:// drive

The three-dot (...) button on the Files tab prompts for a custom file path.

RStudio offers a "Project" feature to make working with files easier (more on this later).

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


## How to install R and RStudio Desktop

We will not be spending time on local installations of R and RStudio during this introductory onramp. These instructions are here for reference if needed:

1. [Download](https://cran.r-project.org/banner.shtml) the latest
   **_installer_** version of **_R_** available for your operating system.
     - Run the installer (usually by double-clicking on the installer's icon).
     - Click through the installer's prompts accordingly. The defaults are       
       usually fine.
2. [Download](https://www.rstudio.com/products/rstudio/download/) the latest
   **_installer_** version of **_RStudio Desktop_** available for your 
   operating system.
     - Run the installer (usually by double-clicking on the installer's icon).
     - Click through the installer's prompts accordingly. The defaults are       
       usually fine.
3. You may remove the installers when you have confirmed that RStudio is 
   installed correctly and launches without error.

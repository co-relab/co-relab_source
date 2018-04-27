# Source Blogdown files for the corelab.io website
This repository contains the source files for the CORE Lab webpage (corelab.io), which is just a GitHub Pages page (co-relab.github.io) with a custom domain.

The site is built in the [Blogdown R Package](https://bookdown.org/yihui/blogdown/) and this repository stores the source Blogdown files. Blogdown then "knits" the files into .html and other web-compatible files that are published to a Github Pages page (co-relab.github.io -- which is also corelab.io). These html and other "published" files, which we never edit directly, reside in the [co-relab.github.io](https://github.com/co-relab/co-relab.github.io) repo.
This is because GitHub Pages can only contain the "published" files for the site to render. So, we build the site in this repo, then "publish" the finished files to that repo.

The workflow to edit the page is to clone the files locally, make any edits, then commit the changes back to this repository. 

Basic steps for CORE lab members to edit the webpage:  

1. Ensure you have R and R Studio installed.  
2. Create a GitHub account. Ask Rick or Hans to add you as a collaborator to the webpage repos so you have commit permissions.  
3. If necessary, [Install Git](https://help.github.com/articles/set-up-git/) (comes with MacOS by default)  
4. [Clone](https://help.github.com/articles/cloning-a-repository/) (e.g., download the files and create a Git repository on your local hard disk) the two website repos locally. To do this, open a [Terminal](http://blog.teamtreehouse.com/introduction-to-the-mac-os-x-command-line) (or [cmd prompt](https://www.howtogeek.com/235101/10-ways-to-open-the-command-prompt-in-windows-10/)), navigate to where you want the files to be stored on your hard disk (use the 'cd' command in Terminal, which changes your directory), and run these two commands:  
`"git clone https://github.com/co-relab/co-relab_source.git"`  
`"git clone https://github.com/co-relab/co-relab.github.io.git"`

This will create two new subdirectories/Git repos: co-relab_source and co-relab.github.io

5. Navigate on your computer to the new *co-relab_source* folder and open *co-relab_source.rproj* in R Studio. 
6. Also open *co-relab_source_rscript.R* (the R script). Using R Projects eliminates the need to set a working directory each time (it's automatically set to the folder containing the .rproj file).
7. At this point, just follow instructions in the R script to edit the page. Once you're done, you'll "commit" those changes back to this repo. Go to the Terminal (in R studio, or on your computer), if necessary navigate to the repository you want to commit (e.g., "cd C:/Users/Username/Projects/co-relab_source"). Then, run these commands:  
`#git add --all`  
`#git commit -m "Enter commit message detailing changes here"`  
`#git push -u origin master`  
Repeat for the co-relab.github.io folder  
(These instructions are also in the R script)


Rick's edit

Cedric's edit


# Repository for corelab.io website
The corelab.io webpage is a GitHub Pages webpage (co-relab.github.io), using the custom domain of corelab.io. It is built for the CORE Lab at the Universite Grenoble Alpes.

This repo contains the code to generate the site. It is built in the [Blogdown R Package](https://bookdown.org/yihui/blogdown/). The actual site itself is in the [co-relab.github.io](https://github.com/co-relab/co-relab.github.io) repo.
This is because GitHub Pages can only contain the "published" files for the site to render. So, we build the site in this repo,
then "publish" the finished files to that repo.

Basic steps to install/use/make changes:  
1. [Install Git](https://help.github.com/articles/set-up-git/) (if necessary -- comes on Mac by default)  
2. [Clone](https://help.github.com/articles/cloning-a-repository/) (e.g., download the files and create a Git repository on your local hard disk) these two repos locally. Open a [Terminal](http://blog.teamtreehouse.com/introduction-to-the-mac-os-x-command-line) (or [cmd prompt](https://www.howtogeek.com/235101/10-ways-to-open-the-command-prompt-in-windows-10/)), navigate to where you want the files to be stored (use the 'cd' command in Terminal), and run these two commands:  
`"git clone https://github.com/co-relab/co-relab_source.git"`  
`"git clone https://github.com/co-relab/co-relab.github.io.git"`

This will create two new subdirectories/Git repos: co-relab_source and co-relab.github.io

You will also need R and R Studio installed.

Then, navigate on your computer to the source files repo, and open the .rproj file (co-relab_source.rproj) in R Studio. Then open the r script (co-relab_source_rscript.R). Using R Projects eliminates the need to set a working directory each time (it's automatically set to the folder containing the .rproj file)

Then, follow the instructions in the R script for more info.
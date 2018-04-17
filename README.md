# co-relab_source
Source files for the corelab.io website (also co-relab.github.io).
The corelab.io webpage is a GitHub Pages webpage, using the custom domain of corelab.io

This repo contains the code to generate the site. The actual site itself is in the repo "co-relab.github.io".
This is because GitHub Pages can only have the files for the site to render. So, we build the site in this repo,
then push the "finished" files to that repo.

More instructions to follow later.

Basic steps to use:
1. Install Git (if necessary)
2. Clone these two repos locally. Open a Terminal (or cmd prompt), navigate to where you want the files to be stored, and run these two commands:
"git clone https://github.com/co-relab/co-relab_source.git" (source files repo)
"git clone https://github.com/co-relab/co-relab.github.io.git" (github pages repo)

Then, navigate on your computer to the source files repo, and open the .rproj file (and then the r script file).
Using R Projects eliminates the need to set a working directory each time (it's automatically set to the folder containing the .rproj file)

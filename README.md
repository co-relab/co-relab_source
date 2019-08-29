# Source Blogdown files for the corelab.io website
This repository contains the source files for the CORE Lab webpage (corelab.io).

The site is built in the [Blogdown R Package](https://bookdown.org/yihui/blogdown/) and this repository stores the source Blogdown files. We then use a Netlify.com account, point it to this repository, and it "knits" the source files into .html and other web-compatible files that are published. The domain name ("corelab.io") is registered on namesilo.com, and you enter that information in to Netlify. If lab members can't find the necessary logins/passwords, ask the PI.

The workflow to edit the webpage is to fork the files to your GitHub account, clone the files locally, make any edits, commit and push the changes back to your GitHub account, then submit a "Pull Request" to the main co-relab/co-relab_source branch on GitHub. One of the admins on that account will need to accept those changes before they are official.

Basic steps for CORE lab members to edit the webpage:  

1. Ensure you have R and R Studio installed.  
2. Create a GitHub account.   
3. [Fork](https://help.github.com/articles/fork-a-repo/) the repository into your own account:  
https://github.com/co-relab/co-relab_source  
4. If necessary, [Install Git](https://help.github.com/articles/set-up-git/) (comes with MacOS by default)  
5. [Clone](https://help.github.com/articles/cloning-a-repository/) (e.g., download the files and create a Git repository on your local hard disk) the repo locally. To do this, first go to the forked repository on GitHub, click the "Clone or Download" button, copy the link. 
Open a [Terminal](http://blog.teamtreehouse.com/introduction-to-the-mac-os-x-command-line) (or [cmd prompt](https://www.howtogeek.com/235101/10-ways-to-open-the-command-prompt-in-windows-10/)), navigate to where you want the files to be stored on your hard disk (use the 'cd' command in Terminal, which changes your directory), and run:
`git clone <copied url>`

Replace `<copied url>` with your clipboard.

This will create a new directory on your computer: co-relab_source

6. Navigate on your computer to the new *co-relab_source* folder and open *co-relab_source.rproj* in R Studio. 
7. Also open *co-relab_source_rscript.R* (the R script) in the same R window. Using R Projects eliminates the need to set a working directory each time (it's automatically set to the folder containing the .rproj file).
8. In the Terminal of R Studio (or your regular command line), [configure the remote repository](https://help.github.com/articles/configuring-a-remote-for-a-fork/) so you can update your local files with changes from the main repo:  
`git remote add upstream https://github.com/co-relab/co-relab_source.git`
9. Each time before you start editing the page, [update your local repo](https://help.github.com/articles/syncing-a-fork/) and resolve any conflicts. You can do this in R Studio by using the UI interface in the upper right "Git" tab, or via the R Studio 'terminal' (a tab where the Console usually is):  
`git fetch upstream`  
`git checkout master`  
`git merge upstream/master`

If you get conflicts you will have to resolve them before it will let you merge. IF you want to overwrite your local changes with the main repo you can "stash" your files like this:
`git stash save --keep-index`

If you don't want to keep your stashed files, drop them:
`git stash drop`

10. At this point, just follow instructions in the R script to edit the page.  
11. Once you're done, you'll "Commit" those changes back to your local repository using the "Git" window in R Studio: Checkbox the files you want to commit (usually all of them), then press "Commit". Write a commit message that explains what changes were made, and press "Commit" in the new window.  
12. Then, to "Push" these changes back to your fork on GitHub, press the "Push" button in R Studio.  
13. Finally, submit a "Pull Request" to send these changes back to the original repository and make them live on the webpage: go to GitHub.com, login on your account, and submit a "Pull Request". After this, a website admin (Rick or Hans, at the moment) needs to login to the 'co-relab' GitHub account, and merge the pull request.  

Note: You need to be authenticated to your GitHub account on your pc or it will give you an error.

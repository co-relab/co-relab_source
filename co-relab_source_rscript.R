# Originally I followed this to get started: https://tclavelle.github.io/blog/blogdown_github/
# Builds webpage (corelab.io) in blogdown, commits files to GitHub, and knits them into the webpage with Netlify.com

# To start, if you haven't already, fork the github repo, clone it locally, configure the upstream repository, and sync with the upstream repository  (steps 1-9 in readme.md)
# Each time you start to edit the page, repeat step 9 and do this in terminal:
# git fetch upstream
# git checkout master
# git merge upstream/master

# If you get conflicts you will have to resolve them before it will let you merge. IF you want to overwrite your local changes with the main repo
# you can "stash" your files like this:
#git stash save --keep-index

# If you don't want to keep your stashed files, drop them:
#git stash drop

# Sometimes I get issues with my local branch being persistently behind master, found this helpful to resolve:
# https://stackoverflow.com/questions/41283955/github-keeps-saying-this-branch-is-x-commits-ahead-y-commits-behind/41289258

# specifically running these two lines:
#git pull --rebase upstream master
#git push --force-with-lease origin master

# Many lines below commented out because they are only run once to download files, which are then manually edited. 
#### WARNING: Uncommenting and running from the start will overwrite everything to defaults.
#### So, pick and choose the lines you need. Mostly this file is just describing the set-up process.

# We use an .rproj file so we can skip setwd()

# Load blogdown package and install Hugo (if needed)
library(blogdown)
#install_hugo()

# At site creation, I ran the below lines to generate the site in Blogdown.
# Running this again would overwrite the site with a new blank site. I leave the code as an example.

# Can use different themes (https://themes.gohugo.io/) by specifying the github repo theme=''
# The URL comes from the theme's GitHub account and repo. Here, using the theme https://github.com/saey55/hugo-elate-theme
# For this step, the R Project directory (e.g., working directory) needs to be completely empty 
# (I just temporarily move the existing files out and back in manually)
#new_site(theme='saey55/hugo-elate-theme')

# Now, there are many files in the directory. These must be edited manually to add/change content.

# The serve site function generates a preview of the webpage.
# Click the button next to the broom in the viewer to open in a browser.
serve_site()


### THE MAIN FILE TO EDIT TO ADD/CHANGE CONTENT:
# config.toml
# you can run the line below to edit this file in rstudio
#file.edit("config.toml")


# Other information:
# Most images are under /themes/hugo-elate-theme/static/images
# To add content (pdfs etc.) you can put them under /content/ and call them with just their filename (no directory).

# This theme comes with 4 different CSS styles. I couldn't find a setting to change them, so to use style4 I manually renamed:
# themes/hugo-elate-theme/static/css/style4.css to style.css
# themes/hugo-elate-theme/static/css/style4.css.map to style.css.map

# Most changes to the theme can be made under /themes/hugo-elate-theme/layouts/partials

# To deploy to web:
# Below command by default renders the site into a new subfolder in the directory called "public".
# At the top of config.toml you can specify a different directory with: publishDir = ""
# Never do that for this file, because Netlify depends on the files being in /public/
build_site()

# To commit to github, use the "Git" window in R Studio.
# Checkbox the files you want to commit (usually all of them), then press "Commit". Write a commit message
# that explains what changes were made, and press "Commit" in the new window.
# Wait for it to complete, then go back to the main R Studio window, and press "Push". This will push the files to GitHub.

# To make the changes live on the website, you have to then go to GitHub.com, login on your account, and 
# submit a "Pull Request".
# Then, the website admin (Rick or Hans, at the moment) needs to login to the 'co-relab' GitHub account, and merge the pull request. Alernatively you could ask for your GitHub account to added as a collaborator with merge permissions.

# Note: You need to be authenticated to your GitHub account on your pc or it will give you an error.
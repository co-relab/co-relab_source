# Originally I followed this to get started: https://tclavelle.github.io/blog/blogdown_github/
# Builds webpage (corelab.io) in blogdown and publishes to GitHub Pages

# First, two repositories were created on GitHub.com. One for the actual page (following https://pages.github.com/)
# A second is created to store the raw files/blogdown files because the first repo can only store the "ready-for-web" files.
# or it won't render

# To start, if you haven't already, clone both GitHub repos locally: open a terminal, use "cd" to 
# navigate to the directory you want to download to (it will make a new subdirectory below your current
# directory for each repo). Then run in the terminal the URL to the repos
# e.g. "git clone https://github.com/co-relab/co-relab_source.git" (source files repo)
# and "git clone https://github.com/co-relab/co-relab.github.io.git" (github pages repo)
# Note: you need git installed on your computer or this won't work (comes with MacOS, needs installed on Windows)

# Subsequent times, run this line in Terminal if you want to pull any updates from the master branch
# (generally good practice to run this before any new session, and run the commit/push commands -- end of this file -- at the end of each session)
#git pull origin master

# Many lines below commented out because they are only run once to download files, which are then manually edited. 
#### WARNING: Uncommenting and running from the start will overwrite everything to defaults.
#### So, pick and choose the lines you need. Mostly this file is just describing the set-up process.

# We use an .rproj file so we can skip setwd()

# Load blogdown package and install Hugo (if needed)
library(blogdown)
install_hugo()

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
file.edit("config.toml")


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
# In this case I added publishDir = "../co-relab.github.io" which generates these files in the github pages repo folder
# as long as you downloaded the repos to folders under the same directory (the '..' command moves up one directory level)
build_site()

# To commit to github pages, open the terminal (or use the "Terminal" window in R Studio -- NOT the console)
# Navigate to the local repo you want to commit with "cd"
# Type the three commands:

# git add --all
# git commit -m "add grants, papers, and announcements"
# git push -u origin master

# First for the co-relab_source. Repeat these steps for the /co-relab.github.io repo.

# Note: You need to be authenticated to your GitHub account on your pc, and that account needs to be
# added as a collaborator to the website repos or you will encounter an authentication error here.
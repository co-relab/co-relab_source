# Adapted from https://tclavelle.github.io/blog/blogdown_github/
# Builds webpage in blogdown and publishes to GitHub Pages

# First, two repositories were created on GitHub.com. One for the actual page (follow https://pages.github.com/)
# A second is created to store the raw files/blogdown files because the first repo can only store the "ready-for-web" files.
# or it won't render

# To start, clone both GitHub repos locally: open a terminal, use "cd" to navigate to the directory you want
# to download to (it will make a new subdirectory below your current directory for each repo)
# Then run in the terminal the URL to the repos
# e.g. "git clone https://github.com/co-relab/co-relab_source.git" (source files repo)
# and "git clone https://github.com/co-relab/co-relab.github.io.git" (github pages repo)
# Note: you need git installed on your computer or this won't work (comes with MacOS but not PC)

# Many lines below commented out because they are only run once to download files, which are
# then manually edited. 
#### WARNING: Uncommenting and running from the start will overwrite everything to defaults

# We use an .rproj file so we can skip setwd()

# Load blogdown package and install Hugo
library(blogdown)
#install_hugo()

# Create new site in our recently cloned blogdown repository (same as wd, unless specified)
# Can use different themes (https://themes.gohugo.io/) by specifying the github repo theme=''
# For this step the directory needs to be completely empty
new_site(theme = 'saey55/hugo-elate-theme',
         format = 'toml')

# Create a new post
# new_post(title = 'hello-world.Rmd', ext = ".Rmd")

# Serve site to generate the webpage.
# Click the button next to the broom in the viewer to open in a browser.
serve_site()

# To deploy to web:
# Below command renders the site into "public" folder, and also raklein.github.io folder
# because of publishDir = "../raklein.github.io" in config.toml
build_site()

# To commit to github pages, open a terminal, navigate to the raklein.github.io folder
# and type these three lines:
#git add --all
#git commit -m "Commit message here"
#git push -u origin master
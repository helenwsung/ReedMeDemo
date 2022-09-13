### 3. Configure git with Rstudio ############################################

## set your user name and email:
usethis::use_git_config(user.name = "helenwsung", user.email = "hwsung@hawaii.edu")

## create a personal access token for authentication:
usethis::create_github_token() 
## in case usethis version < 2.0.0: usethis::browse_github_token() (or even better: update usethis!)

##You could even get out ahead of this and store the PAT explicitly right now. In R, call gitcreds::gitcreds_set() to get a prompt where you can paste your PAT:
gitcreds::gitcreds_set()

## set personal access token:
credentials::set_github_pat("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")

## or store it manually in '.Renviron':
usethis::edit_r_environ()
## store your personal access token in the file that opens in your editor with:
## GITHUB_PAT=xxxyyyzzz
## and make sure '.Renviron' ends with a newline

# ----------------------------------------------------------------------------

#### 4. Restart R! ###########################################################

# ----------------------------------------------------------------------------

#### 5. Verify settings ######################################################

usethis::git_sitrep()

## Your username and email should be stated correctly in the output. 
## Also, the report shoud cotain something like:
## 'Personal access token: '<found in env var>''

## If you are still having troubles, read the output carefully.
## It might be that the PAT is still not updated in your `.Renviron` file.
## Call `usethis::edit_r_environ()` to update that file manually.

# ----------------------------------------------------------------------------

## THAT'S IT!
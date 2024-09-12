#### To configure your git account globally in that machine(in every directory):

*    `git config --global user.email johndoe@example.com`

#### To configure your git account locally(in that directory):

*    `git config --local user.email johndoe@example.com`

#### To see the configured git commands:

*    `git config --list`

#### To clone/download a remote repository to your local machine:

*    `git clone <url>`

#### To see name of the branch, changes staged or not, uncommited files:

*    `git status`

#### To add a file to staging:

*    `git add <filenametobeaddedtostaging>`
*    `git add *`

#### To commit a file from stagging:

*    `git commit -m "<comments for that commit>"`

>     Here we will get a commit id (which can be used to track the changes and review the commit history)


#### To pull all the changes from remote repository to local:

*    `git pull origin master`

#### To push the changes from local repository to remote repository:

*    `git push origin master`



#### To see the current branch:

*    `git branch`

#### To create a new branch:

*    `git checkout -b <nameofthenewbranch>`

#### To switch to other branch:

*    `git checkout <nameofthedesiredbranch>`

#### To see all the logs(commit history):

*    `git log`

#### To add a tag to the commit:

*    `git tag <tagid> <commitid>`

#### To push the local tags to remote repository:

*    `git push --tags origin`







#### To print file in the  repository:

*   Replace `github.com` with `gitprint.com` in the **URL**  

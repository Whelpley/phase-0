
How does tracking and adding changes make developers' lives easier?
-While there is certainly more work to do when you engage in the process of tracking, adding, and merging changes with Version Control, it pays off when you need to return to an earlier version of a project to debug, or otherwise understand its step-by-step development. If a project's authors have committed changes with enough frequency, one can observe how each change has affected on the project.

What is a commit?
-When working in Git (or other Version Control software), your work progress is tracked, but in order to return to a specific point in your work, you have to make a "commit", which is a command that saves the state of your work at that specific time, and allows you to return to that point later.

What are the best practices for commit messages?
-Keep it short: under 50 chars
-Capitalize the first letter
-Imperative tense: think in terms of "this commit will [your commit message]"

What does the HEAD^ argument mean?
-That is an argument used after the "git reset" command, used to jump back to the last commit.  If you want to jump back to the current, use HEAD instead; to go back further use HEAD~X, where X = the number of commits you want to go back.

What are the 3 stages of a git change and how do you move a file from one stage to the other?
1) Working: While working in a branch, editing your files.
2) Staged: When ready to save changes, add the file to be staged with the command "git add [filename]". This is not a returnable point, but if you check "git status" it will show that a file is ready for a commit.
3) Committed: Confirm the commit with the command "git commit -m "your commit message"".  A returnable save point has now been created.

Write a handy cheatsheet of the commands you need to commit your changes
-git checkout -b branch-name : create new working branch
-git add [files] : to start the commit process and Stage edits
-git commit -m "message" : finish the commit (be sure to write a proper message)

What is a pull request and how do you create and merge one?
-A Pull Request is a stage in the Github work flow in which a branch is presented for review before being merged to the master, providing a safety barrier to ensure that the master is correct.  To start the process, push your branch from your local git to Github with the command "git push origin [branch-name]". Then in Github, find the branch you just uploaded, hit the Pull Reqest button, and follow the confirmations (green buttons) to merge.

Why are pull requests preferred when working with teams?
-Pull requests are preferred by teams because it allows updates to be reviewed before being added to the master.
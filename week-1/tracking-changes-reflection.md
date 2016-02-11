How does tracking and adding changes make developers' lives easier? It creates a timeline of all changes and who made them so bugs can be found and fixed more efficiently by reverting to past versions and reworking changes.

What is a commit? A commit is like a save in git, it logs your user name and time stamp along with what code you added or removed.

What are the best practices for commit messages? the best commit messages are succint yet detailed to convey what you changed

What does the HEAD^ argument mean? HEAD argument applies when you want to change saved material, ^ is the most recent ~2 is 2nd most recent, ~3 3rd most recent and so on.

What are the 3 stages of a git change and how do you move a file from one stage to the other? Create a new branch with git checkout -b branch_name . Package your changes for commiting by adding and new files or folders with git add filname.txt . Commit all added edits with git commit -m "message"

Write a handy cheatsheet of the commands you need to commit your changes:
git checkout -b branch-name
git add directory/file_name
git commit -m "message"

What is a pull request and how do you create and merge one? A pull request gives the manager of the master file a request to pull your branch to the master to update it. This is done rather than just putting it there to give everyone a chance to check for errors and keep the master working.

Once a repository is pushed to GitHub you find it and click Compare & Pull Request, write your title and description and click Create Pull Request. The Pull Request has been sent and is a linkable page that will let you view the changes in the pull.  To merge you click the Merge Pull Request button, then Confirm Merge. It is now merged and you can clean up by clicking the Delete Branch button as well. Back in your terminal you can also enter git branch -d branch_name to delete the local branch once you've merged.

Why are pull requests preferred when working with teams? Pull requests are great for working with teams for several reasons. First it allows for other sets of eyes to check the changes for errors before they are merged to the master. It also regulates changes so the master isn't changing or erroring while everyone is working on it and it allows for transparency and accountability.
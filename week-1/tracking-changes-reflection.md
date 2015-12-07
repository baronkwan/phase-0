# DBC 1.5 Tracking Changes

Release 5: Reflect

### How does tracking and adding changes make developers' lives easier?

> Git works by following all of the changes in the files inside a git tracked folder. A Commit act like a save point for developers to go back and forth and look at the state of the files at that commit. A commit is your safety net if things go wrong in developers' code. Developers can revert to a working state while the codes are still good. It is a great idea to commit early and commit often to create more frequcent save points to fall back on when needed.


### What is a commit?

> Version control keeps track of changes automatically. Changes include modifying, deleting, adding, moving files or directories. However, as the projects expand the number of changes expand too. Instead of recording each change individually, the version control system wait until user to submit changes as a collection of actions. This act enhanced the project's efficiency and it is known as a commit. Think of commit as the "saving point" of a video game. It is a point where you can go back to forth at the state of the files at that commit. This saves the pain of starting over from the begining.

### What are the best practices for commit messages?

> The best practices for commit messages is 

> 1. Capitalize first letter

> 2. Constraint the messages in 50 character long, not more than 72 characters

> 3. Use imperative verb form (```change``` rather than ```changed``` or ```changes```)


### What does the HEAD^ argument mean?

> ```HEAD``` is the commit you currently on. ```HEAD^``` is the previous commit of ```HEAD```.


### What are the 3 stages of a git change and how do you move a file from one stage to the other?

> Stage 1.	Working state	- in a state where you modify files

> Stage 2.	Staged state	- in a state where all selected changes are staged. Waiting for the next commit

> Stage 3.	Commit state	- in a state where a 'save point' of all changes have made from the last commit of staged files.

> To move a file from stage 1 to stage 2, you will need to use ```git add``` to add a modified file into the staged state. Then use ```git commit -m "MESSAGE INSERT HERE"``` to commit the staged file into a commit state, replace 'MESSAGE INSERT HERE' with your own message.


### Write a handy cheatsheet of the commands you need to commit your changes?

| command | What it does |
| ------- | ------------ |
| ```git status``` | To check if the files changed in working directory |
| ```git add . ``` | To add all changed files to the staging state |
| ```git commit -m "MESSAGE INSET HERE"``` | To set up a save point for all changes from the last commit |


### What is a pull request and how do you create and merge one?

> Pull requests let you tell others about changes you have pushed to a GitHub repository. It is a way to merge your code from a differnt branch into the master branch. Once a pull request is sent, interested parties can review the set of changes, discuss potential modifications, and even push follow-up commits if necessary. It is commonly used by teams and organizations when it comes to collaborating a projects.

> To create a pull request, you should

> 1.	Create and checkout to the new chranch where you will write and commit some code.

> 2.	Push the branch to Github from your local repo to the remote repo (Your origin repo)

> 3.	By then, go to visit your repo on GitHub and click on the "compare and pull request" button.

> 4.	You then directed to a "Open a pull request" page and make sure you are comparing your base (master) with your new pushed branch. Fill in the title and decription if neccssary.

>5.		Click on the "Create pull request" button to complete the pull request.

> In order to merge a pull request

> 1.	Go to the "Conversation" tab of your pull request page. And click on the "Merge pull request" button.

> 2.	Click the "Confirm merge" button. And then the pull request is successfully merged and closed.

> After that, you should clean up the pushed branch by deleting it. For now on, the master branch of your repo should display your merged commits as the lastest commits.


### Why are pull requests preferred when working with teams?

> Once a pull request is sent, interested parties can review the set of changes, discuss potential modifications, and even push follow-up commits if necessary. It is commonly used by teams and organizations to collaborating a projects at the same time remotely.












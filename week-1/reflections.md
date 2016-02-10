# 1.1 Think About Time Reflection
I browsed each of the links and followed with some extra reading on brain waves and meditation and the trap of Alpha Blocking. I think it’s helpful and interesting to categorize different types of brain activity and know what affects them and how they affect us and understanding that is essential to being mindful. I was reminded that while it’s important to be mindful while working it is also important to be mindful while at rest or play and that can make a walk in the woods or spending time with a loved one still productive in its own way. One can also use Time Boxing/ Pomodoro Technique to work efficiently in scheduled bursts of 25 min. or so rather than burning out with an attempted 6 hour slog through tasks. Rather than distract this technique actually helps one to stay on task and be mindful and it can be used most effectively if it is learned  and reinforced as a habit. I perform in a similar way, I can buckle down and knock out tasks and reward myself by changing the music, checking a blog or getting a drink. The difficult part it keeping the break in between small. To combat this I have restructured my work space to remove distracting clutter and will employ meditation, exercise, and mindfulness to decompress and focus while staying energized. I may even buy a tomato timer.

# 1.2 The Command Line Reflection

1. The Shell is the Command Line Interface, it’s the terminal the programmer can enter code in to write and perform tasks. In the shell all actions are represented in characters and symbols whereas in the Graphic User Interface a user may see a visual representation of files and directories. Bash is the specific shell and language we are using to learn our Unix coding

2. As I go through this material the most challenging part is saying the actual name of the command in my head rather than what is looks like. For example I may type a command to Print Working Directory but while I do it I can’t help but think “pewd” rather than Print Working Directory. I’m working on this.

3. I had no problem with the commands on our list, I was however having trouble with the cat command to stream a file.

4. The most important commands for me have been pwd and ls because they let me “look around” to see where I am in my navigation. It seems like a good habit to use those a bunch. Help is also going to come in very handy.

5.
pwd - Print Working Directory - shows where you’re working

ls - list - lists the files in the directory you’re working in. I think of it as pwd blips you on a map and ls lets you look to see what’s around you

mv - move - this can either move a file between directories or rename a file in the same directory

cd - change directory - takes you back or forward through a path or directories

../ - this is a quick way to jump back a directory or several (../../..)

touch - this is a quick way to make an empty file

mkdir - make directory - this creates a new directory

less - use less to open a text file and scroll through one screen at a time so it doesn’t all fly by in the shell

rmdir - remove directory - this deletes a directory but errors if there’s anything in the directory

rm - remove - this removes non directory items like a file

help - displays all the commands

#1.4 Forking and Cloning Reflection

To create a new repo locally make or select a folder in bash and use the command “get init”. This will create a .git folder and designate the directory as a git. To do the same on GitHub you only need to press the + button on the top right of your account page and set the name, permissions, and add a license if you choose. If you are cloning a repo down from GitHub you don’t need to designate a directory with init first, you may use: git clone <URL> and your repo will be cloned from GitHub to your selected folder.

To fork a repo you must view that repo in GitHub. Then you click the Fork button on the top right and select where you would like to fork to (choose your account). Forking a repository is different than cloning. A cloned repo will still report commits back to the master while a Forked repo is independent so all commits will save to it rather that the repo it was forked from.  Forking a repo is preferable to creating a new repo because it saves the time of rewriting everything, it’s a copy. You will still need to clone your forked repo so you have a local copy to work on. To do so make sure you’re in the right place in bash with pwd and enter “git clone <URL>” where URL is copied from the repo in your GitHub account, not the account you forked yours from.

This was a straightforward process and I didn’t encounter any problem. Additionally I found the way to open a directory in a specific app is to enter: open -a “Application” /This/Is/Your/Path
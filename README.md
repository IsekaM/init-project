# Init Project Script
Another 'idle' project of mine. I got this idea from a video by Kalle Hallden ([click here](https://www.youtube.com/watch?v=7Y8Ppin12r4&t=768s)), where he made a script using bash and python to initialize his projects. I decided to make a similar script but with bash only that does the same thing but, make it less complicated (I think it might be more complicated in the future but oh well).

## How it Works
This script works simply by typing the the script name and passing the name of the project to it. 

Eg: `./init-project.sh test-project`

After executing this script, it will create a git initialized folder on your Desktop in a "Projects" folder with the remote repository already created.

## Plans for the future (maybe)
As I said before, this script is just an 'idle' coding project so, I don't think I will be spending much time on it. With that said, there are some things I have in mind. Some of these ideas include:

1. Adding a "feature" that will automatically install the required programs to make this script run without any issue
2. Populate the project folder with the files based on the type of project that's being done (specfically express or laravel because those are the frameworks I'm working with/using at the moment)
3. Add support for other remote repositories apart from GitHub
4. Allow the user to enter the location of the folder they would like to intialize their projects in
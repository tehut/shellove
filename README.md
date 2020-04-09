# 🐚 Love
This repository is a companion to my talk at Adiecon 2020 [*Improving Productivity: Terminal Tricks and Unix Scripts*](https://www.youtube.com/watch?v=1vcn4jQpSFM) and intended as an example of how even incredbly simple BASH scripts can save time and serve as personal documentation. The following simple script installs the following:
- Homebrew: Package manager for OSX
- Iterm2: Alternative to Terminal.app
- ZSH: Alternative to BASH shell
- Oh my ZSH!: Framework for customizing ZSH shell
- tldr: Supplement to man pages, emphasis on examples and accessible explanations.

## Adiecon 2020 Slides
*[Improving Productivity: Terminal Tricks and Unix Scripts](https://docs.google.com/presentation/d/1NL9aFGQ5i15OGHialvAMoIMPTaxnoLi3x_NxSDKGD5Y/edit?usp=sharing)*

There is a super thorough Works Cited list at the end of the slide deck with tutorials and blogs that I referenced while putting together the slides.  I highly recommend you check those authors out if you're setting up a MacOS dev environment and want ideas on how to customize your environment for optimal productivity and joy.

## Pre-Requisite
**X-Code**

To test if you have xcode installed run: `xcode--select --version` 

To install run ` xcode--select --install`

## To Run
Ensure the permissions are correct (if you get a permission error run `chmod+ x shelling.sh`) and run `./shelling.sh`
_________
# Notes

The install script doesn't customize your configurations at all but read the works cited section in my slide deck and you can get all the info you need on customizing your installation.

The section offer examples of key scripting concepts not covered in the `shelling.sh` script.

## [Control Operators](#control-operators)
According to the manual:
>control operator
The most common control operators in BASH are: `&& , ||, ;`
- Use `&&` to join two commands on the condition that the first command is successfull
- Use `||` to join two commands on the condition that the first command fails
- Use `;` to join two commands independent of the first command's return code

## [Loops](#loops)
```
myAarray=( each word is an item )
for i in "${array[@]}"
do
	echo $i
done
```

## [Arrays in Bash](#bash-arrays)
Instantiation:
 ```
compound assignment:  myArray=( each word is an item ) 
indexed assignment: myArray[#]=<value@index>
 ```
 - Array Range:
 Bash arrays start at 1, not 0.  
 
 - Looping over arrays:
Use the syntax `"${arrayName[@]}"`

- the `@` ensures you access more than the first item & the quotes prevent unexpected splitting which may not be an issue but will be hard to troubleshoot if it is.

## [Script Parameters](#script-parameters)
Passing parameters to a script is as simple as typing the parameters in a space delimited list just after the script invocation.
```
$ ./shelling.sh tehutgetahun zsh
```

From inside the script I'd be able to reference those parameters:
```
- Entire command: $0
- First argument: $1
- Nth argument: $n
```

## [~/.bash_profile vs ~/.bashrc](#shells)
  Your `.bash_profile` file is responsible for configuring interactive (login) shells and your `.bashrc` profile configures all other profiles.  
- General convention is to write all of your configuration in the `.bashrc` file and `source ~/.bashrc ` to the top of your `.bash_profile`.
- If you're running zsh all you need to worry about is configuring your `.zshrc` file, zsh wil handle the rest.



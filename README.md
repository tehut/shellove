
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
- Instantiation:
 ```
compound assignment:  myArray=( each word is an item ) 
indexed assignment: myArray[#]=<value@index>
 ```
 - Array Range:
 Bash arrays start at 1, not 0.  Don't ask me why, but I promise it's true.
 
 - Looping over arrays:
Use the syntax `"${arrayName[@]}"`
- the `@` ensures you access more than the first item & the quotes prevent unexpected splitting which may not be an issue but will be hard to troubleshoot if it is.

## [Script Parameters](#script-parameters)
Passing parameters to a script is as simple as typing the parameters in a space delimited list just after the script invocation.
``
$ ./shelling.sh tehutgetahun zsh
```

From inside the script I'd be able to reference those parameters:
- *Entire command* $0
- *First argument* $1
- *Nth argument* $n


## [~/.bash_profile vs ~/.bashrc](#shells)
  Your `.bash_profile` file is responsible for configuring interactive (login) shells and your `.bashrc` profile configures all other profiles.  
- General convention is to write all of your configuration in the `.bashrc` file and `source ~/.bashrc ` to the top of your `.bash_profile`.
- If you're running zsh all you need to worry about is configuring your `.zshrc` file, zsh wil handle the rest.



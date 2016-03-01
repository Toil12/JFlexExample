# JFlexExample

Sample source code of using JFlex

### Prerequisite:

1) Install Java JDK 7 or 8

2) Install JFlex (http://jflex.de/download.html) it is just a matter of extract the tar or zip ball

We can add the execute path to the OS environment so that command jflex can be invoke without typing the full path all the time

    In Linux,OSX it would be modifying the .bash_profile or .bashrc to include the path
      PATH=$PATH:/home/user/vinh/jflex-1.6.6/bin
    
    In Windows, we need to add the path to the environment variables under System properties(under My Computer properties), as well as modifying the jflex.bat in the C:/jflex-1.6.1/bin (assumed that jflex is extracted at that location)
    
      JFLEX_HOME=C:/jflex-1.6.1
  
More information of JFlex can be found
http://jflex.de/manual.html

One main importance difference between JFlex and Flex is that the order of user code, option declaration and lexical rule

For Flex:

     definitions
     %%
     rules
     %%
     user code

For JFlex:

     UserCode
     %%
     Options and declarations
     %%
     Lexical rules

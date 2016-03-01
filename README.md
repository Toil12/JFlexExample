# JFlexExample

Sample source code of using JFlex

### Prerequisite:

1) Install Java JDK 7 or 8

2) Install JFlex (http://jflex.de/download.html) it is just a matter of extract the tar or zip ball

We can add the execute path to the OS environment so that command jflex can be invoke without typing the full path all the time
  
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

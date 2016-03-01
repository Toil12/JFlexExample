@echo off
echo '------- Start to compile ----------'

REM remove the old java files generated as well as compiled
del Yylex.*

REM #################### process #########################
REM # flex file ---> java source file ---> java bytecode #
REM ######################################################


REM # generate the java scanner source file from the flex file
jflex %1 && javac Yylex.java && echo '------- Compile done! -------------'
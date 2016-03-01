@echo off
echo '------- Start to compile ----------'

REM # remove the old java files generated as well as compiled
for /R %%f IN (bin/*.class) DO del %%f
REM del bin/**/*.*

REM #################### process #########################
REM # flex file ---> java source file ---> java bytecode #
REM ######################################################

REM # generate the java scanner source file from the flex file
jflex -d src/org/ifn660 %1 && javac -d bin/ src/org/ifn660/*.java src/org/ifn660/type/*.java && echo '------- Compile done! -------------'
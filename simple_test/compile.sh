pwd
echo '------- Start to compile ----------'

# remove the old java files generated as well as compiled
rm Yylex.*

#################### process #########################
# flex file ---> java source file ---> java bytecode #
######################################################

# generate the java scanner source file from the flex file
jflex $1

# generate the java executable byte code from the scanner source java
javac Yylex.java

echo '------- Compile done! -------------'
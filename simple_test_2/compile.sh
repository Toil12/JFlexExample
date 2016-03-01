pwd
echo '------- Start to compile ----------'

# remove the old java files generated as well as compiled
rm bin/**/*.*

#################### process #########################
# flex file ---> java source file ---> java bytecode #
######################################################

# generate the java scanner source file from the flex file
jflex -d src/org/ifn660 $1

# generate the java executable byte code from the scanner source java
javac -d bin/ src/org/ifn660/**/*.java

echo '------- Compile done! -------------'
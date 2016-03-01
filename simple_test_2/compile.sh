pwd
echo '------- Start to compile ----------'
rm bin/**/*.*
jflex -d src/org/ifn660 $1
javac -d bin/ src/org/ifn660/**/*.java
echo '------- Compile done! -------------'
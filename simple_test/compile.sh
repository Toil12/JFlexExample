pwd
echo '------- Start to compile ----------'
rm Yylex.*
jflex $1
javac Yylex.java
echo '------- Compile done! -------------'
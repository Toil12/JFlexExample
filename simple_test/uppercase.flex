// UserCode

// this is the place to put package declarations and import statements. 
// It is possible, but not considered good Java style to put helper classes, such as token classes, into this section

%%
// Options and declarations

// cause the scanning method to be declared as returning Java type int
%int

// Creates a main function in the generated class that expects the name of an input file on the command line 
// and then runs the scanner on this input file
%standalone

%%
// Lexical rules

[a-z] {System.out.print(yytext().toUpperCase());}

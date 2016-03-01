// UserCode
// this is the place to put package declarations and import statements. 
// It is possible, but not considered good Java style to put helper classes, such as token classes, into this section
package org.ifn660;

import static org.ifn660.type.TokenType.*;
import org.ifn660.type.TokenType;

%%
// Options and declarations

// Creates a main function in the generated class that expects the name of an input file on the command line 
// and then runs the scanner on this input file
%standalone

%type TokenType

%%
// Lexical rules
[a-zA-Z]   {return CHARACTER;}
[0-9]   {return DIGIT;}
[,]     {return COMMA;}
[ ]    {return SPACE;}
<<EOF>>     {return EOF;}
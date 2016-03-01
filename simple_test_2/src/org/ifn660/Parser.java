package org.ifn660;

import static org.ifn660.type.TokenType.*;
import org.ifn660.type.TokenType;
import java.io.FileReader;
import java.io.IOException;

public class Parser {
    public static void main(String[] args) {
        System.out.println("Scanning [" + args[0] + "]");
        try {
            Yylex scanner = new Yylex(new FileReader(args[0]));

            TokenType token;
            do {
                token = scanner.yylex();

                switch (token) {
                    case CHARACTER:
                        System.out.println("Got a character");
                    break;
                    case DIGIT:
                        System.out.println("Got a digit");
                    break;
                    case COMMA:
                        System.out.println("Got a comma");
                    break;
                    case SPACE:
                        System.out.println("Got a space");
                    break;
                    default:
                        System.out.println("Unknown token");
                }
            } while (token != EOF);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
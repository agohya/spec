parser grammar AgohyaSpecParser;

options {
	tokenVocab = AgohyaSpecLexer;
}

// The starting parser rule
prog:
	PROJECT COLON CURLY_BRACK_OPEN DATA_PAIR+ CURLY_BRACK_CLOSE EOF
	;
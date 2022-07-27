lexer grammar AgohyaSpecLexer;

// sdk
SDK:
	'sdk'
	;

PROJECT:
	'project'
	;

NAME:
	'name'
	;

DEVELOPER:
	'developer'
	;

PACKAGES:
	'packages'
	;

APP_PACKAGES:
	'appPackages'
	;

DEV_PACKAGES:
	'devPackages'
	;

PRIVACY_POLICY:
	'privacyPolicy'
	;

TERMS_OF_USE:
	'termsOfUse'
	;

// NULL
NIL:
	'nil'
	;

// values

AGOMAN:
	'agoman'
	;

GIT:
	'git'
	;

STARTUP:
	'Startup'
	;

CORPORATE:
	'Corporate'
	;

INDIVIDUAL:
	'Individual'
	;

DATA_PAIR:
	KEY COLON VALUE
	;

KEY:
	Letters
	;

VALUE:
	Letters
	| AGOMAN
	| GIT
	| STARTUP
	| CORPORATE
	| INDIVIDUAL
	| Digits
	| STRING_LITERAL
	;

WHITESPACE: ('\t' | ' ' | '\n' '\r')+ -> skip
	;

COMMENT:
	'#' ~[\r\n]* -> skip
	;

NEWLINE:
	'\n'
	;

CURLY_BRACK_OPEN:
	'{'
	;

CURLY_BRACK_CLOSE:
	'}'
	;

SEMICOLON:
	';'
	;

COLON:
	':'
	;

STRING_LITERAL:
	'"' ~[\r\n\\"] '"'
	;

STRING_LITERAL_WITH_ESCAPE:
	STRING_LITERAL
	| '"' (~[\\\r\n'] | EscapeSequence) '"'
	;

fragment EscapeSequence:
	'\\' [btnfr"'\\]
	| '\\' ([0-3]? [0-7])? [0-7]
	| '\\' UnicodeLetter
	;

fragment UnicodeLetter:
	'u'+ HexDigit HexDigit HexDigit HexDigit
	;

fragment HexDigit:
	[0-9a-fA-F]
	;

fragment Letters:
	[a-zA-Z]+
	;

fragment Digits:
	[0-9]+
	;
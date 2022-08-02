// Generated from D:\agohya\lang\spec\grammar\AgohyaSpecParser.g4 by ANTLR 4.10.1
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes, constant_identifier_names, prefer_function_declarations_over_variables, non_constant_identifier_names, no_leading_underscores_for_local_identifiers
import 'package:antlr4/antlr4.dart';

import 'AgohyaSpecParserVisitor.dart';
import 'AgohyaSpecParserBaseVisitor.dart';
const int RULE_prog = 0;
class AgohyaSpecParser extends Parser {
  static final checkVersion = () => RuntimeMetaData.checkVersion('4.10.1', RuntimeMetaData.VERSION);
  static const int TOKEN_EOF = IntStream.EOF;

  static final List<DFA> _decisionToDFA = List.generate(
      _ATN.numberOfDecisions, (i) => DFA(_ATN.getDecisionState(i), i));
  static final PredictionContextCache _sharedContextCache = PredictionContextCache();
  static const int TOKEN_SDK = 1, TOKEN_PROJECT = 2, TOKEN_NAME = 3, TOKEN_DEVELOPER = 4, 
                   TOKEN_PACKAGES = 5, TOKEN_APP_PACKAGES = 6, TOKEN_DEV_PACKAGES = 7, 
                   TOKEN_PRIVACY_POLICY = 8, TOKEN_TERMS_OF_USE = 9, TOKEN_NIL = 10, 
                   TOKEN_AGOMAN = 11, TOKEN_GIT = 12, TOKEN_STARTUP = 13, 
                   TOKEN_CORPORATE = 14, TOKEN_INDIVIDUAL = 15, TOKEN_DATA_PAIR = 16, 
                   TOKEN_KEY = 17, TOKEN_VALUE = 18, TOKEN_OBJECT = 19, 
                   TOKEN_WHITESPACE = 20, TOKEN_COMMENT = 21, TOKEN_NEWLINE = 22, 
                   TOKEN_SEPARATOR_COM = 23, TOKEN_CURLY_BRACK_OPEN = 24, 
                   TOKEN_CURLY_BRACK_CLOSE = 25, TOKEN_SEMICOLON = 26, TOKEN_COLON = 27, 
                   TOKEN_STRING_LITERAL = 28, TOKEN_STRING_LITERAL_WITH_ESCAPE = 29;

  @override
  final List<String> ruleNames = [
    'prog'
  ];

  static final List<String?> _LITERAL_NAMES = [
      null, "'sdk'", "'project'", "'name'", "'developer'", "'packages'", 
      "'appPackages'", "'devPackages'", "'privacyPolicy'", "'termsOfUse'", 
      "'nil'", "'agoman'", "'git'", "'Startup'", "'Corporate'", "'Individual'", 
      null, null, null, null, null, null, "'\\n'", "','", "'{'", "'}'", 
      "';'", "':'"
  ];
  static final List<String?> _SYMBOLIC_NAMES = [
      null, "SDK", "PROJECT", "NAME", "DEVELOPER", "PACKAGES", "APP_PACKAGES", 
      "DEV_PACKAGES", "PRIVACY_POLICY", "TERMS_OF_USE", "NIL", "AGOMAN", 
      "GIT", "STARTUP", "CORPORATE", "INDIVIDUAL", "DATA_PAIR", "KEY", "VALUE", 
      "OBJECT", "WHITESPACE", "COMMENT", "NEWLINE", "SEPARATOR_COM", "CURLY_BRACK_OPEN", 
      "CURLY_BRACK_CLOSE", "SEMICOLON", "COLON", "STRING_LITERAL", "STRING_LITERAL_WITH_ESCAPE"
  ];
  static final Vocabulary VOCABULARY = VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

  @override
  Vocabulary get vocabulary {
    return VOCABULARY;
  }

  @override
  String get grammarFileName => 'AgohyaSpecParser.g4';

  @override
  List<int> get serializedATN => _serializedATN;

  @override
  ATN getATN() {
   return _ATN;
  }

  AgohyaSpecParser(TokenStream input) : super(input) {
    interpreter = ParserATNSimulator(this, _ATN, _decisionToDFA, _sharedContextCache);
  }

  ProgContext prog() {
    dynamic _localctx = ProgContext(context, state);
    enterRule(_localctx, 0, RULE_prog);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 2;
      match(TOKEN_PROJECT);
      state = 3;
      match(TOKEN_COLON);
      state = 4;
      match(TOKEN_CURLY_BRACK_OPEN);
      state = 6; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 5;
        match(TOKEN_DATA_PAIR);
        state = 8; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while (_la == TOKEN_DATA_PAIR);
      state = 10;
      match(TOKEN_CURLY_BRACK_CLOSE);
      state = 11;
      match(TOKEN_EOF);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  static const List<int> _serializedATN = [
      4,1,29,14,2,0,7,0,1,0,1,0,1,0,1,0,4,0,7,8,0,11,0,12,0,8,1,0,1,0,1,
      0,1,0,0,0,1,0,0,0,13,0,2,1,0,0,0,2,3,5,2,0,0,3,4,5,27,0,0,4,6,5,24,
      0,0,5,7,5,16,0,0,6,5,1,0,0,0,7,8,1,0,0,0,8,6,1,0,0,0,8,9,1,0,0,0,9,
      10,1,0,0,0,10,11,5,25,0,0,11,12,5,0,0,1,12,1,1,0,0,0,1,8
  ];

  static final ATN _ATN =
      ATNDeserializer().deserialize(_serializedATN);
}
class ProgContext extends ParserRuleContext {
  TerminalNode? PROJECT() => getToken(AgohyaSpecParser.TOKEN_PROJECT, 0);
  TerminalNode? COLON() => getToken(AgohyaSpecParser.TOKEN_COLON, 0);
  TerminalNode? CURLY_BRACK_OPEN() => getToken(AgohyaSpecParser.TOKEN_CURLY_BRACK_OPEN, 0);
  TerminalNode? CURLY_BRACK_CLOSE() => getToken(AgohyaSpecParser.TOKEN_CURLY_BRACK_CLOSE, 0);
  TerminalNode? EOF() => getToken(AgohyaSpecParser.TOKEN_EOF, 0);
  List<TerminalNode> DATA_PAIRs() => getTokens(AgohyaSpecParser.TOKEN_DATA_PAIR);
  TerminalNode? DATA_PAIR(int i) => getToken(AgohyaSpecParser.TOKEN_DATA_PAIR, i);
  ProgContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_prog;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is AgohyaSpecParserVisitor<T>) {
     return visitor.visitProg(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}


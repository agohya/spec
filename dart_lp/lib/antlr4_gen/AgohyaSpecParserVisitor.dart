// Generated from D:\agohya\lang\spec\grammar\AgohyaSpecParser.g4 by ANTLR 4.10.1
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'AgohyaSpecParser.dart';

/// This abstract class defines a complete generic visitor for a parse tree
/// produced by [AgohyaSpecParser].
///
/// [T] is the eturn type of the visit operation. Use `void` for
/// operations with no return type.
abstract class AgohyaSpecParserVisitor<T> extends ParseTreeVisitor<T> {
  /// Visit a parse tree produced by [AgohyaSpecParser.prog].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitProg(ProgContext ctx);
}
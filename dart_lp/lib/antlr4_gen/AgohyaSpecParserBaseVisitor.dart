// Generated from D:\agohya\lang\spec\grammar\AgohyaSpecParser.g4 by ANTLR 4.10.1
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'AgohyaSpecParser.dart';
import 'AgohyaSpecParserVisitor.dart';

/// This class provides an empty implementation of [AgohyaSpecParserVisitor],
/// which can be extended to create a visitor which only needs to handle
/// a subset of the available methods.
///
/// [T] is the return type of the visit operation. Use `void` for
/// operations with no return type.
class AgohyaSpecParserBaseVisitor<T> extends ParseTreeVisitor<T>
    implements AgohyaSpecParserVisitor<T> {
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  // @override
  // T? visitProg(ProgContext ctx) => visitChildren(ctx);

  @override
  T? visitProg(ProgContext ctx) {
    var project = ctx.PROJECT();
    print(project!.symbol.text);
    return visitChildren(ctx);
  }
}

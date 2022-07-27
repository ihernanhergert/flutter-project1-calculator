import 'package:mobx/mobx.dart';
import 'package:math_expressions/math_expressions.dart';
part 'calc_state.g.dart';

class CalcState extends _AppState with _$CalcState {
  CalcState();
}

abstract class _AppState with Store {
  Parser parser = Parser();
  ContextModel cm = ContextModel();
  @observable
  String userInput = "";

  @observable
  String answer = "";

  @action
  void clean() {
    this.userInput = "";
  }

  @action
  void delete() {
    this.userInput = this.userInput.substring(0, this.userInput.length - 1);
  }

  @action
  void addUserInput(String inputChar) {
    this.userInput = this.userInput + inputChar;
  }

  @action
  void result() {
    Expression exp = parser.parse(this.userInput);
    exp.evaluate(EvaluationType.REAL, cm);
    this.answer = exp.evaluate(EvaluationType.REAL, cm).toString();
  }
}

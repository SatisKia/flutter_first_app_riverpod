import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'data/calc_data.dart';
import 'data/function_data.dart';
import 'data/number_data.dart';
import 'data/option_data.dart';
import 'model/app_model.dart';
import 'model/calc_model.dart';
import 'model/function_model.dart';
import 'model/number_model.dart';
import 'model/option_model.dart';

class MyModel {
  static AppModel app = AppModel();

  static CalcModel calc = CalcModel(); // 状態をもたない変数へのアクセス用
  static final calcProvider = StateNotifierProvider<CalcModel, CalcData>((_) => calc);
  static getCalcModel(WidgetRef ref) => ref.read(calcProvider.notifier);
  static readCalcData(WidgetRef ref) => ref.read(calcProvider);
  static watchCalcData(WidgetRef ref) => ref.watch(calcProvider);

  static FunctionModel function = FunctionModel(); // 状態をもたない変数へのアクセス用
  static final functionProvider = StateNotifierProvider<FunctionModel, FunctionData>((_) => function);
  static getFunctionModel(WidgetRef ref) => ref.read(functionProvider.notifier);
  static readFunctionData(WidgetRef ref) => ref.read(functionProvider);
  static watchFunctionData(WidgetRef ref) => ref.watch(functionProvider);

  static NumberModel number = NumberModel(); // 状態をもたない変数へのアクセス用
  static final numberProvider = StateNotifierProvider<NumberModel, NumberData>((_) => number);
  static getNumberModel(WidgetRef ref) => ref.read(numberProvider.notifier);
  static readNumberData(WidgetRef ref) => ref.read(numberProvider);
  static watchNumberData(WidgetRef ref) => ref.watch(numberProvider);

  static OptionModel option = OptionModel(); // 状態をもたない変数へのアクセス用
  static final optionProvider = StateNotifierProvider<OptionModel, OptionData>((_) => option);
  static getOptionModel(WidgetRef ref) => ref.read(optionProvider.notifier);
  static readOptionData(WidgetRef ref) => ref.read(optionProvider);
  static watchOptionData(WidgetRef ref) => ref.watch(optionProvider);
}

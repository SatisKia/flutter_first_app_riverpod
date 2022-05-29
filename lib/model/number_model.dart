import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/number_data.dart';

class NumberModel extends StateNotifier<NumberData> {
  NumberModel() : super(const NumberData());

  // 状態を更新する関数
  setDispStr(String dispStr) {
    state = state.copyWith(dispStr: dispStr);
  }
  setDispLog(String dispLog) {
    state = state.copyWith(dispLog: dispLog);
  }
  setDispAnswer(String dispAnswer) {
    state = state.copyWith(dispAnswer: dispAnswer);
  }
  setDispMemory(String dispMemory) {
    state = state.copyWith(dispMemory: dispMemory);
  }
  setMrcButtonText(String mrcButtonText) {
    state = state.copyWith(mrcButtonText: mrcButtonText);
  }

  // 状態をもたない変数
}

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/function_data.dart';

class FunctionModel extends StateNotifier<FunctionData> {
  FunctionModel() : super(const FunctionData());

  // 状態を更新する関数
  setDispStr(String dispStr) {
    state = state.copyWith(dispStr: dispStr);
  }
  setDispAngle(String dispAngle) {
    state = state.copyWith(dispAngle: dispAngle);
  }
  setDispMemory(String dispMemory) {
    state = state.copyWith(dispMemory: dispMemory);
  }
  setMrcButtonText(String mrcButtonText) {
    state = state.copyWith(mrcButtonText: mrcButtonText);
  }
  setAngleButtonText(String angleButtonText) {
    state = state.copyWith(angleButtonText: angleButtonText);
  }

  // 状態をもたない変数
}

import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/option_data.dart';

class OptionModel extends StateNotifier<OptionData> {
  OptionModel() : super(const OptionData());

  // 状態を更新する関数
  setItalic(bool italic) {
    state = state.copyWith(italic: italic);
  }
  setSeparator(int separator) {
    state = state.copyWith(separator: separator);
  }
  setImageFlag(bool imageFlag) {
    state = state.copyWith(imageFlag: imageFlag);
  }
  setImageX(double imageX) {
    state = state.copyWith(imageX: imageX);
  }
  setImageY(double imageY) {
    state = state.copyWith(imageY: imageY);
  }
  setImage(MemoryImage image) {
    state = state.copyWith(image: image);
  }

  // 状態をもたない変数
}

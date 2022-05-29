import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'option_data.freezed.dart'; // 生成されるファイル名

@freezed
class OptionData with _$OptionData {
  const factory OptionData({
    // 状態をもつ変数
    @Default(false) bool italic, // イタリック
    @Default(0) int separator, // 桁区切り
    @Default(false) bool imageFlag,
    @Default(0.0) double imageX,
    @Default(0.0) double imageY,
    MemoryImage? image,
  }) = _OptionData;
}

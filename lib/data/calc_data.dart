import 'package:freezed_annotation/freezed_annotation.dart';

part 'calc_data.freezed.dart'; // 生成されるファイル名

@freezed
class CalcData with _$CalcData {
  const factory CalcData({
    // 状態をもつ変数
    @Default(false) bool errorFlag, // エラー
  }) = _CalcData;
}

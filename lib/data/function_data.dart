import 'package:freezed_annotation/freezed_annotation.dart';

part 'function_data.freezed.dart'; // 生成されるファイル名

@freezed
class FunctionData with _$FunctionData {
  const factory FunctionData({
    // 状態をもつ変数
    @Default('0') String dispStr,
    @Default('RAD') String dispAngle,
    @Default('0') String dispMemory,
    @Default('MR') String mrcButtonText,
    @Default('DEG') String angleButtonText,
  }) = _FunctionData;
}

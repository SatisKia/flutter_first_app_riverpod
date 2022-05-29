import 'package:freezed_annotation/freezed_annotation.dart';

part 'number_data.freezed.dart'; // 生成されるファイル名

@freezed
class NumberData with _$NumberData {
  const factory NumberData({
    // 状態をもつ変数
    @Default('0') String dispStr,
    @Default('') String dispLog,
    @Default('0') String dispAnswer,
    @Default('0') String dispMemory,
    @Default('MR') String mrcButtonText,
  }) = _NumberData;
}

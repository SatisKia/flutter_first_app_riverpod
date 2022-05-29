// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'number_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NumberData {
// 状態をもつ変数
  String get dispStr => throw _privateConstructorUsedError;
  String get dispLog => throw _privateConstructorUsedError;
  String get dispAnswer => throw _privateConstructorUsedError;
  String get dispMemory => throw _privateConstructorUsedError;
  String get mrcButtonText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NumberDataCopyWith<NumberData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NumberDataCopyWith<$Res> {
  factory $NumberDataCopyWith(
          NumberData value, $Res Function(NumberData) then) =
      _$NumberDataCopyWithImpl<$Res>;
  $Res call(
      {String dispStr,
      String dispLog,
      String dispAnswer,
      String dispMemory,
      String mrcButtonText});
}

/// @nodoc
class _$NumberDataCopyWithImpl<$Res> implements $NumberDataCopyWith<$Res> {
  _$NumberDataCopyWithImpl(this._value, this._then);

  final NumberData _value;
  // ignore: unused_field
  final $Res Function(NumberData) _then;

  @override
  $Res call({
    Object? dispStr = freezed,
    Object? dispLog = freezed,
    Object? dispAnswer = freezed,
    Object? dispMemory = freezed,
    Object? mrcButtonText = freezed,
  }) {
    return _then(_value.copyWith(
      dispStr: dispStr == freezed
          ? _value.dispStr
          : dispStr // ignore: cast_nullable_to_non_nullable
              as String,
      dispLog: dispLog == freezed
          ? _value.dispLog
          : dispLog // ignore: cast_nullable_to_non_nullable
              as String,
      dispAnswer: dispAnswer == freezed
          ? _value.dispAnswer
          : dispAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      dispMemory: dispMemory == freezed
          ? _value.dispMemory
          : dispMemory // ignore: cast_nullable_to_non_nullable
              as String,
      mrcButtonText: mrcButtonText == freezed
          ? _value.mrcButtonText
          : mrcButtonText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_NumberDataCopyWith<$Res>
    implements $NumberDataCopyWith<$Res> {
  factory _$$_NumberDataCopyWith(
          _$_NumberData value, $Res Function(_$_NumberData) then) =
      __$$_NumberDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String dispStr,
      String dispLog,
      String dispAnswer,
      String dispMemory,
      String mrcButtonText});
}

/// @nodoc
class __$$_NumberDataCopyWithImpl<$Res> extends _$NumberDataCopyWithImpl<$Res>
    implements _$$_NumberDataCopyWith<$Res> {
  __$$_NumberDataCopyWithImpl(
      _$_NumberData _value, $Res Function(_$_NumberData) _then)
      : super(_value, (v) => _then(v as _$_NumberData));

  @override
  _$_NumberData get _value => super._value as _$_NumberData;

  @override
  $Res call({
    Object? dispStr = freezed,
    Object? dispLog = freezed,
    Object? dispAnswer = freezed,
    Object? dispMemory = freezed,
    Object? mrcButtonText = freezed,
  }) {
    return _then(_$_NumberData(
      dispStr: dispStr == freezed
          ? _value.dispStr
          : dispStr // ignore: cast_nullable_to_non_nullable
              as String,
      dispLog: dispLog == freezed
          ? _value.dispLog
          : dispLog // ignore: cast_nullable_to_non_nullable
              as String,
      dispAnswer: dispAnswer == freezed
          ? _value.dispAnswer
          : dispAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      dispMemory: dispMemory == freezed
          ? _value.dispMemory
          : dispMemory // ignore: cast_nullable_to_non_nullable
              as String,
      mrcButtonText: mrcButtonText == freezed
          ? _value.mrcButtonText
          : mrcButtonText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NumberData implements _NumberData {
  const _$_NumberData(
      {this.dispStr = '0',
      this.dispLog = '',
      this.dispAnswer = '0',
      this.dispMemory = '0',
      this.mrcButtonText = 'MR'});

// 状態をもつ変数
  @override
  @JsonKey()
  final String dispStr;
  @override
  @JsonKey()
  final String dispLog;
  @override
  @JsonKey()
  final String dispAnswer;
  @override
  @JsonKey()
  final String dispMemory;
  @override
  @JsonKey()
  final String mrcButtonText;

  @override
  String toString() {
    return 'NumberData(dispStr: $dispStr, dispLog: $dispLog, dispAnswer: $dispAnswer, dispMemory: $dispMemory, mrcButtonText: $mrcButtonText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NumberData &&
            const DeepCollectionEquality().equals(other.dispStr, dispStr) &&
            const DeepCollectionEquality().equals(other.dispLog, dispLog) &&
            const DeepCollectionEquality()
                .equals(other.dispAnswer, dispAnswer) &&
            const DeepCollectionEquality()
                .equals(other.dispMemory, dispMemory) &&
            const DeepCollectionEquality()
                .equals(other.mrcButtonText, mrcButtonText));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(dispStr),
      const DeepCollectionEquality().hash(dispLog),
      const DeepCollectionEquality().hash(dispAnswer),
      const DeepCollectionEquality().hash(dispMemory),
      const DeepCollectionEquality().hash(mrcButtonText));

  @JsonKey(ignore: true)
  @override
  _$$_NumberDataCopyWith<_$_NumberData> get copyWith =>
      __$$_NumberDataCopyWithImpl<_$_NumberData>(this, _$identity);
}

abstract class _NumberData implements NumberData {
  const factory _NumberData(
      {final String dispStr,
      final String dispLog,
      final String dispAnswer,
      final String dispMemory,
      final String mrcButtonText}) = _$_NumberData;

  @override // 状態をもつ変数
  String get dispStr => throw _privateConstructorUsedError;
  @override
  String get dispLog => throw _privateConstructorUsedError;
  @override
  String get dispAnswer => throw _privateConstructorUsedError;
  @override
  String get dispMemory => throw _privateConstructorUsedError;
  @override
  String get mrcButtonText => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_NumberDataCopyWith<_$_NumberData> get copyWith =>
      throw _privateConstructorUsedError;
}

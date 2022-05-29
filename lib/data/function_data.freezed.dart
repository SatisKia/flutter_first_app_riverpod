// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'function_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FunctionData {
// 状態をもつ変数
  String get dispStr => throw _privateConstructorUsedError;
  String get dispAngle => throw _privateConstructorUsedError;
  String get dispMemory => throw _privateConstructorUsedError;
  String get mrcButtonText => throw _privateConstructorUsedError;
  String get angleButtonText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FunctionDataCopyWith<FunctionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FunctionDataCopyWith<$Res> {
  factory $FunctionDataCopyWith(
          FunctionData value, $Res Function(FunctionData) then) =
      _$FunctionDataCopyWithImpl<$Res>;
  $Res call(
      {String dispStr,
      String dispAngle,
      String dispMemory,
      String mrcButtonText,
      String angleButtonText});
}

/// @nodoc
class _$FunctionDataCopyWithImpl<$Res> implements $FunctionDataCopyWith<$Res> {
  _$FunctionDataCopyWithImpl(this._value, this._then);

  final FunctionData _value;
  // ignore: unused_field
  final $Res Function(FunctionData) _then;

  @override
  $Res call({
    Object? dispStr = freezed,
    Object? dispAngle = freezed,
    Object? dispMemory = freezed,
    Object? mrcButtonText = freezed,
    Object? angleButtonText = freezed,
  }) {
    return _then(_value.copyWith(
      dispStr: dispStr == freezed
          ? _value.dispStr
          : dispStr // ignore: cast_nullable_to_non_nullable
              as String,
      dispAngle: dispAngle == freezed
          ? _value.dispAngle
          : dispAngle // ignore: cast_nullable_to_non_nullable
              as String,
      dispMemory: dispMemory == freezed
          ? _value.dispMemory
          : dispMemory // ignore: cast_nullable_to_non_nullable
              as String,
      mrcButtonText: mrcButtonText == freezed
          ? _value.mrcButtonText
          : mrcButtonText // ignore: cast_nullable_to_non_nullable
              as String,
      angleButtonText: angleButtonText == freezed
          ? _value.angleButtonText
          : angleButtonText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_FunctionDataCopyWith<$Res>
    implements $FunctionDataCopyWith<$Res> {
  factory _$$_FunctionDataCopyWith(
          _$_FunctionData value, $Res Function(_$_FunctionData) then) =
      __$$_FunctionDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String dispStr,
      String dispAngle,
      String dispMemory,
      String mrcButtonText,
      String angleButtonText});
}

/// @nodoc
class __$$_FunctionDataCopyWithImpl<$Res>
    extends _$FunctionDataCopyWithImpl<$Res>
    implements _$$_FunctionDataCopyWith<$Res> {
  __$$_FunctionDataCopyWithImpl(
      _$_FunctionData _value, $Res Function(_$_FunctionData) _then)
      : super(_value, (v) => _then(v as _$_FunctionData));

  @override
  _$_FunctionData get _value => super._value as _$_FunctionData;

  @override
  $Res call({
    Object? dispStr = freezed,
    Object? dispAngle = freezed,
    Object? dispMemory = freezed,
    Object? mrcButtonText = freezed,
    Object? angleButtonText = freezed,
  }) {
    return _then(_$_FunctionData(
      dispStr: dispStr == freezed
          ? _value.dispStr
          : dispStr // ignore: cast_nullable_to_non_nullable
              as String,
      dispAngle: dispAngle == freezed
          ? _value.dispAngle
          : dispAngle // ignore: cast_nullable_to_non_nullable
              as String,
      dispMemory: dispMemory == freezed
          ? _value.dispMemory
          : dispMemory // ignore: cast_nullable_to_non_nullable
              as String,
      mrcButtonText: mrcButtonText == freezed
          ? _value.mrcButtonText
          : mrcButtonText // ignore: cast_nullable_to_non_nullable
              as String,
      angleButtonText: angleButtonText == freezed
          ? _value.angleButtonText
          : angleButtonText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FunctionData implements _FunctionData {
  const _$_FunctionData(
      {this.dispStr = '0',
      this.dispAngle = 'RAD',
      this.dispMemory = '0',
      this.mrcButtonText = 'MR',
      this.angleButtonText = 'DEG'});

// 状態をもつ変数
  @override
  @JsonKey()
  final String dispStr;
  @override
  @JsonKey()
  final String dispAngle;
  @override
  @JsonKey()
  final String dispMemory;
  @override
  @JsonKey()
  final String mrcButtonText;
  @override
  @JsonKey()
  final String angleButtonText;

  @override
  String toString() {
    return 'FunctionData(dispStr: $dispStr, dispAngle: $dispAngle, dispMemory: $dispMemory, mrcButtonText: $mrcButtonText, angleButtonText: $angleButtonText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FunctionData &&
            const DeepCollectionEquality().equals(other.dispStr, dispStr) &&
            const DeepCollectionEquality().equals(other.dispAngle, dispAngle) &&
            const DeepCollectionEquality()
                .equals(other.dispMemory, dispMemory) &&
            const DeepCollectionEquality()
                .equals(other.mrcButtonText, mrcButtonText) &&
            const DeepCollectionEquality()
                .equals(other.angleButtonText, angleButtonText));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(dispStr),
      const DeepCollectionEquality().hash(dispAngle),
      const DeepCollectionEquality().hash(dispMemory),
      const DeepCollectionEquality().hash(mrcButtonText),
      const DeepCollectionEquality().hash(angleButtonText));

  @JsonKey(ignore: true)
  @override
  _$$_FunctionDataCopyWith<_$_FunctionData> get copyWith =>
      __$$_FunctionDataCopyWithImpl<_$_FunctionData>(this, _$identity);
}

abstract class _FunctionData implements FunctionData {
  const factory _FunctionData(
      {final String dispStr,
      final String dispAngle,
      final String dispMemory,
      final String mrcButtonText,
      final String angleButtonText}) = _$_FunctionData;

  @override // 状態をもつ変数
  String get dispStr => throw _privateConstructorUsedError;
  @override
  String get dispAngle => throw _privateConstructorUsedError;
  @override
  String get dispMemory => throw _privateConstructorUsedError;
  @override
  String get mrcButtonText => throw _privateConstructorUsedError;
  @override
  String get angleButtonText => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FunctionDataCopyWith<_$_FunctionData> get copyWith =>
      throw _privateConstructorUsedError;
}

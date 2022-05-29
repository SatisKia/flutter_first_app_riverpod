// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'calc_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CalcData {
// 状態をもつ変数
  bool get errorFlag => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CalcDataCopyWith<CalcData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalcDataCopyWith<$Res> {
  factory $CalcDataCopyWith(CalcData value, $Res Function(CalcData) then) =
      _$CalcDataCopyWithImpl<$Res>;
  $Res call({bool errorFlag});
}

/// @nodoc
class _$CalcDataCopyWithImpl<$Res> implements $CalcDataCopyWith<$Res> {
  _$CalcDataCopyWithImpl(this._value, this._then);

  final CalcData _value;
  // ignore: unused_field
  final $Res Function(CalcData) _then;

  @override
  $Res call({
    Object? errorFlag = freezed,
  }) {
    return _then(_value.copyWith(
      errorFlag: errorFlag == freezed
          ? _value.errorFlag
          : errorFlag // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_CalcDataCopyWith<$Res> implements $CalcDataCopyWith<$Res> {
  factory _$$_CalcDataCopyWith(
          _$_CalcData value, $Res Function(_$_CalcData) then) =
      __$$_CalcDataCopyWithImpl<$Res>;
  @override
  $Res call({bool errorFlag});
}

/// @nodoc
class __$$_CalcDataCopyWithImpl<$Res> extends _$CalcDataCopyWithImpl<$Res>
    implements _$$_CalcDataCopyWith<$Res> {
  __$$_CalcDataCopyWithImpl(
      _$_CalcData _value, $Res Function(_$_CalcData) _then)
      : super(_value, (v) => _then(v as _$_CalcData));

  @override
  _$_CalcData get _value => super._value as _$_CalcData;

  @override
  $Res call({
    Object? errorFlag = freezed,
  }) {
    return _then(_$_CalcData(
      errorFlag: errorFlag == freezed
          ? _value.errorFlag
          : errorFlag // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CalcData implements _CalcData {
  const _$_CalcData({this.errorFlag = false});

// 状態をもつ変数
  @override
  @JsonKey()
  final bool errorFlag;

  @override
  String toString() {
    return 'CalcData(errorFlag: $errorFlag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CalcData &&
            const DeepCollectionEquality().equals(other.errorFlag, errorFlag));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(errorFlag));

  @JsonKey(ignore: true)
  @override
  _$$_CalcDataCopyWith<_$_CalcData> get copyWith =>
      __$$_CalcDataCopyWithImpl<_$_CalcData>(this, _$identity);
}

abstract class _CalcData implements CalcData {
  const factory _CalcData({final bool errorFlag}) = _$_CalcData;

  @override // 状態をもつ変数
  bool get errorFlag => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CalcDataCopyWith<_$_CalcData> get copyWith =>
      throw _privateConstructorUsedError;
}

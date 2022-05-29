// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'option_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OptionData {
// 状態をもつ変数
  bool get italic => throw _privateConstructorUsedError; // イタリック
  int get separator => throw _privateConstructorUsedError; // 桁区切り
  bool get imageFlag => throw _privateConstructorUsedError;
  double get imageX => throw _privateConstructorUsedError;
  double get imageY => throw _privateConstructorUsedError;
  MemoryImage? get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OptionDataCopyWith<OptionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OptionDataCopyWith<$Res> {
  factory $OptionDataCopyWith(
          OptionData value, $Res Function(OptionData) then) =
      _$OptionDataCopyWithImpl<$Res>;
  $Res call(
      {bool italic,
      int separator,
      bool imageFlag,
      double imageX,
      double imageY,
      MemoryImage? image});
}

/// @nodoc
class _$OptionDataCopyWithImpl<$Res> implements $OptionDataCopyWith<$Res> {
  _$OptionDataCopyWithImpl(this._value, this._then);

  final OptionData _value;
  // ignore: unused_field
  final $Res Function(OptionData) _then;

  @override
  $Res call({
    Object? italic = freezed,
    Object? separator = freezed,
    Object? imageFlag = freezed,
    Object? imageX = freezed,
    Object? imageY = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      italic: italic == freezed
          ? _value.italic
          : italic // ignore: cast_nullable_to_non_nullable
              as bool,
      separator: separator == freezed
          ? _value.separator
          : separator // ignore: cast_nullable_to_non_nullable
              as int,
      imageFlag: imageFlag == freezed
          ? _value.imageFlag
          : imageFlag // ignore: cast_nullable_to_non_nullable
              as bool,
      imageX: imageX == freezed
          ? _value.imageX
          : imageX // ignore: cast_nullable_to_non_nullable
              as double,
      imageY: imageY == freezed
          ? _value.imageY
          : imageY // ignore: cast_nullable_to_non_nullable
              as double,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as MemoryImage?,
    ));
  }
}

/// @nodoc
abstract class _$$_OptionDataCopyWith<$Res>
    implements $OptionDataCopyWith<$Res> {
  factory _$$_OptionDataCopyWith(
          _$_OptionData value, $Res Function(_$_OptionData) then) =
      __$$_OptionDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool italic,
      int separator,
      bool imageFlag,
      double imageX,
      double imageY,
      MemoryImage? image});
}

/// @nodoc
class __$$_OptionDataCopyWithImpl<$Res> extends _$OptionDataCopyWithImpl<$Res>
    implements _$$_OptionDataCopyWith<$Res> {
  __$$_OptionDataCopyWithImpl(
      _$_OptionData _value, $Res Function(_$_OptionData) _then)
      : super(_value, (v) => _then(v as _$_OptionData));

  @override
  _$_OptionData get _value => super._value as _$_OptionData;

  @override
  $Res call({
    Object? italic = freezed,
    Object? separator = freezed,
    Object? imageFlag = freezed,
    Object? imageX = freezed,
    Object? imageY = freezed,
    Object? image = freezed,
  }) {
    return _then(_$_OptionData(
      italic: italic == freezed
          ? _value.italic
          : italic // ignore: cast_nullable_to_non_nullable
              as bool,
      separator: separator == freezed
          ? _value.separator
          : separator // ignore: cast_nullable_to_non_nullable
              as int,
      imageFlag: imageFlag == freezed
          ? _value.imageFlag
          : imageFlag // ignore: cast_nullable_to_non_nullable
              as bool,
      imageX: imageX == freezed
          ? _value.imageX
          : imageX // ignore: cast_nullable_to_non_nullable
              as double,
      imageY: imageY == freezed
          ? _value.imageY
          : imageY // ignore: cast_nullable_to_non_nullable
              as double,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as MemoryImage?,
    ));
  }
}

/// @nodoc

class _$_OptionData implements _OptionData {
  const _$_OptionData(
      {this.italic = false,
      this.separator = 0,
      this.imageFlag = false,
      this.imageX = 0.0,
      this.imageY = 0.0,
      this.image});

// 状態をもつ変数
  @override
  @JsonKey()
  final bool italic;
// イタリック
  @override
  @JsonKey()
  final int separator;
// 桁区切り
  @override
  @JsonKey()
  final bool imageFlag;
  @override
  @JsonKey()
  final double imageX;
  @override
  @JsonKey()
  final double imageY;
  @override
  final MemoryImage? image;

  @override
  String toString() {
    return 'OptionData(italic: $italic, separator: $separator, imageFlag: $imageFlag, imageX: $imageX, imageY: $imageY, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OptionData &&
            const DeepCollectionEquality().equals(other.italic, italic) &&
            const DeepCollectionEquality().equals(other.separator, separator) &&
            const DeepCollectionEquality().equals(other.imageFlag, imageFlag) &&
            const DeepCollectionEquality().equals(other.imageX, imageX) &&
            const DeepCollectionEquality().equals(other.imageY, imageY) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(italic),
      const DeepCollectionEquality().hash(separator),
      const DeepCollectionEquality().hash(imageFlag),
      const DeepCollectionEquality().hash(imageX),
      const DeepCollectionEquality().hash(imageY),
      const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  _$$_OptionDataCopyWith<_$_OptionData> get copyWith =>
      __$$_OptionDataCopyWithImpl<_$_OptionData>(this, _$identity);
}

abstract class _OptionData implements OptionData {
  const factory _OptionData(
      {final bool italic,
      final int separator,
      final bool imageFlag,
      final double imageX,
      final double imageY,
      final MemoryImage? image}) = _$_OptionData;

  @override // 状態をもつ変数
  bool get italic => throw _privateConstructorUsedError;
  @override // イタリック
  int get separator => throw _privateConstructorUsedError;
  @override // 桁区切り
  bool get imageFlag => throw _privateConstructorUsedError;
  @override
  double get imageX => throw _privateConstructorUsedError;
  @override
  double get imageY => throw _privateConstructorUsedError;
  @override
  MemoryImage? get image => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_OptionDataCopyWith<_$_OptionData> get copyWith =>
      throw _privateConstructorUsedError;
}

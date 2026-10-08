// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AccountInfoModel _$AccountInfoModelFromJson(Map<String, dynamic> json) {
  return _AccountInfoModel.fromJson(json);
}

/// @nodoc
mixin _$AccountInfoModel {
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "phone")
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "total")
  String? get total => throw _privateConstructorUsedError;

  /// Serializes this AccountInfoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AccountInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountInfoModelCopyWith<AccountInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountInfoModelCopyWith<$Res> {
  factory $AccountInfoModelCopyWith(
          AccountInfoModel value, $Res Function(AccountInfoModel) then) =
      _$AccountInfoModelCopyWithImpl<$Res, AccountInfoModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "title") String? title,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "total") String? total});
}

/// @nodoc
class _$AccountInfoModelCopyWithImpl<$Res, $Val extends AccountInfoModel>
    implements $AccountInfoModelCopyWith<$Res> {
  _$AccountInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? phone = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountInfoModelImplCopyWith<$Res>
    implements $AccountInfoModelCopyWith<$Res> {
  factory _$$AccountInfoModelImplCopyWith(_$AccountInfoModelImpl value,
          $Res Function(_$AccountInfoModelImpl) then) =
      __$$AccountInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "title") String? title,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "total") String? total});
}

/// @nodoc
class __$$AccountInfoModelImplCopyWithImpl<$Res>
    extends _$AccountInfoModelCopyWithImpl<$Res, _$AccountInfoModelImpl>
    implements _$$AccountInfoModelImplCopyWith<$Res> {
  __$$AccountInfoModelImplCopyWithImpl(_$AccountInfoModelImpl _value,
      $Res Function(_$AccountInfoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? phone = freezed,
    Object? total = freezed,
  }) {
    return _then(_$AccountInfoModelImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountInfoModelImpl implements _AccountInfoModel {
  const _$AccountInfoModelImpl(
      {@JsonKey(name: "title") this.title,
      @JsonKey(name: "phone") this.phone,
      @JsonKey(name: "total") this.total});

  factory _$AccountInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountInfoModelImplFromJson(json);

  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "phone")
  final String? phone;
  @override
  @JsonKey(name: "total")
  final String? total;

  @override
  String toString() {
    return 'AccountInfoModel(title: $title, phone: $phone, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountInfoModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, phone, total);

  /// Create a copy of AccountInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountInfoModelImplCopyWith<_$AccountInfoModelImpl> get copyWith =>
      __$$AccountInfoModelImplCopyWithImpl<_$AccountInfoModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountInfoModelImplToJson(
      this,
    );
  }
}

abstract class _AccountInfoModel implements AccountInfoModel {
  const factory _AccountInfoModel(
      {@JsonKey(name: "title") final String? title,
      @JsonKey(name: "phone") final String? phone,
      @JsonKey(name: "total") final String? total}) = _$AccountInfoModelImpl;

  factory _AccountInfoModel.fromJson(Map<String, dynamic> json) =
      _$AccountInfoModelImpl.fromJson;

  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "phone")
  String? get phone;
  @override
  @JsonKey(name: "total")
  String? get total;

  /// Create a copy of AccountInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountInfoModelImplCopyWith<_$AccountInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

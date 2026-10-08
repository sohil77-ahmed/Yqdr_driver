// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeUserModel _$HomeUserModelFromJson(Map<String, dynamic> json) {
  return _HomeUserModel.fromJson(json);
}

/// @nodoc
mixin _$HomeUserModel {
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "orders")
  int? get orders => throw _privateConstructorUsedError;
  @JsonKey(name: "total")
  String? get total => throw _privateConstructorUsedError;

  /// Serializes this HomeUserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HomeUserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeUserModelCopyWith<HomeUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeUserModelCopyWith<$Res> {
  factory $HomeUserModelCopyWith(
          HomeUserModel value, $Res Function(HomeUserModel) then) =
      _$HomeUserModelCopyWithImpl<$Res, HomeUserModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "orders") int? orders,
      @JsonKey(name: "total") String? total});
}

/// @nodoc
class _$HomeUserModelCopyWithImpl<$Res, $Val extends HomeUserModel>
    implements $HomeUserModelCopyWith<$Res> {
  _$HomeUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeUserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? orders = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      orders: freezed == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeUserModelImplCopyWith<$Res>
    implements $HomeUserModelCopyWith<$Res> {
  factory _$$HomeUserModelImplCopyWith(
          _$HomeUserModelImpl value, $Res Function(_$HomeUserModelImpl) then) =
      __$$HomeUserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "orders") int? orders,
      @JsonKey(name: "total") String? total});
}

/// @nodoc
class __$$HomeUserModelImplCopyWithImpl<$Res>
    extends _$HomeUserModelCopyWithImpl<$Res, _$HomeUserModelImpl>
    implements _$$HomeUserModelImplCopyWith<$Res> {
  __$$HomeUserModelImplCopyWithImpl(
      _$HomeUserModelImpl _value, $Res Function(_$HomeUserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeUserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? orders = freezed,
    Object? total = freezed,
  }) {
    return _then(_$HomeUserModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      orders: freezed == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeUserModelImpl implements _HomeUserModel {
  const _$HomeUserModelImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "orders") this.orders,
      @JsonKey(name: "total") this.total});

  factory _$HomeUserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeUserModelImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "orders")
  final int? orders;
  @override
  @JsonKey(name: "total")
  final String? total;

  @override
  String toString() {
    return 'HomeUserModel(status: $status, message: $message, orders: $orders, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeUserModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.orders, orders) || other.orders == orders) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, orders, total);

  /// Create a copy of HomeUserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeUserModelImplCopyWith<_$HomeUserModelImpl> get copyWith =>
      __$$HomeUserModelImplCopyWithImpl<_$HomeUserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeUserModelImplToJson(
      this,
    );
  }
}

abstract class _HomeUserModel implements HomeUserModel {
  const factory _HomeUserModel(
      {@JsonKey(name: "status") final String? status,
      @JsonKey(name: "message") final String? message,
      @JsonKey(name: "orders") final int? orders,
      @JsonKey(name: "total") final String? total}) = _$HomeUserModelImpl;

  factory _HomeUserModel.fromJson(Map<String, dynamic> json) =
      _$HomeUserModelImpl.fromJson;

  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(name: "orders")
  int? get orders;
  @override
  @JsonKey(name: "total")
  String? get total;

  /// Create a copy of HomeUserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeUserModelImplCopyWith<_$HomeUserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

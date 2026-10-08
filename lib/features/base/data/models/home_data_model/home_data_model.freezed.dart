// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeDataModel _$HomeDataModelFromJson(Map<String, dynamic> json) {
  return _HomeDataModel.fromJson(json);
}

/// @nodoc
mixin _$HomeDataModel {
  @JsonKey(name: "user")
  HomeUserModel? get user => throw _privateConstructorUsedError;
  @JsonKey(name: "orders")
  List<OrderModel>? get orders => throw _privateConstructorUsedError;

  /// Serializes this HomeDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HomeDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeDataModelCopyWith<HomeDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeDataModelCopyWith<$Res> {
  factory $HomeDataModelCopyWith(
          HomeDataModel value, $Res Function(HomeDataModel) then) =
      _$HomeDataModelCopyWithImpl<$Res, HomeDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "user") HomeUserModel? user,
      @JsonKey(name: "orders") List<OrderModel>? orders});

  $HomeUserModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$HomeDataModelCopyWithImpl<$Res, $Val extends HomeDataModel>
    implements $HomeDataModelCopyWith<$Res> {
  _$HomeDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? orders = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as HomeUserModel?,
      orders: freezed == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>?,
    ) as $Val);
  }

  /// Create a copy of HomeDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HomeUserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $HomeUserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeDataModelImplCopyWith<$Res>
    implements $HomeDataModelCopyWith<$Res> {
  factory _$$HomeDataModelImplCopyWith(
          _$HomeDataModelImpl value, $Res Function(_$HomeDataModelImpl) then) =
      __$$HomeDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "user") HomeUserModel? user,
      @JsonKey(name: "orders") List<OrderModel>? orders});

  @override
  $HomeUserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$$HomeDataModelImplCopyWithImpl<$Res>
    extends _$HomeDataModelCopyWithImpl<$Res, _$HomeDataModelImpl>
    implements _$$HomeDataModelImplCopyWith<$Res> {
  __$$HomeDataModelImplCopyWithImpl(
      _$HomeDataModelImpl _value, $Res Function(_$HomeDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? orders = freezed,
  }) {
    return _then(_$HomeDataModelImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as HomeUserModel?,
      orders: freezed == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeDataModelImpl implements _HomeDataModel {
  const _$HomeDataModelImpl(
      {@JsonKey(name: "user") this.user,
      @JsonKey(name: "orders") final List<OrderModel>? orders})
      : _orders = orders;

  factory _$HomeDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeDataModelImplFromJson(json);

  @override
  @JsonKey(name: "user")
  final HomeUserModel? user;
  final List<OrderModel>? _orders;
  @override
  @JsonKey(name: "orders")
  List<OrderModel>? get orders {
    final value = _orders;
    if (value == null) return null;
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HomeDataModel(user: $user, orders: $orders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeDataModelImpl &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality().equals(other._orders, _orders));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, user, const DeepCollectionEquality().hash(_orders));

  /// Create a copy of HomeDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeDataModelImplCopyWith<_$HomeDataModelImpl> get copyWith =>
      __$$HomeDataModelImplCopyWithImpl<_$HomeDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeDataModelImplToJson(
      this,
    );
  }
}

abstract class _HomeDataModel implements HomeDataModel {
  const factory _HomeDataModel(
          {@JsonKey(name: "user") final HomeUserModel? user,
          @JsonKey(name: "orders") final List<OrderModel>? orders}) =
      _$HomeDataModelImpl;

  factory _HomeDataModel.fromJson(Map<String, dynamic> json) =
      _$HomeDataModelImpl.fromJson;

  @override
  @JsonKey(name: "user")
  HomeUserModel? get user;
  @override
  @JsonKey(name: "orders")
  List<OrderModel>? get orders;

  /// Create a copy of HomeDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeDataModelImplCopyWith<_$HomeDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AccountResponseModel _$AccountResponseModelFromJson(Map<String, dynamic> json) {
  return _AccountResponseModel.fromJson(json);
}

/// @nodoc
mixin _$AccountResponseModel {
  @JsonKey(name: "user")
  AccountInfoModel? get userInfo => throw _privateConstructorUsedError;
  @JsonKey(name: "contact")
  ContactModel? get contact => throw _privateConstructorUsedError;
  @JsonKey(name: "pages")
  List<TermsModel>? get pages => throw _privateConstructorUsedError;
  String? get version => throw _privateConstructorUsedError;

  /// Serializes this AccountResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AccountResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountResponseModelCopyWith<AccountResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountResponseModelCopyWith<$Res> {
  factory $AccountResponseModelCopyWith(AccountResponseModel value,
          $Res Function(AccountResponseModel) then) =
      _$AccountResponseModelCopyWithImpl<$Res, AccountResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "user") AccountInfoModel? userInfo,
      @JsonKey(name: "contact") ContactModel? contact,
      @JsonKey(name: "pages") List<TermsModel>? pages,
      String? version});

  $AccountInfoModelCopyWith<$Res>? get userInfo;
  $ContactModelCopyWith<$Res>? get contact;
}

/// @nodoc
class _$AccountResponseModelCopyWithImpl<$Res,
        $Val extends AccountResponseModel>
    implements $AccountResponseModelCopyWith<$Res> {
  _$AccountResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userInfo = freezed,
    Object? contact = freezed,
    Object? pages = freezed,
    Object? version = freezed,
  }) {
    return _then(_value.copyWith(
      userInfo: freezed == userInfo
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as AccountInfoModel?,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as ContactModel?,
      pages: freezed == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as List<TermsModel>?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of AccountResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountInfoModelCopyWith<$Res>? get userInfo {
    if (_value.userInfo == null) {
      return null;
    }

    return $AccountInfoModelCopyWith<$Res>(_value.userInfo!, (value) {
      return _then(_value.copyWith(userInfo: value) as $Val);
    });
  }

  /// Create a copy of AccountResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContactModelCopyWith<$Res>? get contact {
    if (_value.contact == null) {
      return null;
    }

    return $ContactModelCopyWith<$Res>(_value.contact!, (value) {
      return _then(_value.copyWith(contact: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AccountResponseModelImplCopyWith<$Res>
    implements $AccountResponseModelCopyWith<$Res> {
  factory _$$AccountResponseModelImplCopyWith(_$AccountResponseModelImpl value,
          $Res Function(_$AccountResponseModelImpl) then) =
      __$$AccountResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "user") AccountInfoModel? userInfo,
      @JsonKey(name: "contact") ContactModel? contact,
      @JsonKey(name: "pages") List<TermsModel>? pages,
      String? version});

  @override
  $AccountInfoModelCopyWith<$Res>? get userInfo;
  @override
  $ContactModelCopyWith<$Res>? get contact;
}

/// @nodoc
class __$$AccountResponseModelImplCopyWithImpl<$Res>
    extends _$AccountResponseModelCopyWithImpl<$Res, _$AccountResponseModelImpl>
    implements _$$AccountResponseModelImplCopyWith<$Res> {
  __$$AccountResponseModelImplCopyWithImpl(_$AccountResponseModelImpl _value,
      $Res Function(_$AccountResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userInfo = freezed,
    Object? contact = freezed,
    Object? pages = freezed,
    Object? version = freezed,
  }) {
    return _then(_$AccountResponseModelImpl(
      userInfo: freezed == userInfo
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as AccountInfoModel?,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as ContactModel?,
      pages: freezed == pages
          ? _value._pages
          : pages // ignore: cast_nullable_to_non_nullable
              as List<TermsModel>?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountResponseModelImpl implements _AccountResponseModel {
  const _$AccountResponseModelImpl(
      {@JsonKey(name: "user") this.userInfo,
      @JsonKey(name: "contact") this.contact,
      @JsonKey(name: "pages") final List<TermsModel>? pages,
      this.version})
      : _pages = pages;

  factory _$AccountResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "user")
  final AccountInfoModel? userInfo;
  @override
  @JsonKey(name: "contact")
  final ContactModel? contact;
  final List<TermsModel>? _pages;
  @override
  @JsonKey(name: "pages")
  List<TermsModel>? get pages {
    final value = _pages;
    if (value == null) return null;
    if (_pages is EqualUnmodifiableListView) return _pages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? version;

  @override
  String toString() {
    return 'AccountResponseModel(userInfo: $userInfo, contact: $contact, pages: $pages, version: $version)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountResponseModelImpl &&
            (identical(other.userInfo, userInfo) ||
                other.userInfo == userInfo) &&
            (identical(other.contact, contact) || other.contact == contact) &&
            const DeepCollectionEquality().equals(other._pages, _pages) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userInfo, contact,
      const DeepCollectionEquality().hash(_pages), version);

  /// Create a copy of AccountResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountResponseModelImplCopyWith<_$AccountResponseModelImpl>
      get copyWith =>
          __$$AccountResponseModelImplCopyWithImpl<_$AccountResponseModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountResponseModelImplToJson(
      this,
    );
  }
}

abstract class _AccountResponseModel implements AccountResponseModel {
  const factory _AccountResponseModel(
      {@JsonKey(name: "user") final AccountInfoModel? userInfo,
      @JsonKey(name: "contact") final ContactModel? contact,
      @JsonKey(name: "pages") final List<TermsModel>? pages,
      final String? version}) = _$AccountResponseModelImpl;

  factory _AccountResponseModel.fromJson(Map<String, dynamic> json) =
      _$AccountResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "user")
  AccountInfoModel? get userInfo;
  @override
  @JsonKey(name: "contact")
  ContactModel? get contact;
  @override
  @JsonKey(name: "pages")
  List<TermsModel>? get pages;
  @override
  String? get version;

  /// Create a copy of AccountResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountResponseModelImplCopyWith<_$AccountResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SettingsModel _$SettingsModelFromJson(Map<String, dynamic> json) {
  return _SettingsModel.fromJson(json);
}

/// @nodoc
mixin _$SettingsModel {
  @JsonKey(name: "fixing")
  bool? get fixing => throw _privateConstructorUsedError;
  @JsonKey(name: "login")
  bool? get login => throw _privateConstructorUsedError;
  @JsonKey(name: "terms")
  TermsModel? get terms => throw _privateConstructorUsedError;

  /// Serializes this SettingsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SettingsModelCopyWith<SettingsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsModelCopyWith<$Res> {
  factory $SettingsModelCopyWith(
          SettingsModel value, $Res Function(SettingsModel) then) =
      _$SettingsModelCopyWithImpl<$Res, SettingsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "fixing") bool? fixing,
      @JsonKey(name: "login") bool? login,
      @JsonKey(name: "terms") TermsModel? terms});

  $TermsModelCopyWith<$Res>? get terms;
}

/// @nodoc
class _$SettingsModelCopyWithImpl<$Res, $Val extends SettingsModel>
    implements $SettingsModelCopyWith<$Res> {
  _$SettingsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fixing = freezed,
    Object? login = freezed,
    Object? terms = freezed,
  }) {
    return _then(_value.copyWith(
      fixing: freezed == fixing
          ? _value.fixing
          : fixing // ignore: cast_nullable_to_non_nullable
              as bool?,
      login: freezed == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as bool?,
      terms: freezed == terms
          ? _value.terms
          : terms // ignore: cast_nullable_to_non_nullable
              as TermsModel?,
    ) as $Val);
  }

  /// Create a copy of SettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TermsModelCopyWith<$Res>? get terms {
    if (_value.terms == null) {
      return null;
    }

    return $TermsModelCopyWith<$Res>(_value.terms!, (value) {
      return _then(_value.copyWith(terms: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SettingsModelImplCopyWith<$Res>
    implements $SettingsModelCopyWith<$Res> {
  factory _$$SettingsModelImplCopyWith(
          _$SettingsModelImpl value, $Res Function(_$SettingsModelImpl) then) =
      __$$SettingsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "fixing") bool? fixing,
      @JsonKey(name: "login") bool? login,
      @JsonKey(name: "terms") TermsModel? terms});

  @override
  $TermsModelCopyWith<$Res>? get terms;
}

/// @nodoc
class __$$SettingsModelImplCopyWithImpl<$Res>
    extends _$SettingsModelCopyWithImpl<$Res, _$SettingsModelImpl>
    implements _$$SettingsModelImplCopyWith<$Res> {
  __$$SettingsModelImplCopyWithImpl(
      _$SettingsModelImpl _value, $Res Function(_$SettingsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fixing = freezed,
    Object? login = freezed,
    Object? terms = freezed,
  }) {
    return _then(_$SettingsModelImpl(
      fixing: freezed == fixing
          ? _value.fixing
          : fixing // ignore: cast_nullable_to_non_nullable
              as bool?,
      login: freezed == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as bool?,
      terms: freezed == terms
          ? _value.terms
          : terms // ignore: cast_nullable_to_non_nullable
              as TermsModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SettingsModelImpl implements _SettingsModel {
  const _$SettingsModelImpl(
      {@JsonKey(name: "fixing") this.fixing,
      @JsonKey(name: "login") this.login,
      @JsonKey(name: "terms") this.terms});

  factory _$SettingsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SettingsModelImplFromJson(json);

  @override
  @JsonKey(name: "fixing")
  final bool? fixing;
  @override
  @JsonKey(name: "login")
  final bool? login;
  @override
  @JsonKey(name: "terms")
  final TermsModel? terms;

  @override
  String toString() {
    return 'SettingsModel(fixing: $fixing, login: $login, terms: $terms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsModelImpl &&
            (identical(other.fixing, fixing) || other.fixing == fixing) &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.terms, terms) || other.terms == terms));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fixing, login, terms);

  /// Create a copy of SettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsModelImplCopyWith<_$SettingsModelImpl> get copyWith =>
      __$$SettingsModelImplCopyWithImpl<_$SettingsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SettingsModelImplToJson(
      this,
    );
  }
}

abstract class _SettingsModel implements SettingsModel {
  const factory _SettingsModel(
      {@JsonKey(name: "fixing") final bool? fixing,
      @JsonKey(name: "login") final bool? login,
      @JsonKey(name: "terms") final TermsModel? terms}) = _$SettingsModelImpl;

  factory _SettingsModel.fromJson(Map<String, dynamic> json) =
      _$SettingsModelImpl.fromJson;

  @override
  @JsonKey(name: "fixing")
  bool? get fixing;
  @override
  @JsonKey(name: "login")
  bool? get login;
  @override
  @JsonKey(name: "terms")
  TermsModel? get terms;

  /// Create a copy of SettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingsModelImplCopyWith<_$SettingsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

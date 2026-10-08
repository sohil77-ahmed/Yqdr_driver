// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RegisterDataModel _$RegisterDataModelFromJson(Map<String, dynamic> json) {
  return _RegisterDataModel.fromJson(json);
}

/// @nodoc
mixin _$RegisterDataModel {
  @JsonKey(name: "categories")
  List<CategoryModel>? get categories => throw _privateConstructorUsedError;
  @JsonKey(name: "packages")
  List<PackageModel>? get packages => throw _privateConstructorUsedError;
  @JsonKey(name: "terms")
  TermsModel? get terms => throw _privateConstructorUsedError;
  @JsonKey(name: "packages_url")
  String? get packagesUrl => throw _privateConstructorUsedError;

  /// Serializes this RegisterDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RegisterDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterDataModelCopyWith<RegisterDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterDataModelCopyWith<$Res> {
  factory $RegisterDataModelCopyWith(
          RegisterDataModel value, $Res Function(RegisterDataModel) then) =
      _$RegisterDataModelCopyWithImpl<$Res, RegisterDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "categories") List<CategoryModel>? categories,
      @JsonKey(name: "packages") List<PackageModel>? packages,
      @JsonKey(name: "terms") TermsModel? terms,
      @JsonKey(name: "packages_url") String? packagesUrl});

  $TermsModelCopyWith<$Res>? get terms;
}

/// @nodoc
class _$RegisterDataModelCopyWithImpl<$Res, $Val extends RegisterDataModel>
    implements $RegisterDataModelCopyWith<$Res> {
  _$RegisterDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = freezed,
    Object? packages = freezed,
    Object? terms = freezed,
    Object? packagesUrl = freezed,
  }) {
    return _then(_value.copyWith(
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>?,
      packages: freezed == packages
          ? _value.packages
          : packages // ignore: cast_nullable_to_non_nullable
              as List<PackageModel>?,
      terms: freezed == terms
          ? _value.terms
          : terms // ignore: cast_nullable_to_non_nullable
              as TermsModel?,
      packagesUrl: freezed == packagesUrl
          ? _value.packagesUrl
          : packagesUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of RegisterDataModel
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
abstract class _$$RegisterDataModelImplCopyWith<$Res>
    implements $RegisterDataModelCopyWith<$Res> {
  factory _$$RegisterDataModelImplCopyWith(_$RegisterDataModelImpl value,
          $Res Function(_$RegisterDataModelImpl) then) =
      __$$RegisterDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "categories") List<CategoryModel>? categories,
      @JsonKey(name: "packages") List<PackageModel>? packages,
      @JsonKey(name: "terms") TermsModel? terms,
      @JsonKey(name: "packages_url") String? packagesUrl});

  @override
  $TermsModelCopyWith<$Res>? get terms;
}

/// @nodoc
class __$$RegisterDataModelImplCopyWithImpl<$Res>
    extends _$RegisterDataModelCopyWithImpl<$Res, _$RegisterDataModelImpl>
    implements _$$RegisterDataModelImplCopyWith<$Res> {
  __$$RegisterDataModelImplCopyWithImpl(_$RegisterDataModelImpl _value,
      $Res Function(_$RegisterDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = freezed,
    Object? packages = freezed,
    Object? terms = freezed,
    Object? packagesUrl = freezed,
  }) {
    return _then(_$RegisterDataModelImpl(
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>?,
      packages: freezed == packages
          ? _value._packages
          : packages // ignore: cast_nullable_to_non_nullable
              as List<PackageModel>?,
      terms: freezed == terms
          ? _value.terms
          : terms // ignore: cast_nullable_to_non_nullable
              as TermsModel?,
      packagesUrl: freezed == packagesUrl
          ? _value.packagesUrl
          : packagesUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterDataModelImpl implements _RegisterDataModel {
  const _$RegisterDataModelImpl(
      {@JsonKey(name: "categories") final List<CategoryModel>? categories,
      @JsonKey(name: "packages") final List<PackageModel>? packages,
      @JsonKey(name: "terms") this.terms,
      @JsonKey(name: "packages_url") this.packagesUrl})
      : _categories = categories,
        _packages = packages;

  factory _$RegisterDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterDataModelImplFromJson(json);

  final List<CategoryModel>? _categories;
  @override
  @JsonKey(name: "categories")
  List<CategoryModel>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PackageModel>? _packages;
  @override
  @JsonKey(name: "packages")
  List<PackageModel>? get packages {
    final value = _packages;
    if (value == null) return null;
    if (_packages is EqualUnmodifiableListView) return _packages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "terms")
  final TermsModel? terms;
  @override
  @JsonKey(name: "packages_url")
  final String? packagesUrl;

  @override
  String toString() {
    return 'RegisterDataModel(categories: $categories, packages: $packages, terms: $terms, packagesUrl: $packagesUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterDataModelImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality().equals(other._packages, _packages) &&
            (identical(other.terms, terms) || other.terms == terms) &&
            (identical(other.packagesUrl, packagesUrl) ||
                other.packagesUrl == packagesUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_packages),
      terms,
      packagesUrl);

  /// Create a copy of RegisterDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterDataModelImplCopyWith<_$RegisterDataModelImpl> get copyWith =>
      __$$RegisterDataModelImplCopyWithImpl<_$RegisterDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterDataModelImplToJson(
      this,
    );
  }
}

abstract class _RegisterDataModel implements RegisterDataModel {
  const factory _RegisterDataModel(
          {@JsonKey(name: "categories") final List<CategoryModel>? categories,
          @JsonKey(name: "packages") final List<PackageModel>? packages,
          @JsonKey(name: "terms") final TermsModel? terms,
          @JsonKey(name: "packages_url") final String? packagesUrl}) =
      _$RegisterDataModelImpl;

  factory _RegisterDataModel.fromJson(Map<String, dynamic> json) =
      _$RegisterDataModelImpl.fromJson;

  @override
  @JsonKey(name: "categories")
  List<CategoryModel>? get categories;
  @override
  @JsonKey(name: "packages")
  List<PackageModel>? get packages;
  @override
  @JsonKey(name: "terms")
  TermsModel? get terms;
  @override
  @JsonKey(name: "packages_url")
  String? get packagesUrl;

  /// Create a copy of RegisterDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterDataModelImplCopyWith<_$RegisterDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

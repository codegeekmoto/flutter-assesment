// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../university_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UniversityModel _$UniversityModelFromJson(Map<String, dynamic> json) {
  return _UniversityModel.fromJson(json);
}

/// @nodoc
mixin _$UniversityModel {
  @JsonKey(name: 'state-province')
  String get province => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'domains')
  List<String> get domains => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UniversityModelCopyWith<UniversityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UniversityModelCopyWith<$Res> {
  factory $UniversityModelCopyWith(
          UniversityModel value, $Res Function(UniversityModel) then) =
      _$UniversityModelCopyWithImpl<$Res, UniversityModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'state-province') String province,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'domains') List<String> domains});
}

/// @nodoc
class _$UniversityModelCopyWithImpl<$Res, $Val extends UniversityModel>
    implements $UniversityModelCopyWith<$Res> {
  _$UniversityModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? province = null,
    Object? name = null,
    Object? domains = null,
  }) {
    return _then(_value.copyWith(
      province: null == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      domains: null == domains
          ? _value.domains
          : domains // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UniversityModelCopyWith<$Res>
    implements $UniversityModelCopyWith<$Res> {
  factory _$$_UniversityModelCopyWith(
          _$_UniversityModel value, $Res Function(_$_UniversityModel) then) =
      __$$_UniversityModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'state-province') String province,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'domains') List<String> domains});
}

/// @nodoc
class __$$_UniversityModelCopyWithImpl<$Res>
    extends _$UniversityModelCopyWithImpl<$Res, _$_UniversityModel>
    implements _$$_UniversityModelCopyWith<$Res> {
  __$$_UniversityModelCopyWithImpl(
      _$_UniversityModel _value, $Res Function(_$_UniversityModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? province = null,
    Object? name = null,
    Object? domains = null,
  }) {
    return _then(_$_UniversityModel(
      province: null == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      domains: null == domains
          ? _value._domains
          : domains // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UniversityModel implements _UniversityModel {
  const _$_UniversityModel(
      {@JsonKey(name: 'state-province') this.province = '',
      @JsonKey(name: 'name') this.name = '',
      @JsonKey(name: 'domains') final List<String> domains = const []})
      : _domains = domains;

  factory _$_UniversityModel.fromJson(Map<String, dynamic> json) =>
      _$$_UniversityModelFromJson(json);

  @override
  @JsonKey(name: 'state-province')
  final String province;
  @override
  @JsonKey(name: 'name')
  final String name;
  final List<String> _domains;
  @override
  @JsonKey(name: 'domains')
  List<String> get domains {
    if (_domains is EqualUnmodifiableListView) return _domains;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_domains);
  }

  @override
  String toString() {
    return 'UniversityModel(province: $province, name: $name, domains: $domains)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UniversityModel &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._domains, _domains));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, province, name,
      const DeepCollectionEquality().hash(_domains));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UniversityModelCopyWith<_$_UniversityModel> get copyWith =>
      __$$_UniversityModelCopyWithImpl<_$_UniversityModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UniversityModelToJson(
      this,
    );
  }
}

abstract class _UniversityModel implements UniversityModel {
  const factory _UniversityModel(
          {@JsonKey(name: 'state-province') final String province,
          @JsonKey(name: 'name') final String name,
          @JsonKey(name: 'domains') final List<String> domains}) =
      _$_UniversityModel;

  factory _UniversityModel.fromJson(Map<String, dynamic> json) =
      _$_UniversityModel.fromJson;

  @override
  @JsonKey(name: 'state-province')
  String get province;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'domains')
  List<String> get domains;
  @override
  @JsonKey(ignore: true)
  _$$_UniversityModelCopyWith<_$_UniversityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

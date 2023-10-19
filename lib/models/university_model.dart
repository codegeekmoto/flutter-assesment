import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed/university_model.freezed.dart';
part 'g/university_model.g.dart';

@freezed
class UniversityModel with _$UniversityModel {
  const factory UniversityModel({
    @JsonKey(name: 'state-province') @Default('') String province,
    @JsonKey(name: 'name') @Default('') String name,
    @JsonKey(name: 'domains') @Default([]) List<String> domains,
  }) = _UniversityModel;

  factory UniversityModel.fromJson(Map<String, dynamic> json) =>
      _$UniversityModelFromJson(json);
}

import 'package:flutter_app/data/data_state.dart';
import 'package:flutter_app/data/http_service.dart';
import 'package:flutter_app/models/university_model.dart';

class UniversityRepository {
  final HttpService httpService = HttpService();

  Future<DataState<List<UniversityModel>>> getList() async {
    try {
      final jsonData = await httpService
          .get('http://universities.hipolabs.com/search?country=Philippines');
      if (jsonData != null) {
        List<UniversityModel> universities = [];
        jsonData.forEach((data) {
          universities.add(UniversityModel.fromJson(data));
        });
        return DataSuccess(universities);
      } else {
        return const DataFailed('Failed to load data');
      }
    } catch (e) {
      return const DataFailed('Something went wrong');
    }
  }
}

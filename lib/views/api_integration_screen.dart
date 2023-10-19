import 'package:flutter/material.dart';
import 'package:flutter_app/data/data_state.dart';
import 'package:flutter_app/data/university_repository.dart';
import 'package:flutter_app/views/widgets/university_item.dart';

import '../models/university_model.dart';

class ApiIntegrationScreen extends StatefulWidget {
  const ApiIntegrationScreen({super.key});

  @override
  State<ApiIntegrationScreen> createState() => _ApiIntegrationScreenState();
}

class _ApiIntegrationScreenState extends State<ApiIntegrationScreen> {
  List<UniversityModel> _universities = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final result = await UniversityRepository().getList();
      if (result is DataSuccess) {
        setState(() {
          _universities = result.data!;
          _isLoading = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Philippines Universities',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: _isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                padding: const EdgeInsets.all(8),
                shrinkWrap: true,
                itemCount: _universities.length,
                itemBuilder: (context, index) {
                  return UniversityItem(
                    name: _universities[index].name,
                    province: _universities[index].province,
                    domain: _universities[index].domains[0],
                  );
                }));
  }
}

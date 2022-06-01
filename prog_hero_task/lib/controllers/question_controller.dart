import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:prog_hero_task/models/question_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
// import 'package:quiz_app/screens/score/score_screen.dart';

// We use get package for our state management

class QuestionController extends GetxController{
   Question_Model? result_list;
  var isDataLoading = false.obs;
  getUserInformationFrinApi() async {
    try {
      isDataLoading(true);
      http.Response response = await http.get(
          Uri.tryParse('https://herosapp.nyc3.digitaloceanspaces.com/quiz.json')!);

      if (response.statusCode == 200) {
        var result = jsonDecode(response.body);
        result_list = Question_Model.fromJson(result);
      } else {}
    } catch (e) {
      print('error $e');
    } finally {
      isDataLoading(false);
    }
  }
}
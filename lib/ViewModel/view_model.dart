import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:know_our_school/Model/model.dart';
import 'dart:convert';



class CounterViewModel extends ChangeNotifier {

int counter = 0;
String data="Show Data";
String schoolName = "School Name";
String schoolAddress = "School Address";
String studentsNo = "Number of Students";
String teachersNo = "Number of Teachers";

    Future<void> showData() async{
          final String response=await rootBundle.loadString('lib/JSONdata/SchoolData.json');
          var schoolData=jsonDecode(response);
   
          var details=SchoolDataModel.fromJson(schoolData[0]);
     

          if(counter==1){
                schoolName = details.schoolName;
                schoolAddress = details.schoolAddress;
                studentsNo = details.schoolStudentsNo;
                teachersNo = details.schoolTeachersNo;

          }
      notifyListeners();
  }
}

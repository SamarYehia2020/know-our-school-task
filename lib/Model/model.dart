//TODO: add your model class here
class SchoolDataModel{
  String schoolName;
  String schoolAddress;
  String schoolStudentsNo;
  String schoolTeachersNo;
  SchoolDataModel({required this.schoolName,required this.schoolAddress,required this.schoolStudentsNo,required this.schoolTeachersNo});
  factory SchoolDataModel.fromJson(Map<String,dynamic> jsonData){
    return SchoolDataModel(
      schoolName:jsonData["School Name"],
      schoolAddress:jsonData["School Address"],
      schoolStudentsNo:jsonData["Number of Students"],
      schoolTeachersNo:jsonData["Number of Teachers"]
    );

  }
}

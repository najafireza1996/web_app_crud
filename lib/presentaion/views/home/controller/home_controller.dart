import 'package:flutter/material.dart';
import 'package:flutter_test_favin/domain/entities/student.dart';
import 'package:flutter_test_favin/domain/interfaces/local/iLocal_db_handler.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
  HomeController({required this.localDbHandler});
  

  @override
  void onInit() {
    queryDB();
    super.onInit();
  }
  final ILocalDbHandler localDbHandler;
   
   var students= <Student>[].obs;
   var studentsList= <Student>[].obs;
  
  void insertDB() async {
    try{
       var student= Student(
        className: "fff",
        classNumber: "111",
        registerTime: DateTime.now(),
        rowNumber: 111,
        show: true,
        time: DateTime.now()
        );

      final id = await localDbHandler.insert(student.toMap());
      debugPrint('inserted row id: $id');
    }catch(e){
      Exception();
    }
  }

  void resetController(){
    students.clear();
  }
  
  Future<void> queryDB() async {
    try{
      final allRows = await localDbHandler.queryAllRows();
      debugPrint('query all rows:');
      students.clear();
      studentsList.clear();
      students.value.addAll(allRows.map((data) => Student.fromMap(data)).toList());
      debugPrint("students \n"+students.value.toString());
      studentsList.value.addAll(students.reversed);
    }catch(e){
      Exception();
    }
  }

  void updateDB(Student student) async {
    try{
      final rowsAffected = await localDbHandler.update(student.toMap());
      debugPrint('updated $rowsAffected row(s)');
    }catch(e){
      Exception();
    }
  }

  void deleteDB() async {
    try{
      final id = await localDbHandler.queryRowCount();
      final rowsDeleted = await localDbHandler.delete(id);
      debugPrint('deleted $rowsDeleted row(s): row $id');
    }catch(e){
      Exception();
    }
    
  }

}
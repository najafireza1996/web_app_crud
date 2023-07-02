import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_favin/common/statics/screen_helper.dart';
import 'package:flutter_test_favin/common/theme/color/color_palette.dart';
import 'package:flutter_test_favin/common/theme/favin_text_theme.dart';
import 'package:flutter_test_favin/domain/entities/student.dart';
import 'package:flutter_test_favin/presentaion/widgets/custom_button.dart';
import 'package:flutter_test_favin/presentaion/widgets/custom_dialog.dart';
import 'package:flutter_test_favin/presentaion/widgets/custom_icon_rounded_button.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:syncfusion_flutter_core/theme.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late StudentDataSource studentDataSource;

@override
void initState() {
  super.initState();
  students= getStudents();
  studentDataSource = StudentDataSource(students: students);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            toolbarHeight: 113,
            backgroundColor: Colors.white,
            elevation: 5.0,
            flexibleSpace:Center(
              child:  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
                children:   [
                  const SizedBox(width: 200,),
                  Image.asset("assets/images/caret_left_fill.png"),
                  const SizedBox(width: 10,),
                  Text(tr("class_list"),style: FavinTextTheme.reg14,),
                  const Spacer(),
                  Text(tr("first_term"),style: FavinTextTheme.reg14.copyWith(color: ColorPalette.green),),
                  const SizedBox(width: 200,),
                ],
              ),
            )
        ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 200),
        child: Column(
          children: [
            const SizedBox(height: 130,),
            Row(
              children: [
                CustomButtonShadowLess(
                  height: 44,
                  width: 165,
                  text: tr("add_class"),
                  fontStyle: FavinTextTheme.reg14.copyWith(color: Colors.black),
                  imageName: "assets/images/plus_circle_fill.png",
                  onPressed: (){
                    showInfoDialog(
                      context,
                    );
                  },
                ),
                const Spacer(),
                CustomIconRoundedButton(
                  imageIcon: Image.asset("assets/images/arrow_repeat.png"),
                  onPressed: () {
                    
                  showDetailDialog(context,);
                  },
                  
                ),
              ],
            ),
            const SizedBox(height: 30,),
            SfDataGridTheme(
             data: SfDataGridThemeData(headerColor:ColorPalette.green), 
              child: SfDataGrid(
              allowEditing: false,
              allowColumnsDragging: false,
              allowSorting: false,
              columnWidthMode: ColumnWidthMode.fill,
              // data: SfDataGridThemeData(headerColor: const Color(0xff009889)),
              source: studentDataSource,
              columns: <GridColumn>[
                GridColumn(
                    columnWidthMode: ColumnWidthMode.fill,
                    columnName: 'rowNumber',
                    label: Container(
                        padding: EdgeInsets.all(16.0),
                        alignment: Alignment.center,
                        child: Text(
                          tr("row_number"),
                          style: FavinTextTheme.reg11.copyWith(color: Colors.white),
                        ))),
                GridColumn(
                  columnWidthMode: ColumnWidthMode.fill,
                    columnName: 'classNumber',
                    label: Container(
                        padding: EdgeInsets.all(16.0),
                        alignment: Alignment.center,
                        child: Text(tr("class_number"),
                        style: FavinTextTheme.reg11.copyWith(color: Colors.white),
                        ))),
                GridColumn(
                    columnName: 'className',
                    columnWidthMode: ColumnWidthMode.fill,
                    width: 120,
                    label: Container(
                        padding: EdgeInsets.all(16.0),
                        alignment: Alignment.center,
                        child: Text(tr('class_name'),
                        style: FavinTextTheme.reg11.copyWith(color: Colors.white),
                        ))),
                GridColumn(
                    columnName: 'registerTime',
                    columnWidthMode: ColumnWidthMode.fill,
                    label: Container(
                        padding: EdgeInsets.all(16.0),
                        alignment: Alignment.center,
                        child: Text(tr("register_time"),
                        style: FavinTextTheme.reg11.copyWith(color: Colors.white),
                        ))),
                GridColumn(
                    columnName: 'time',
                    label: Container(
                        padding: EdgeInsets.all(16.0),
                        alignment: Alignment.center,
                        child: Text(tr("time"),
                        style: FavinTextTheme.reg11.copyWith(color: Colors.white),
                        ))),
                GridColumn(
                    columnName: 'show',
                    columnWidthMode: ColumnWidthMode.fill,
                    label: Container(
                        padding: EdgeInsets.all(16.0),
                        alignment: Alignment.center,
                        child: Text(tr("show"),
                        style: FavinTextTheme.reg11.copyWith(color: Colors.white),
                        ))),        
              ],
            ),
              )
        ]
        ),
      ),
    );
  }
}



List<Student> students = <Student>[];


 List<Student> getStudents() {
  return[
  Student(className: "fff",
        classNumber: "111",
        registerTime: DateTime.now(),
        rowNumber: 111,
        show: true,
        time: DateTime.now()),
  Student(className: "fff",
        classNumber: "111",
        registerTime: DateTime.now(),
        rowNumber: 111,
        show: true,
        time: DateTime.now()),
  Student(className: "fff",
        classNumber: "111",
        registerTime: DateTime.now(),
        rowNumber: 111,
        show: true,
        time: DateTime.now()),
  Student(className: "fff",
        classNumber: "111",
        registerTime: DateTime.now(),
        rowNumber: 111,
        show: true,
        time: DateTime.now()),
  Student(className: "fff",
        classNumber: "111",
        registerTime: DateTime.now(),
        rowNumber: 111,
        show: true,
        time: DateTime.now()),
  ];
}

class StudentDataSource extends DataGridSource {
  StudentDataSource({required List<Student> students}) {
     _students = students
        .map<DataGridRow>((e) => DataGridRow(
          
          cells: [
              DataGridCell<int>(columnName: 'rowNumber', value: e.rowNumber),
              DataGridCell<String>(columnName: 'classNumber', value: e.classNumber),
              DataGridCell<String>(
                  columnName: 'classname', value: e.className),
              DataGridCell<DateTime>(columnName: 'registerTime', value: e.registerTime),
              DataGridCell<DateTime>(columnName: 'time', value: e.time),
              DataGridCell<bool>(columnName: 'show', value: e.show),
            ]))
        .toList();
  }

  List<DataGridRow>  _students = [];

  @override
  List<DataGridRow> get rows =>  _students;

  @override
  DataGridRowAdapter? buildRow(DataGridRow row) {
    Color getRowBackgroundColor() {
      final int index = effectiveRows.indexOf(row);
      if (index % 2 != 0) {
        return Colors.transparent;
      }

      return  ColorPalette.greenAccent;
    }
    return DataGridRowAdapter(
      color: getRowBackgroundColor(),
        cells: row.getCells().map<Widget>((dataGridCell) {
      return Container(
        alignment:Alignment.center,
        padding: EdgeInsets.all(16.0),
        child: (dataGridCell.columnName == 'show') ?
        Image.asset("assets/images/eye.png"):
        Text(dataGridCell.value.toString())
        ,
      );
    }).toList());
  }
}
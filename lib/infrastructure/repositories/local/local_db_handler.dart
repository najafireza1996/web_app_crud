import 'package:flutter_test_favin/common/statics/db_const_name.dart';
import 'package:flutter_test_favin/domain/interfaces/local/iLocal_db_handler.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class LocalDbHandler implements ILocalDbHandler{
  
  late Database _db;

  Future<void> init() async {
    final documentsDirectory = await getApplicationDocumentsDirectory();
    final path = join(documentsDirectory.path, DatabaseNames.databaseName);
    _db = await openDatabase( 
      path,
      version: DatabaseNames.databaseVersion,
      onCreate: _onCreate,
    );
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
          CREATE TABLE ${DatabaseNames.table} (
            ${DatabaseNames.columnId} INTEGER PRIMARY KEY,
            ${DatabaseNames.columnclassNumber} TEXT NOT NULL,
            ${DatabaseNames.columnclassName} TEXT NOT NULL,
            ${DatabaseNames.columnregisterTime} TEXT NOT NULL,
            ${DatabaseNames.columntime} TEXT NOT NULL,
            ${DatabaseNames.columnshow} TEXT NOT NULL
          )
          ''');
  }
  Future<int> insert(Map<String, dynamic> row) async {
    return await _db.insert(DatabaseNames.table, row);
  }

  Future<List<Map<String, dynamic>>> queryAllRows() async {
    return await _db.query(DatabaseNames.table);
  }

  Future<int> queryRowCount() async {
    final results = await _db.rawQuery('SELECT COUNT(*) FROM ${DatabaseNames.table}');
    return Sqflite.firstIntValue(results) ?? 0;
  }

  Future<int> update(Map<String, dynamic> row) async {
    int id = row[DatabaseNames.columnId];
    return await _db.update(
      DatabaseNames.table,
      row,
      where: '${DatabaseNames.columnId} = ?',
      whereArgs: [id],
    );
  }

  Future<int> delete(int id) async {
    return await _db.delete(
      DatabaseNames.table,
      where: '${DatabaseNames.columnId} = ?',
      whereArgs: [id],
    );
  }

}
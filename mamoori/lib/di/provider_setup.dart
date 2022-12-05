import 'package:mamoori/data/data_source/will_db_helper.dart';
import 'package:mamoori/data/repository/will_repository_impl.dart';
import 'package:mamoori/domain/repository/will_repository.dart';
import 'package:mamoori/presentation/add_edit_will/add_edit_will_view_model.dart';
import 'package:mamoori/presentation/wills/wills_view_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:sqflite/sqflite.dart';


Future<List<SingleChildWidget>> getProviders() async{

  Database database = await openDatabase(
      'wills_db',
      version: 1,
      onCreate: (Database db, int version) async {
        await db.execute(
            'CREATE TABLE will (id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT, content TEXT, createdTime INTEGER)');
      });

  WillDBHelper willDBHelper= WillDBHelper(database);
  WillRepository willRepository= WillRepositoryImpl(willDBHelper);
  WillViewModel willViewModel= WillViewModel(willRepository);
  AddEditWillViewModel addEditWillViewModel= AddEditWillViewModel(willRepository);

  return [
    ChangeNotifierProvider(create: (_)=> willViewModel),
    ChangeNotifierProvider(create: (_)=> addEditWillViewModel),
  ];
}


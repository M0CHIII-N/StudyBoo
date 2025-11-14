import '../database.dart';

class FileListTable extends SupabaseTable<FileListRow> {
  @override
  String get tableName => 'FileList';

  @override
  FileListRow createRow(Map<String, dynamic> data) => FileListRow(data);
}

class FileListRow extends SupabaseDataRow {
  FileListRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FileListTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get fileName => getField<String>('file_name');
  set fileName(String? value) => setField<String>('file_name', value);

  DateTime? get timeCreated => getField<DateTime>('time_created');
  set timeCreated(DateTime? value) => setField<DateTime>('time_created', value);
}

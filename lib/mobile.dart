import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

Future<void> saveAndLaunchFile(List<int> bytes, String fileName) async {
  final Path = (await getExternalStorageDirectory())?.path;
  final file = File('$Path/&fileName');
  await file.writeAsBytes(bytes, flush: true);
  OpenFile.open('$Path/$fileName');
}

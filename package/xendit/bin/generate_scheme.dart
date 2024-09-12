import 'dart:io';

import 'package:general_lib/general_lib.dart';
import 'package:xendit/schemes/api_schemes.dart';
 import "package:path/path.dart" as path;
import 'package:xendit/schemes/respond_schemes.dart';

void main(List<String> args) async {
  final Directory directory = Directory(path.join(Directory.current.path, "lib", "scheme"));
  final Directory directory_respond_scheme = Directory(path.join(directory.path, "respond_scheme"));
  if (directory_respond_scheme.existsSync()) {
    directory_respond_scheme.deleteSync(recursive: true);
  }
  directory_respond_scheme.createSync(recursive: true);
  await jsonToScripts(respond_schemes, directory: directory_respond_scheme);
  final Directory directory_api_scheme = Directory(path.join(directory.path, "api_scheme"));
  if (directory_api_scheme.existsSync()) {
    directory_api_scheme.deleteSync(recursive: true);
  }
  directory_api_scheme.createSync(recursive: true);
  await jsonToScripts(api_schemes, directory: directory_api_scheme);
  Process.runSync("dart", [
    "format",
    directory_respond_scheme.path
  ]);
  Process.runSync("dart", [
    "format",
    directory_api_scheme.path
  ]);
}

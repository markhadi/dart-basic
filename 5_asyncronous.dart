Future<String> downloadFile() {
  return Future.delayed(Duration(seconds: 3), () {
    return 'File downloaded successfully';
  });
}

Future<String> downloadFileError() {
  return Future.delayed(Duration(seconds: 1), () {
    throw Exception('Failed to download file');
  });
}

Future<void> main() async {
  print('Start downloading (then)...');
  downloadFile().then((message) {
    print(message);
  }).catchError((error) {
    print('An error occurred: $error');
  });

  print('\nStart download (async/await)..');
  try {
    String message = await downloadFile();
    print(message);
  } catch (e) {
    print('An error occured: $e');
  }

  print('\nStart downloading with error handling (async/awit)...');
  try {
    String message = await downloadFileError();
    print(message);
  } catch (e) {
    print('An error occured: $e');
  }
}

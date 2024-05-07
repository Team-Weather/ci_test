// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';

void main() async {
  await dotenv.load(fileName: '.env');
  test('Counter increments smoke test', () {
    expect(dotenv.env['METEO_BASE_URL'], 'https://api.open-meteo.com/');
  });
}

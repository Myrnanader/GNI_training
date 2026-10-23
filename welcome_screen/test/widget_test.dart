import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:welcome_screen/main.dart';

void main() {
  testWidgets('Welcome screen shows its main actions', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Hello'), findsOneWidget);
    expect(find.text('Login'), findsOneWidget);
    expect(find.text('Sign Up'), findsOneWidget);
    expect(find.text('Sign up using'), findsOneWidget);
    expect(find.byType(Image), findsOneWidget);
    expect(find.text('f'), findsOneWidget);
    expect(find.text('G'), findsOneWidget);
    expect(find.text('in'), findsOneWidget);
  });
}

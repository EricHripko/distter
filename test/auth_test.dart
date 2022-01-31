import 'package:distter/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AuthPage page', () {
    testWidgets('builds successfully', (WidgetTester tester) async {
      // Arrange
      const app = MaterialApp(home: AuthPage());

      // Act
      await tester.pumpWidget(app);

      // Assert
      expect(find.text('Sign in'), findsOneWidget);
    });
  });
}

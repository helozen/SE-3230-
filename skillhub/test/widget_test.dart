import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:skillhub/main.dart';

void main() {
  group('SkillHub App Widget Tests', () {
    testWidgets('HomePage displays SkillHub title',
        (WidgetTester tester) async {
      // Build the HomePage widget.
      await tester.pumpWidget(SkillHubApp());

      // Verify the title is displayed.
      expect(find.text('SkillHub'), findsOneWidget);
    });

    testWidgets('HomePage has Login and Register buttons',
        (WidgetTester tester) async {
      // Build the HomePage widget.
      await tester.pumpWidget(SkillHubApp());

      // Verify that Login and Register buttons exist.
      expect(find.text('Login'), findsOneWidget);
      expect(find.text('Register'), findsOneWidget);
    });

    testWidgets('Navigating to LoginScreen works', (WidgetTester tester) async {
      await tester.pumpWidget(SkillHubApp());

      // Tap the Login button.
      final loginButton = find.text('Login');
      expect(loginButton, findsOneWidget);
      await tester.tap(loginButton);
      await tester.pumpAndSettle();

      // Verify the LoginScreen is displayed.
      expect(find.text('Login Screen Placeholder'), findsOneWidget);
    });

    testWidgets('Navigating to RegisterScreen works',
        (WidgetTester tester) async {
      await tester.pumpWidget(SkillHubApp());

      // Tap the Register button.
      final registerButton = find.text('Register');
      expect(registerButton, findsOneWidget);
      await tester.tap(registerButton);
      await tester.pumpAndSettle();

      // Verify the RegisterScreen is displayed.
      expect(find.text('Register Screen Placeholder'), findsOneWidget);
    });
  });
}

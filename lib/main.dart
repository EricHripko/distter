import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const AuthPage(),
    );
  }
}

/// Page responsible for welcoming the user to the application and
/// starting the authentication.
class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset('assets/auth/hero.svg', width: 128),
              const SizedBox(height: 16),
              Text(
                'Welcome to Distter!',
                style: theme.textTheme.headline6,
              ),
              const SizedBox(height: 8),
              Text(
                'Press the button below to sign in. You will need to enter your Discord credentials in the embedded browser view.',
                style: theme.textTheme.bodyText2,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => {},
        label: const Text('Sign in'),
        icon: const Icon(Icons.lock_open),
        elevation: 0,
        hoverElevation: 0,
        extendedTextStyle: theme.textTheme.button,
      ),
    );
  }
}

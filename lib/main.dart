import 'package:essentials/firebase_options.dart';
import 'package:essentials/screens/form/login.dart';
import 'package:essentials/screens/form/signup.dart';
import 'package:essentials/screens/home.dart';
import 'package:essentials/services/auth/auth_services.dart';
import 'package:essentials/theme.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/splash_screen/splash_screen.dart';

void main() async {
    WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthService>(
          create: (_) => AuthService(),
        ),
        StreamProvider<User?>(
          create: (context) => context.read<AuthService>().authStateChanges,
          initialData: null,
        ),
       ChangeNotifierProvider<ThemeProvider>(
         create: (_) => ThemeProvider(ThemeData.light()),
       ),
    //  ChangeNotifierProvider<ThemeProvider>(
    //      create: (_) => ThemeProvider(),
    //     ),

  // StreamProvider<User?>.value(
  //         value: AuthService().authStateChanges,
  //         initialData: null,
  //       ),
     
      //   ChangeNotifierProvider(create: (_) => ForgotPasswordProvider()),
    // restaurant provider
   // ChangeNotifierProvider(create: (context) => Restaurant()), 
      ],
      child:  Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) {
          return MaterialApp(
      debugShowCheckedModeBanner: false, 
        supportedLocales: const [
          Locale('en', ''), // English, no country code
          // Add other supported locales here
        ],
        // localizationsDelegates: [
        //   GlobalMaterialLocalizations.delegate,
        //   GlobalWidgetsLocalizations.delegate,
        //   GlobalCupertinoLocalizations.delegate,
        // ],
      home: const SplashScreen(), 
     // home: const AuthGate(), 
      theme: themeProvider.getTheme(),
   initialRoute: '/',
        routes: {
       // '/': (context) => const SplashScreen(),
        '/': (context) => const AuthWrapper(),
          '/home': (context) => const HomeScreen(),
          '/signup': (context) =>  const SignUpScreen(),
          '/login': (context) => const LoginScreen(),
//           '/forgot_password': (context) => const ForgotpwdScreen(),
//           '/verify_email': (context) => const VerificationScreen(),
//           '/profile': (context) => ProfileScreen(),
// '/congratulations': (context) => const CongratulatoryScreen(),
// '/reset-password': (context) => const ResetPasswordScreen(),
//           '/reset-congratulations': (context) => PasswordResetSuccessScreen(),
//           '/new_password': (context) => NewPasswordScreen(email: '',),
        },
    );
  }));
  }
}

class AuthWrapper extends StatelessWidget {
  const AuthWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User?>(context);

    if (user != null) {
      return const HomeScreen();
    } else {
      return const SplashScreen();
    }
  }
}
    
    
    
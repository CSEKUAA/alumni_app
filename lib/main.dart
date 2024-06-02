import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:kuaaproject/backend/firebase/firebase_options.dart';
import 'auth/firebase_auth/firebase_user_provider.dart';
import 'auth/firebase_auth/auth_util.dart';


import 'custom/custom_theme.dart';
import 'custom/custom_util.dart';
import 'custom/internationalization.dart';
import 'package:google_fonts/google_fonts.dart';
import 'custom/nav/nav.dart';
import 'index.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  usePathUrlStrategy();
  //await initFirebase();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await AppThemeManager.initialize();

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;
}

class _MyAppState extends State<MyApp> {
  Locale? _locale;
  ThemeMode _themeMode = AppThemeManager.themeMode;

  late Stream<BaseAuthUser> userStream;

  late AppStateNotifier _appStateNotifier;
  late GoRouter _router;

  final authUserSub = authenticatedUserStream.listen((_) {});

  @override
  void initState() {
    super.initState();
    _appStateNotifier = AppStateNotifier.instance;
    _router = createRouter(_appStateNotifier);
    userStream = kuaaprojectFirebaseUserStream()
      ..listen((user) => _appStateNotifier.update(user));
    jwtTokenStream.listen((_) {});
    Future.delayed(
      Duration(seconds: 1),
      () => _appStateNotifier.stopShowingSplashImage(),
    );
  }

  @override
  void dispose() {
    authUserSub.cancel();

    super.dispose();
  }

  void setLocale(String language) {
    setState(() => _locale = createLocale(language));
  }

  void setThemeMode(ThemeMode mode) => setState(() {
        _themeMode = mode;
        AppThemeManager.saveThemeMode(mode);
      });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'kuaaproject',
      localizationsDelegates: [
        FFLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: _locale,
      supportedLocales: const [
        Locale('en'),
      ],
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: _themeMode,
      routerConfig: _router,
    );
  }
}

class NavBarPage extends StatefulWidget {
  NavBarPage({Key? key, this.initialPage, this.page}) : super(key: key);

  final String? initialPage;
  final Widget? page;

  @override
  _NavBarPageState createState() => _NavBarPageState();
}

/// This is the private State class that goes with NavBarPage.
class _NavBarPageState extends State<NavBarPage> {
  String _currentPageName = 'Home';
  late Widget? _currentPage;

  @override
  void initState() {
    super.initState();
    _currentPageName = widget.initialPage ?? _currentPageName;
    _currentPage = widget.page;
  }

  @override
  Widget build(BuildContext context) {
    final tabs = {
      'MainAlumniList': MainAlumniListWidget(),
      'eventPage': EventPageWidget(),
      'Home': HomeWidget(),
      'myTeam': MyTeamWidget(),
      'Main_profilePage': MainProfilePageWidget(),
      'news_latter': NewsLatterWidget(),
      'ai_bot': AiBotWidget(),
      'notification_page': NotificationPageWidget(),
    };
    final currentIndex = tabs.keys.toList().indexOf(_currentPageName);

    return Scaffold(
      body: _currentPage ?? tabs[_currentPageName],
      bottomNavigationBar: Visibility(
        visible: responsiveVisibility(
          context: context,
          tabletLandscape: false,
          desktop: false,
        ),
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (i) => setState(() {
            _currentPage = null;
            _currentPageName = tabs.keys.toList()[i];
          }),
          backgroundColor: AppThemeManager.of(context).secondaryBackground,
          selectedItemColor: AppThemeManager.of(context).primary,
          unselectedItemColor: AppThemeManager.of(context).secondaryText,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.supervised_user_circle_outlined,
                size: 24.0,
              ),
              activeIcon: Icon(
                Icons.supervised_user_circle_sharp,
                size: 32.0,
              ),
              label: '__',
              tooltip: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.reduce_capacity,
                size: 24.0,
              ),
              activeIcon: Icon(
                Icons.reduce_capacity,
                size: 32.0,
              ),
              label: '__',
              tooltip: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.dashboard_outlined,
                size: 24.0,
              ),
              activeIcon: Icon(
                Icons.dashboard_rounded,
                size: 32.0,
              ),
              label: '__',
              tooltip: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.group,
                size: 24.0,
              ),
              activeIcon: Icon(
                Icons.group,
                size: 24.0,
              ),
              label: '__',
              tooltip: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_outlined,
                size: 24.0,
              ),
              activeIcon: Icon(
                Icons.account_circle,
                size: 32.0,
              ),
              label: '__',
              tooltip: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.newspaper_rounded,
                size: 24.0,
              ),
              activeIcon: Icon(
                Icons.newspaper_rounded,
                size: 32.0,
              ),
              label: '__',
              tooltip: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.bolt,
                size: 24.0,
              ),
              activeIcon: Icon(
                Icons.bolt,
                size: 32.0,
              ),
              label: '__',
              tooltip: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications_active,
                size: 24.0,
              ),
              activeIcon: Icon(
                Icons.notifications_active,
                size: 32.0,
              ),
              label: '__',
              tooltip: '',
            )
          ],
        ),
      ),
    );
  }
}

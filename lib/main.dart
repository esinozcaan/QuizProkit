import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:quiz_prokit/Screens/QuizSignIn.dart';
import 'package:quiz_prokit/store/AppStore.dart';
import 'package:quiz_prokit/utils/AppTheme.dart';
import 'package:quiz_prokit/utils/QuizConstant.dart';
import 'package:quiz_prokit/utils/QuizDataGenerator.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

AppStore appStore = AppStore();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://bdwaxhghrooyeemeplll.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJkd2F4aGdocm9veWVlbWVwbGxsIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU2Njg3NzAsImV4cCI6MjAzMTI0NDc3MH0.hRWPLrdVB9mAvaiPhHd4dfnqh-af3ZKteNUam6zkZzU',
  );

  await initialize(aLocaleLanguageList: languageList());

  appStore.toggleDarkMode(value: getBoolAsync(isDarkModeOnPref));

  defaultToastGravityGlobal = ToastGravity.BOTTOM;

  runApp(const MyApp());
}

/*
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Online Quiz${!isMobile ? ' ${platformName()}' : ''}',
        home: QuizSignIn(),
        theme: !appStore.isDarkModeOn
            ? AppThemeData.lightTheme
            : AppThemeData.darkTheme,
        navigatorKey: navigatorKey,
        scrollBehavior: SBehavior(),
        locale: Locale('en'),
        //supportedLocales: LanguageDataModel.languageLocales(),
        //localeResolutionCallback: (locale, supportedLocales) => locale,
      ),
    );
  }
}
*/
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Countries',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _future = Supabase.instance.client.from('countries').select();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _future,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }
          final countries = snapshot.data!;
          return ListView.builder(
            itemCount: countries.length,
            itemBuilder: ((context, index) {
              final country = countries[index];
              return ListTile(
                title: Text(country['name']),
              );
            }),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quiz_prokit/model/QuizModels.dart';
import 'package:quiz_prokit/utils/QuizDataGenerator.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Userr extends StatefulWidget {
  @override
  _User createState() => _User();
}

class _User extends State<Userr> {
  final SupabaseClient supabase = Supabase.instance.client;
  List<Map<String, dynamic>> _data = [];
  List<User2> data = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      data = await quizGetUserr();
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Supabase User Scores'),
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          User2 user = data.elementAt(index);
          return ListTile(
            title: Text("Name: ${user.name}"),
            subtitle: Text('Score: ${user.score.toString()}'),
          );
        },
      ),
    );
  }
}

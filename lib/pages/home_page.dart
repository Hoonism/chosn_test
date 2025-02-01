import 'package:chosn_test/auth/auth_service.dart';
// import 'package:chosn_test/chat/chat_service.dart';
// import 'package:chosn_test/chat_page.dart';
// import 'package:chosn_test/components/drawer.dart';
// import 'package:chosn_test/components/journal_tile.dart';
import 'package:flutter/material.dart';

import '../components/drawer.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  // final ChatService _chatService = ChatService();
  final AuthService _authService = AuthService();

  void logout() {
    final _auth = AuthService();
    _auth.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      drawer: const MyDrawer(),
      // body: _buildUserList(),
    );
  }
}

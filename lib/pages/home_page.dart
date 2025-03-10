import 'package:chosn_test/pages/chat_page.dart';
import 'package:chosn_test/services/auth/auth_service.dart';
// import 'package:chosn_test/chat/chat_service.dart';
// import 'package:chosn_test/chat_page.dart';
// import 'package:chosn_test/components/drawer.dart';
// import 'package:chosn_test/components/journal_tile.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../components/drawer.dart';
import '../components/journal_tile.dart';
import '../services/chat/chat_service.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  // final ChatService _chatService = ChatService();
  final AuthService _authService = AuthService();
  final ChatService _chatService = ChatService();

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
      body: _buildUserList(),
    );
  }

  Widget _buildUserList() {
    return StreamBuilder(
      stream: _chatService.getUsersStream(),
      builder: (context, snapshot) {
        // error
        if (snapshot.hasError) {
          return const Text("Error");
        }

        // loading
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Text("Loading..");
        }

        // return list view
        return ListView(
          children: snapshot.data!
              .map<Widget>((userData) => _buildUserListItem(userData, context))
              .toList(),
        );
      },
    );
  }

  Widget _buildUserListItem(
      Map<String, dynamic> userData, BuildContext context) {
    if (userData['email'] != _authService.getCurrentUser()!.email) {
      return JournalTile(
        text: userData["email"],
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ChatPage(
                receiverEmail: userData["email"],
                receiverID: userData["uid"],
              ),
            ),
          );
        },
      );
    } else {
      return Container();
    }
  }
}

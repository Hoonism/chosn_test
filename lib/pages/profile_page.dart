import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App Bar
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
      ),
      // Body wrapped in a SingleChildScrollView in case content overflows.
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Profile header with avatar and user info
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  // Profile picture
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        "https://static.vecteezy.com/system/resources/previews/005/544/718/non_2x/profile-icon-design-free-vector.jpg"),
                  ),
                  SizedBox(height: 10),
                  // User's name
                  Text(
                    "Justin Song",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // User's role or tagline
                ],
              ),
            ),
            Divider(),
            // Statistics section (e.g., posts, followers, following)
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildStatistic("Logs", "5"),
                  _buildStatistic("Streak", "3"),
                  _buildStatistic("Level", "4"),
                ],
              ),
            ),
            Divider(),
            // Bio section and Edit Profile button
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Today's Quote",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "\"Believe you can and you're halfway there.\"\n — Theodore Roosevelt",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Mindmap",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Image(
                    image: NetworkImage(
                        "https://images.squarespace-cdn.com/content/v1/6213c6ea806e27262d1b2f8b/feb0dd48-c9dd-4d4a-a2b2-364b93758cb3/Hume_VB_tsne.png"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Helper widget to build a statistic item.
  Widget _buildStatistic(String label, String count) {
    return Column(
      children: [
        Text(
          count,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}

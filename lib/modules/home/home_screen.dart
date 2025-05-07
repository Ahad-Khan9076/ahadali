import 'package:flutter/material.dart';
import 'package:nexl_app/widgets/custom_card.dart';

class HomeScreen extends StatelessWidget {
  final String username = "Ahad";

  void onMoreTap(BuildContext context, String type) {
    if (type == 'events') {
      Navigator.pushNamed(context, '/events');
    } else if (type == 'projects') {
      Navigator.pushNamed(context, '/projects');
    } else if (type == 'jobs') {
      Navigator.pushNamed(context, '/jobs');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Greeting
              Text(
                "Hi $username 👋",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              Text(
                "Welcome back!",
                style: TextStyle(fontSize: 18, color: Colors.grey[700]),
              ),
              const SizedBox(height: 25),

              // Upcoming Events
              sectionTitle("Upcoming Events"),
              cardRow(context, 'events'),

              const SizedBox(height: 25),

              // Our Team
              sectionTitle("Our Team"),
              teamMembersSection(),

              const SizedBox(height: 25),

              // Ongoing Projects
              sectionTitle("Ongoing Projects"),
              cardRow(context, 'projects'),
            ],
          ),
        ),
      ),
    );
  }

  Widget sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Text(
        title,
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
      ),
    );
  }

  Widget cardRow(BuildContext context, String type) {
    return SizedBox(
      height: 170,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CustomCard(icon: Icons.event, title: "Event 1", subtitle: "12 Aug"),
          CustomCard(icon: Icons.event, title: "Event 2", subtitle: "13 Aug"),
          CustomCard(icon: Icons.event, title: "Event 3", subtitle: "14 Aug"),
          viewMoreCard(context, type),
        ],
      ),
    );
  }

  Widget viewMoreCard(BuildContext context, String type) {
    return GestureDetector(
      onTap: () => onMoreTap(context, type),
      child: Container(
        width: 140,
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.only(right: 12),
        decoration: BoxDecoration(
          color: Colors.blue[50],
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.blue),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.arrow_forward_ios, color: Colors.blue),
            SizedBox(height: 10),
            Text("More", style: TextStyle(fontSize: 16, color: Colors.blue)),
          ],
        ),
      ),
    );
  }

  Widget teamMembersSection() {
    return SizedBox(
      height: 120,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        separatorBuilder: (_, __) => SizedBox(width: 12),
        itemBuilder:
            (context, index) => Container(
              width: 90,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)],
              ),
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("assets/team${index + 1}.jpg"),
                  ),
                  SizedBox(height: 8),
                  Text("Member ${index + 1}", style: TextStyle(fontSize: 14)),
                ],
              ),
            ),
      ),
    );
  }
}

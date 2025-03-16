import 'package:flutter/material.dart';

void main() {
  runApp(const InstagramHomeApp());
}

class InstagramHomeApp extends StatelessWidget {
  const InstagramHomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            return Row(
              children: [
                if (constraints.maxWidth > 600) Sidebar(),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        StoriesSection(),
                        Divider(),
                        PostsSection(),
                      ],
                    ),
                  ),
                ),
                if (constraints.maxWidth > 900) RightSidebar(),
              ],
            );
          },
        ),
      ),
    );
  }
}

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  void navigateTo(BuildContext context, String page) {
    Navigator.pushNamed(context, '/$page');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Instagram',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          SidebarItem(
              icon: Icons.home,
              title: 'Home',
              onTap: () => navigateTo(context, 'Home')),
          SidebarItem(
              icon: Icons.search,
              title: 'Search',
              onTap: () => navigateTo(context, 'Search')),
          SidebarItem(
              icon: Icons.explore,
              title: 'Explore',
              onTap: () => navigateTo(context, 'Explore')),
          SidebarItem(
              icon: Icons.video_collection,
              title: 'Reels',
              onTap: () => navigateTo(context, 'Reels')),
          SidebarItem(
              icon: Icons.message,
              title: 'Messages',
              onTap: () => navigateTo(context, 'Messages')),
          SidebarItem(
              icon: Icons.notifications,
              title: 'Notifications',
              onTap: () => navigateTo(context, 'Notifications')),
          SidebarItem(
              icon: Icons.add_box,
              title: 'Create',
              onTap: () => navigateTo(context, 'Create')),
          SidebarItem(
              icon: Icons.dashboard,
              title: 'Dashboard',
              onTap: () => navigateTo(context, 'Dashboard')),
          SidebarItem(
              icon: Icons.person,
              title: 'Profile',
              onTap: () => navigateTo(context, 'Profile')),
          SizedBox(
            height: 40,
          ),
          SidebarItem(
              icon: Icons.multiline_chart_sharp,
              title: 'AI Studio',
              onTap: () => navigateTo(context, 'AI Studio')),
          SidebarItem(
              icon: Icons.attach_email_rounded,
              title: 'Threats',
              onTap: () => navigateTo(context, 'Threats')),
          SidebarItem(
              icon: Icons.more,
              title: 'More',
              onTap: () => navigateTo(context, 'More')),
        ],
      ),
    );
  }
}

class SidebarItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const SidebarItem({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.black),
      title: Text(
        title,
        style: const TextStyle(fontSize: 16, color: Colors.black),
      ),
      onTap: onTap,
    );
  }
}

class StoriesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 8,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey[300],
                    child: Image.network(
                        "data:image/jpeg;base64,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"),
                  ),
                  SizedBox(height: 5),
                  Text('Hifza_Baloch $index', style: TextStyle(fontSize: 12)),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class PostsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(5, (index) {
        return Card(
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey[300],
                  child: Icon(Icons.person, color: Colors.white),
                ),
                title: Text('heyyyy_bestie  $index'),
                subtitle: Text('1m ago'),
                trailing: Icon(Icons.more_vert),
              ),
              Container(
                width: 1000,
                height: 300,
                color: Colors.grey[300],
                child: Image.asset("images/cute.jpg"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.favorite_border),
                    Icon(Icons.comment),
                    Icon(Icons.send),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}

class RightSidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      color: Colors.white,
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Suggested for you',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Column(
            children: List.generate(5, (index) {
              return ListTile(
                leading: CircleAvatar(backgroundColor: Colors.grey[300]),
                title: Text('User $index'),
                trailing: TextButton(
                  onPressed: () {},
                  child: Text('Follow'),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}

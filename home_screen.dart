import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "WhatsApp",
          ),
          bottom: const TabBar(
            tabs: [
              // Using Tab instead of regular Text or Icon directly, becuase else the text and icons will be touching the below bar.
              Tab(
                child: Icon(Icons.camera_alt),
              ),
              Tab(
                child: Text("Chats"),
              ),
              Tab(
                child: Text("Status"),
              ),
              Tab(
                child: Text("Calls"),
              ),
            ],
          ),
          actions: [
            const Icon(Icons.search),
            const SizedBox(width: 10),
            PopupMenuButton(
              icon: const Icon(Icons.more_vert),
              itemBuilder: (context) => [
                const PopupMenuItem(
                  value: 1,
                  child: Text("New Group"),
                ),
                const PopupMenuItem(
                  value: 2,
                  child: Text("Privacy"),
                ),
                const PopupMenuItem(
                  value: 3,
                  child: Text("Settings"),
                ),
              ],
            ),
            const SizedBox(width: 10),
          ],
        ),
        body: TabBarView(
          children: [
            const Text("Camera"),

            // Chats Portion

            ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('images/shahzainahmed.jpeg'),
                  ),
                  title: Text("Shahzain Ahmed"),
                  subtitle: Text("Where are you?"),
                  trailing: Text("10:86 pm"),
                );
              },
            ),

            // Status Portion

            ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("New updates"),
                        ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.green,
                                width: 2,
                              ),
                            ),
                            child: const CircleAvatar(
                              backgroundImage:
                                  AssetImage('images/shahzainahmed.jpeg'),
                            ),
                          ),
                          title: const Text("Shahzain Ahmed"),
                          subtitle: const Text("35 minutes ago"),
                        ),
                      ],
                    ),
                  );
                } else {
                  return ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.grey,
                          width: 2,
                        ),
                      ),
                      child: const CircleAvatar(
                        backgroundImage:
                            AssetImage('images/shahzainahmed.jpeg'),
                      ),
                    ),
                    title: const Text("Shahzain Ahmed"),
                    subtitle: const Text("35 minutes ago"),
                  );
                }
              },
            ),

            // Calls Portion

            ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: AssetImage('images/shahzainahmed.jpeg'),
                    ),
                    title: const Text("Shahzain Ahmed"),
                    subtitle: Text(index / 2 == 0
                        ? "You missed a voice call"
                        : "4 September, 10:40"),
                    trailing: Icon(index / 2 == 0
                        ? Icons.call
                        : Icons.missed_video_call_rounded),
                  );
                } else {
                  return ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: AssetImage('images/shahzainahmed.jpeg'),
                    ),
                    title: const Text("Shahzain Ahmed"),
                    subtitle: Text(index / 2 == 0
                        ? "You missed a voice call"
                        : "4 September, 10:40"),
                    trailing: Icon(index / 2 == 0
                        ? Icons.call
                        : Icons.missed_video_call_rounded),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

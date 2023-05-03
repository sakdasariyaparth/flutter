import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imgurl =
        "https://media.licdn.com/dms/image/D4D03AQGwQXAEQN9goA/profile-displayphoto-shrink_800_800/0/1679243864540?e=2147483647&v=beta&t=VlbJOXkWR0aefsVu3M1KNZwtBZavY-NhcAHxbBa5FUs";
    return Drawer(
      child: Container(
        color: Colors.purple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("PARTH PATEL"),
              accountEmail: Text("parthpatel1609@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imgurl),
              ),
              // Image.network(imgurl)
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "HOME",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "PROFILE",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "E-MAIL",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}

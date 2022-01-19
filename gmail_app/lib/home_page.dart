import 'package:flutter/material.dart';
import 'home_body.dart';
import 'Login_Page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text('Gmail'),
        centerTitle: true,
       /* shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          )
        ),*/
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.deepPurpleAccent),
              accountName: Text('Rafi Siddique', style: TextStyle(fontSize: 20,)),
              accountEmail: Text('rafisiddique652@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('images/rafi.jpg'),
              ),
            ),
            const ListTile(
              title: Text('Inbox'),
              leading: Icon(Icons.inbox, color: Colors.purple,),
            ),
            const ListTile(
              title: Text('Social'),
              leading: Icon(Icons.group_outlined, color: Colors.blue,),
            ),
            const ListTile(
              title: Text('Promotions'),
              leading: Icon(Icons.local_offer_outlined, color: Colors.greenAccent,),
            ),
            const ListTile(
              title: Text('Starred'),
              leading: Icon(Icons.star_border, color: Colors.yellowAccent,),
            ),
            const ListTile(
              title: Text('Snoozed'),
              leading: Icon(Icons.query_builder, color: Colors.black,),
            ),
            const ListTile(
              title: Text('Important'),
              leading: Icon(Icons.label_important_outline, color: Colors.amber,),
            ),
            const ListTile(
              title: Text('Sent'),
              leading: Icon(Icons.send, color: Colors.blueAccent,),
            ),
            const ListTile(
              title: Text('Scheduled'),
              leading: Icon(Icons.schedule_send, color: Colors.blueAccent,),
            ),
            const ListTile(
              title: Text('Drafts'),
              leading: Icon(Icons.insert_drive_file_outlined, color: Colors.teal,),
            ),
            const ListTile(
              title: Text('All mail'),
              leading: Icon(Icons.email_outlined, color: Colors.amberAccent,),
            ),
            const ListTile(
              title: Text('Spam'),
              leading: Icon(Icons.report_gmailerrorred, color: Colors.redAccent,),
            ),
            const ListTile(
              title: Text('Trash'),
              leading: Icon(Icons.delete_rounded, color: Colors.red,),
            ),
            const ListTile(
              title: Text('[Imap]/Drafts'),
              leading: Icon(Icons.label_outline_sharp, color: Colors.red,),
            ),
            const ListTile(
              title: Text('Calendar'),
              leading: Icon(Icons.calendar_today_sharp, color: Colors.deepPurple,),
            ),
            const ListTile(
              title: Text('Contacts'),
              leading: Icon(Icons.contacts, color: Colors.green,),
            ),
            const ListTile(
              title: Text('Settings'),
              leading: Icon(Icons.settings_outlined, color: Colors.grey,),
            ),
            const ListTile(
              title: Text('Help & feedback'),
              leading: Icon(Icons.help_outline, color: Colors.deepOrangeAccent,),
            ),
            ListTile(
              title: const Text('Log out'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=> const Log()),
                );
              },
              leading: const Icon(Icons.power_settings_new, color: Colors.black,),
            ),
          ],
        ),
      ),
      body: const Mail(),
    );
  }
}


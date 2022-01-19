import 'package:flutter/material.dart';
import 'home_page.dart';

class Log extends StatelessWidget {
  const Log({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: In(),
    );
  }
}

class In extends StatefulWidget {
  const In({Key? key}) : super(key: key);

  @override
  _InState createState() => _InState();
}

class _InState extends State<In> {

  final email = TextEditingController();
  final pass = TextEditingController();

  @override
  void dispose() {
    email.dispose();
    pass.dispose();
    super.dispose();
  }
  
  void log() {
    setState(() {
      if(email.text=='rafisiddique652@gmail.com' && pass.text=='1234') {
        email.clear();
        pass.clear();
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context)=> const MyApp())
        );
      }
      else {
        showDialog(context: context, builder: (context){
          return const AlertDialog(
            content: Text('Invalid email or password'),
          );
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding:  const EdgeInsets.all(20.0),
                child: TextField(
                  controller: email,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    hintText: 'Enter your email address',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  controller: pass,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter your password',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: log,
                child: const Text('Login'),
                style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.purple),
               ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


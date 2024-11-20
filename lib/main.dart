import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage('', '', '', ''),
        '/second': (context) => Addpage(),
        '/third': (context) => About(),
        '/fourth': (context) => Feedback(),
        '/fifth': (context) => Settings(),
        '/sixth': (context) => Profile(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  var tab1, msg1, time1, date1;
  HomePage(var tab1, var msg1, var time1, var date1) {
    this.tab1 = tab1;
    this.msg1 = msg1;
    this.time1 = time1;
    this.date1 = date1;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 6, 33, 79),
      ),
      drawer: Drawer(
        shadowColor: Colors.white,
        surfaceTintColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 125, 55, 191),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 6, 33, 79),
              ),
              child: Text(
                'Elder Care Alert',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              iconColor: Colors.white,
              title: Text(
                'Home',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () => Navigator.pushNamed(context, '/'),
            ),
            ListTile(
                leading: Icon(Icons.alarm),
                iconColor: Colors.white,
                title: Text(
                  'Add Remainder',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () => Navigator.pushNamed(context, '/second')),
            ListTile(
                leading: Icon(Icons.info),
                iconColor: Colors.white,
                title: Text(
                  'About',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () => Navigator.pushNamed(context, '/third')),
            ListTile(
              leading: Icon(Icons.feedback),
              iconColor: Colors.white,
              title: Text(
                'Feedback',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () => Navigator.pushNamed(context, '/fourth'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              iconColor: Colors.white,
              title: Text(
                'Profile/Login',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () => Navigator.pushNamed(context, '/sixth'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              iconColor: Colors.white,
              title: Text(
                'Settings',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () => Navigator.pushNamed(context, '/fifth'),
            ),
          ],
        ),
      ),
      body: Container(
          alignment: Alignment.topRight,
          padding: const EdgeInsets.all(30),
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('images/homepage.jpg'),
            fit: BoxFit.cover,
          )),
          child: Column(
            children: [
              Text(
                'Elder Care Alert',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
              Text(
                'Stay Healthy with Medicine Remainder App',
                style: TextStyle(
                  color: const Color.fromARGB(255, 6, 33, 79),
                  fontWeight: FontWeight.w700,
                  fontSize: 30,
                ),
              ),
              Container(
                height: 60,
                width: 120,
              ),
              Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 6, 33, 79),
                    border: Border.all(
                        color: Colors.white,
                        width: 3,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(10)),
                width: 780,
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      child: Row(
                        children: [
                          Container(
                            width: 60,
                            child: Text(
                              'Sl No',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            width: 200,
                            child: Text(
                              'Tablet',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            width: 280,
                            child: Text(
                              'Message',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            width: 100,
                            child: Text(
                              'Date',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            width: 100,
                            child: Text(
                              'Time',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    if (tab1 != null)
                      Container(
                        height: 50,
                        child: Row(
                          children: [
                            Container(
                              width: 60,
                              child: Text(
                                '1',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              width: 200,
                              child: Text(
                                tab1,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              width: 280,
                              child: Text(
                                msg1,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              width: 100,
                              child: Text(
                                date1,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              width: 100,
                              child: Text(
                                time1,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              )
            ],
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/second');
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    ));
  }
}

class Addpage extends StatefulWidget {
  const Addpage({Key? key}) : super(key: key);
  @override
  State<Addpage> createState() => _AddpageState();
}

class _AddpageState extends State<Addpage> {
  var tablet = TextEditingController();
  var message = TextEditingController();
  var tab1, msg1, date1, time1;
  DateTime d1 = DateTime.now();
  TimeOfDay t1 = TimeOfDay.now();
  void _showDatePicker() {
    showDatePicker(
      context: context,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    ).then((onValue) => {d1 = onValue!});
  }

  void _showTimePicker() {
    showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    ).then((onValue) => {t1 = onValue!});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.alarm,
            size: 50,
          ),
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.amber.shade900,
          title: Text(
            'Add Remainder',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        body: Container(
          alignment: Alignment.topLeft,
          color: Colors.amber.shade50,
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  width: 200,
                  height: 50,
                  margin: EdgeInsets.all(15),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.amber.shade400,
                    border: Border.all(
                        color: Colors.white,
                        width: 2,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    'Tablet',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  child: Text(':'),
                ),
                Container(
                  margin: EdgeInsets.all(15),
                  width: 300,
                  height: 50,
                  child: TextField(
                    controller: tablet,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      suffixText: 'Ex: Paracetemol',
                      prefixIcon: Icon(Icons.medication),
                    ),
                  ),
                ),
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  width: 200,
                  height: 50,
                  margin: EdgeInsets.all(15),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.amber.shade400,
                    border: Border.all(
                        color: Colors.white,
                        width: 2,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    'Messages',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  child: Text(':'),
                ),
                Container(
                  margin: EdgeInsets.all(15),
                  width: 300,
                  height: 50,
                  child: TextField(
                    controller: message,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        suffixText: 'Ex: Mix With Water',
                        prefixIcon: Icon(Icons.message)),
                  ),
                ),
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  width: 200,
                  height: 50,
                  margin: EdgeInsets.all(15),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.amber.shade400,
                    border: Border.all(
                        color: Colors.white,
                        width: 2,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    'Time',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  child: Text(':'),
                ),
                Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromARGB(255, 106, 106, 106),
                        width: 1,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    width: 300,
                    height: 50,
                    margin: EdgeInsets.all(15),
                    child: MaterialButton(
                        onPressed: _showTimePicker,
                        child: Padding(
                            padding: EdgeInsets.all(1),
                            child: Text(
                              'Choose Time',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            )))),
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 200,
                    height: 50,
                    margin: EdgeInsets.all(15),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.amber.shade400,
                      border: Border.all(
                          color: Colors.white,
                          width: 2,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      'Date',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    child: Text(':'),
                  ),
                  Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(255, 106, 106, 106),
                          width: 1,
                          style: BorderStyle.solid,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      width: 300,
                      height: 50,
                      margin: EdgeInsets.all(15),
                      child: MaterialButton(
                        onPressed: _showDatePicker,
                        child: Padding(
                          padding: EdgeInsets.all(1),
                          child: Text(
                            'Choose Date',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      )),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  height: 50,
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.amber.shade700,
                      border: Border.all(
                          color: Colors.white,
                          width: 2,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(15)),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(
                        Colors.amber.shade700,
                      )),
                      onPressed: () {
                        tab1 = tablet.text.toString();
                        msg1 = message.text.toString();
                        date1 = d1.toString();
                        time1 = t1.toString();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  HomePage(tab1, msg1, time1, date1)),
                        );
                      },
                      child: Text(
                        'Add',
                        style: TextStyle(color: Colors.white),
                      )),
                ),
                Container(
                  height: 50,
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.amber.shade700,
                      border: Border.all(
                          color: Colors.white,
                          width: 2,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(15)),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                      Colors.amber.shade700,
                    )),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Cancel',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ])
            ],
          ),
        ));
  }
}

class About extends StatelessWidget {
  const About({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text(
          'About',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 35,
          ),
        ),
        backgroundColor: Colors.purple.shade800,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
              margin: EdgeInsets.fromLTRB(45, 0, 35, 0),
              child: Image.asset(
                'images/clock.jpg',
                height: 200,
                width: 200,
              ),
            ),
            RichText(
              text: TextSpan(
                  text: 'You can remind your loved ones\n',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: 'to take thier medications',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ]),
            )
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 45, 0),
                child: Image.asset(
                  'images/tablet.jpg',
                  height: 200,
                  width: 200,
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: RichText(
                  text: TextSpan(
                      text: 'You can add medication name\n',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: 'quatity of medication',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ]),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(45, 5, 35, 0),
                child:
                    Image.asset('images/messages.jpg', height: 200, width: 200),
              ),
              RichText(
                text: TextSpan(
                  text: 'You can add messsages regarding :\n',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: 'whether to take before or after lunch',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 35,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  Colors.purple.shade800,
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Back to home',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.purple.shade100,
    ));
  }
}

class Feedback extends StatelessWidget {
  const Feedback({super.key});
  void showAlertDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              title: Icon(Icons.handshake),
              content: Text('Thanks for your valuable feedback'),
              actions: <Widget>[
                TextButton(
                  child: Text('Close'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ]);
        });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
          RatingBar.builder(
              itemCount: 5,
              initialRating: 5,
              itemPadding: const EdgeInsets.symmetric(horizontal: 5),
              direction: Axis.horizontal,
              minRating: 1,
              itemSize: 100,
              itemBuilder: (context, index) {
                switch (index) {
                  case 0:
                    return const Icon(
                      Icons.sentiment_very_dissatisfied,
                      color: Colors.red,
                    );
                  case 1:
                    return const Icon(
                      Icons.sentiment_dissatisfied,
                      color: Colors.redAccent,
                    );
                  case 2:
                    return const Icon(
                      Icons.sentiment_neutral,
                      color: Colors.amber,
                    );
                  case 3:
                    return const Icon(
                      Icons.sentiment_satisfied,
                      color: Colors.greenAccent,
                    );
                  case 4:
                    return const Icon(
                      Icons.sentiment_very_satisfied,
                      color: Colors.green,
                    );

                  default:
                    return const Text('');
                }
              },
              onRatingUpdate: (rating) {
                print('rating');
              }),
          Container(
            margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
            height: 200,
            width: 350,
            child: TextField(
              minLines: 3,
              maxLines: 5,
              style: TextStyle(fontSize: 20),
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your feedback'),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(15),
                height: 50,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                      Colors.purple.shade800,
                    ),
                  ),
                  onPressed: () {
                    showAlertDialog(context);
                  },
                  child: Text(
                    'Submit',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                height: 50,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                      Colors.purple.shade800,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Back to Home',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ]))));
  }
}

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);
  @override
  State<Settings> createState() => _Settings();
}

class _Settings extends State<Settings> {
  String? value1 = '1 minute';
  String? value2 = '5 minutes';
  String? value3 = '1';
  bool isSwitch = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Settings',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 35,
            ),
          ),
          backgroundColor: Colors.purple.shade800,
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  'Remainder',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                height: 30,
                width: 50,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  'Ring Duration',
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                child: DropdownButton(
                    style: TextStyle(color: Colors.red),
                    value: value1,
                    onChanged: (newvalue) {
                      setState(() {
                        value1 = newvalue;
                      });
                    },
                    items: [
                      DropdownMenuItem<String>(
                        child: Text('1 minute'),
                        value: '1 minute',
                      ),
                      DropdownMenuItem<String>(
                        child: Text('5 minutes'),
                        value: '5 minutes',
                      ),
                      DropdownMenuItem<String>(
                        child: Text('10 minutes'),
                        value: '10 minutes',
                      ),
                      DropdownMenuItem<String>(
                        child: Text('15 minutes'),
                        value: '15 minutes',
                      ),
                      DropdownMenuItem<String>(
                        child: Text('20 minutes'),
                        value: '20 minutes',
                      ),
                      DropdownMenuItem<String>(
                        child: Text('30 minutes'),
                        value: '30 minutes',
                      ),
                    ]),
              ),
              Container(
                height: 30,
                width: 50,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  'Interval',
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                child: DropdownButton(
                    style: TextStyle(color: Colors.red),
                    value: value2,
                    onChanged: (newvalue) {
                      setState(() {
                        value2 = newvalue;
                      });
                    },
                    items: [
                      DropdownMenuItem<String>(
                        child: Text('5 minutes'),
                        value: '5 minutes',
                      ),
                      DropdownMenuItem<String>(
                        child: Text('10 minutes'),
                        value: '10 minutes',
                      ),
                      DropdownMenuItem<String>(
                        child: Text('15 minutes'),
                        value: '15 minutes',
                      ),
                      DropdownMenuItem<String>(
                        child: Text('20 minutes'),
                        value: '20 minutes',
                      ),
                      DropdownMenuItem<String>(
                        child: Text('25 minutes'),
                        value: '25 minutes',
                      ),
                      DropdownMenuItem<String>(
                        child: Text('30 minutes'),
                        value: '30 minutes',
                      ),
                    ]),
              ),
              Container(
                height: 30,
                width: 50,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  'Times',
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                child: DropdownButton(
                    style: TextStyle(color: Colors.red),
                    value: value3,
                    onChanged: (newvalue) {
                      setState(() {
                        value3 = newvalue;
                      });
                    },
                    items: [
                      DropdownMenuItem<String>(
                        child: Text('1'),
                        value: '1',
                      ),
                      DropdownMenuItem<String>(
                        child: Text('2'),
                        value: '2',
                      ),
                      DropdownMenuItem<String>(
                        child: Text('3'),
                        value: '3',
                      ),
                      DropdownMenuItem<String>(
                        child: Text('5'),
                        value: '5',
                      ),
                      DropdownMenuItem<String>(
                        child: Text('10'),
                        value: '10',
                      ),
                    ]),
              ),
              Container(
                height: 30,
                width: 50,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Notify Before Ringing',
                      style: TextStyle(fontSize: 25),
                      textAlign: TextAlign.left,
                    ),
                    Container(
                      width: 15,
                      height: 5,
                    ),
                    Container(
                        child: Switch(
                            value: isSwitch,
                            onChanged: (value) {
                              setState(() {
                                isSwitch = value;
                              });
                            }))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                height: 50,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                      Colors.purple.shade800,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Back to Home',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => MyProfile();
}

class MyProfile extends State<Profile> {
  bool passvis = false;
  void showAlertDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              title: Icon(Icons.thumb_up),
              content: Text('Logged in Succesfully'),
              actions: <Widget>[
                TextButton(
                  child: Text('Close'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ]);
        });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                Color.fromARGB(255, 32, 115, 159),
                Color.fromARGB(255, 157, 72, 172),
                Color.fromARGB(255, 203, 109, 189),
              ],
            ),
          ),
          width: 1500,
          child: Column(children: [
            Container(
              width: 650,
              height: 80,
              decoration: BoxDecoration(border: Border.all(width: 3)),
              margin: EdgeInsets.fromLTRB(50, 150, 50, 50),
              child: TextField(
                minLines: 1,
                maxLines: 2,
                style: TextStyle(fontSize: 30),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'User name',
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
            ),
            Container(
              width: 650,
              height: 80,
              decoration: BoxDecoration(border: Border.all(width: 3)),
              margin: EdgeInsets.fromLTRB(50, 50, 50, 0),
              child: TextField(
                minLines: 1,
                style: TextStyle(fontSize: 30),
                obscureText: passvis,
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 30),
                  suffixIcon: IconButton(
                    icon: passvis
                        ? Icon(Icons.visibility_off)
                        : Icon(Icons.visibility),
                    onPressed: () {
                      setState(() {
                        passvis = !passvis;
                      });
                    },
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(50, 50, 50, 50),
                  height: 50,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                        Colors.purple.shade800,
                      ),
                    ),
                    onPressed: () {
                      showAlertDialog(context);
                    },
                    child: Text(
                      'LogIn',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(15),
                  height: 50,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                        Colors.purple.shade800,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Back to Home',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ])),
    ));
  }
}

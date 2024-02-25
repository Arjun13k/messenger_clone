import 'package:flutter/material.dart';
import 'package:task_message_ui/view/dummy_db.dart';
import 'package:task_message_ui/view/tabs/circleAvathar_tab.dart';
import 'package:task_message_ui/view/tabs/message_tab.dart';
import 'package:task_message_ui/view/widget/chat_screen.dart';

class MyMessage extends StatefulWidget {
  const MyMessage({super.key});

  @override
  State<MyMessage> createState() => _MyMessageState();
}

class _MyMessageState extends State<MyMessage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.keyboard_arrow_left,
          size: 40,
        ),
        centerTitle: true,
        title: Text(
          'Message',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 25),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(13),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.mic),
                    hintText: "Search for Doctor",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    filled: true,
                    fillColor: Color.fromARGB(255, 216, 215, 215)),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Active Now',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                  height: 50,
                  child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => MyCircle(
                          avathar: DummyDb.activeNow[index]["profile"]),
                      separatorBuilder: (context, index) => SizedBox(
                            width: 15,
                          ),
                      itemCount: DummyDb.photo.length)),
              SizedBox(
                height: 20,
              ),
              Text(
                "Message",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Chat(
                                    admin: DummyDb.message[index]["username"]),
                              ));
                        },
                        child: MessageTab(
                            count: DummyDb.message[index]["count"],
                            message: DummyDb.message[index]["message"],
                            profile: DummyDb.message[index]["profile"],
                            time: DummyDb.message[index]["time"],
                            username: DummyDb.message[index]["username"]),
                      ),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 10,
                      ),
                  itemCount: DummyDb.message.length),
            ],
          ),
        ),
      ),
    );
  }
}

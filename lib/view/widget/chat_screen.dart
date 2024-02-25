import 'package:flutter/material.dart';
import 'package:task_message_ui/view/dummy_db.dart';
import 'package:task_message_ui/view/widget/align_message.dart';

class Chat extends StatefulWidget {
  const Chat({super.key, required this.admin});
  final String admin;

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.keyboard_arrow_left,
            size: 40,
          ),
        ),
        centerTitle: true,
        title: Text(
          widget.admin,
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 25),
        ),
        actions: [
          Icon(Icons.call),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.video_chat),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) => AlignChat(
                    isSender: DummyDb.chat[index]["isSender"],
                    msg: DummyDb.chat[index]["msg"]),
                separatorBuilder: (context, index) => SizedBox(
                      height: 15,
                    ),
                itemCount: DummyDb.chat.length),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.emoji_emotions),
                        hintText: "Write here",
                        suffixIcon: Icon(Icons.camera_alt_outlined),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        filled: true,
                        fillColor: Color.fromARGB(255, 218, 212, 212)),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                IconButton.filled(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  onPressed: () {},
                  icon: Icon(Icons.play_arrow),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

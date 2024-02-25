import 'package:flutter/material.dart';

class MessageTab extends StatefulWidget {
  const MessageTab({
    super.key,
    required this.count,
    required this.message,
    required this.profile,
    required this.time,
    required this.username,
  });
  final String username;
  final String message;
  final String profile;
  final String time;
  final int count;

  @override
  State<MessageTab> createState() => _MessageTabState();
}

class _MessageTabState extends State<MessageTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 229, 225, 225),
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(widget.profile),
              radius: 30,
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.username,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(widget.message)
              ],
            ),
            Spacer(),
            Column(
              children: [
                Text(widget.time),
                SizedBox(
                  height: 10,
                ),
                Visibility(
                  visible: widget.count > 2 ? true : false,
                  child: CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 10,
                    child: Text(widget.count.toString()),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

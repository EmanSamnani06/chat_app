import 'package:chat_app/widgets/chat_tile.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({
    super.key,
  });

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15.0, top: 22.0),
                  child: Text(
                    "Chats",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            ChatTile(
                dpAddress: "assets/images/dp1.png",
                sender: "Hawkins",
                message: "Your order just arrived!",
                time: "16:00"),
            ChatTile(
                dpAddress: "assets/images/dp2.png",
                sender: "Naxient",
                message: "Your order just arrived!",
                time: "18:00"),
            ChatTile(
                dpAddress: "assets/images/dp3.png",
                sender: "Ieslie Alexander",
                message: "Your order just arrived!",
                time: "20:01"),
          ],
        ),
      ),
    );
  }
}

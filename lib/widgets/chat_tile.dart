import 'package:chat_app/screens/chat_detail_screen.dart';
import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  const ChatTile(
      {super.key,
      required this.dpAddress,
      required this.sender,
      required this.message,
      required this.time});
  final String dpAddress;
  final String sender;
  final String message;
  final String time;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (e) => const ChatDetailScreen()));
      },
      child: Container(
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.only(left: 10, right: 10, bottom: 8, top: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey), //border color
          borderRadius: BorderRadius.circular(10), //rounded corners
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 5,
            ),
          ],
        ),
        child: ListTile(
          leading:
              CircleAvatar(backgroundImage: AssetImage(dpAddress), radius: 30),
          title: Text(
            sender,
            style: const TextStyle(
                fontSize: 19, fontWeight: FontWeight.w600, color: Colors.black),
          ),
          subtitle: Text(
            message,
            style: const TextStyle(fontSize: 16),
          ),
          trailing: Text(
            time,
            style: const TextStyle(fontSize: 15),
          ),
        ),
      ),
    );
  }
}

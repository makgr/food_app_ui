import 'package:flutter/material.dart';
import 'package:food_app_ui/constant/app_color.dart';

import '../model/chat_message_model.dart';

class CustomerSupportScreen extends StatefulWidget {
  const CustomerSupportScreen({super.key});

  @override
  State<CustomerSupportScreen> createState() => _CustomerSupportScreenState();
}

class _CustomerSupportScreenState extends State<CustomerSupportScreen> {
  List<ChatMessage> messages = [
    ChatMessage(messageContent: "Hello, Will", messageType: "receiver"),
    ChatMessage(messageContent: "How have you been?", messageType: "receiver"),
    ChatMessage(
        messageContent: "Hey Kriss, I am doing fine dude. wbu?",
        messageType: "sender"),
    ChatMessage(messageContent: "ehhhh, doing OK.", messageType: "receiver"),
    ChatMessage(
        messageContent: "Is there any thing wrong?", messageType: "sender"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.all(6.0),
            child: Icon(Icons.menu),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              padding: EdgeInsets.only(top: 10, bottom: 10),
              itemBuilder: (context, index) {
                return Container(
                  padding:
                      EdgeInsets.only(left: 14, right: 14, top: 10, bottom: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: messages[index].messageType == "receiver"
                        ? MainAxisAlignment.start
                        : MainAxisAlignment.end,
                    children: [
                      if (messages[index].messageType == "receiver")
                        CircleAvatar(
                          backgroundImage: AssetImage(
                              'assets/images/Group70.png'), // Receiver's image
                          radius: 20,
                        ),
                      if (messages[index].messageType == "sender")
                        Spacer(), // Adds space to keep alignment
                      SizedBox(width: 10), // Space between image and message
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: (messages[index].messageType == "receiver"
                              ? Colors.grey.shade200
                              : AppColor.primaryColor),
                        ),
                        padding: EdgeInsets.all(16),
                        child: Text(
                          messages[index].messageContent,
                          style: TextStyle(
                            fontSize: 15,
                            color: messages[index].messageType == "receiver"
                                ? Colors.black
                                : Colors.white,
                          ),
                        ),
                      ),
                      if (messages[index].messageType == "sender")
                        SizedBox(width: 10), // Space between image and message
                      if (messages[index].messageType == "sender")
                        CircleAvatar(
                          backgroundImage: AssetImage(
                              'assets/images/image8.png'), // Sender's image
                          radius: 20,
                        ),
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Type a message",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    // Add functionality to send the message
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/message_field_box.dart';
import 'package:yes_no_app/presentation/widgets/my_message_bubble.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://i.insider.com/5b801ab63cccd12d008b4590?width=700',
            ),
          ),
        ),
        title: const Text('Mi amor ❤️'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                controller: ScrollController(),
                itemCount: 100,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: index % 2 == 0
                        ? HerMessageBubble(message: index.toString())
                        : MyMessageBubble(message: index.toString()),
                  );
                },
              ),
            ),
            MessageFieldBox(onValue: (value) {}),
          ],
        ),
      ),
    );
  }
}

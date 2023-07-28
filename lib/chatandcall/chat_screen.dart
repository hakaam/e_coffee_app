import 'package:flutter/material.dart';
class ChatScreen extends StatefulWidget {
  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Leslie Sheeran',
          style: TextStyle(
            color: Color(0xff001833)

          ),

        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                children: <Widget>[
                  MessageBubble(
                    text: 'Hi, sir. When can I get my \norder?',
                    isMe: true,
                    time: '11:30 AM',
                    color: Color(0xFF324A59),
                  ),
                  MessageBubble(
                    text: 'Don’t worry. Your order is \nsending to you now.',
                    isMe: false,
                    time: '11:31 AM',
                    color: Color(0xFFE4D5C9),
                  ),
                  MessageBubble(
                    text: 'Okay. Thank you.',
                    isMe: true,
                    time: '11:32 AM',
                    color: Color(0xFF324A59),
                  ),
                ],
              ),
            ),
            TextField(

              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 35),
                hintText: 'Say something...',
                hintStyle: TextStyle(
                  color: Colors.grey.shade300
                  
                  
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 2, color: Color(0xff324A59)),
                  borderRadius: BorderRadius.circular(50.0),
//<-- SEE HERE
                ),
                suffixIcon: GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, '/callscreen');

                  },
                    child: Image.asset('images/fill.png'))
              ),
            ),
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}

class MessageBubble extends StatelessWidget {
  final String text;
  final bool isMe;
  final String time;
  final Color color;

  MessageBubble({required this.text,
    required this.isMe,
    required this.time, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment:
        isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: <Widget>[
          Material(
            borderRadius: isMe
                ? BorderRadius.only(
              topLeft: Radius.circular(10.0),
              bottomLeft: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0),
            )
                : BorderRadius.only(
              topRight: Radius.circular(10.0),
              bottomLeft: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0),
            ),
            elevation: 5.0,
            color: color,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.0),
          Text(
            time,
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}


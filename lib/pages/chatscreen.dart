import 'package:flutter/material.dart';
import 'package:flutter_chat_app_ui/utils/constants.dart';
import 'package:intl/intl.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey.shade800,
          elevation: 10,
          
          title: const Text('Chat Messages'),
          ),
        body: Container(
          child: Column(
            children: [
              Expanded(child: 
              Container(
                width: w,
                child: ListView.builder(
                  itemCount: messages.length,
                  itemBuilder: (context, index){
                    return Container(
                      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                      margin: const EdgeInsets.all(5),
                      // color: Colors.green,
                      child: Row(
                        mainAxisAlignment: messages[index]['uid']==1234?MainAxisAlignment.end:MainAxisAlignment.start,
                        children: [
                          messages[index]['uid']!=1234?Container(): giveTime(messages[index]['time']),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                            decoration: BoxDecoration(
                              borderRadius:  BorderRadius.only(
                                bottomLeft: const Radius.circular(20),
                                topRight: const Radius.circular(20),
                                bottomRight: Radius.circular(messages[index]['uid']==1234?0:20),
                                topLeft: Radius.circular(messages[index]['uid']==1234?20:0)
                              ),
                              color: messages[index]['uid']==1234?Colors.grey.shade800:Colors.grey.shade900.withOpacity(0.8)
                            ),
                            constraints: BoxConstraints(
                              maxWidth: w*2/3,
                            ),
                            child: Text(messages[index]['text'])),
                          messages[index]['uid']==1234?Container(): giveTime(messages[index]['time'])
                        ],
                      ),
                    );
                  },
                  ),
                )
            ),
            Container(
              height: 70,
              // color: Colors.green,
              child: Row(
                children: [
                  const SizedBox(width: 20,),
                  Expanded(child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade900,
                      borderRadius: BorderRadius.circular(10)
                    ),
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter a Message',
                          border: OutlineInputBorder(borderSide: BorderSide.none)
                        ),
                      ),
                  )),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.send, size: 30,))
                ],
              ),
            ),
            // const SizedBox(height: 10,)
            ],
          
          ),
        ),
      ),
    );
  }


Widget giveTime(DateTime dateTime){
  return Container(
    margin: const EdgeInsets.symmetric(horizontal:10),
    child: Text(DateFormat('kk:mm').format(dateTime), style: TextStyle(fontSize: 12, color: Colors.grey.shade600),));
}

}


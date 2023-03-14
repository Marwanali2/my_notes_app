import 'package:flutter/material.dart';
class NotesItem extends StatelessWidget {
  const NotesItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24,bottom: 24),
      decoration: BoxDecoration(color: const Color.fromRGBO(255, 205, 124,1),borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text('Flutter Tips',style: TextStyle(fontSize: 20,color: Colors.black)),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Text('note sub title',style: TextStyle(fontSize: 15,color: Colors.black.withOpacity(0.4))),
            ),
            trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.delete,color: Colors.black,size: 30,)),

          ),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text('${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',style: TextStyle(color: Colors.black.withOpacity(0.4)),),
          )
        ],
      ),
    );
  }
}

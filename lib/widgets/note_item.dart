import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 16,bottom: 16,left: 16),
      decoration: BoxDecoration(
        color: Color(0xffFFCC60),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
        ListTile(
          title: Text("Flutter Tips", style: TextStyle(color: Colors.black,fontSize: 26),),
          subtitle: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Text("Build your cateer with tharwat samy",style: TextStyle(color: Colors.black.withValues(alpha: 0.4),fontSize: 16),),
          ),
          trailing: IconButton(onPressed: (){}, icon: Icon(Icons.delete,color: Colors.black,size: 26,)),
          contentPadding: EdgeInsets.all(8),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 24),
          child: Text("May 22 2022",style: TextStyle(color: Colors.black.withValues(alpha: 0.4)),),
        )
      ],),
    );
  }
}
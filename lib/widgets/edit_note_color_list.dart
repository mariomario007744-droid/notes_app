import 'package:flutter/material.dart';
import 'package:note_app/const.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/color_item.dart';

class EditNoteColorList extends StatefulWidget {
  final NoteModel note;

  const EditNoteColorList({required this.note});
  @override
  State<EditNoteColorList> createState() => _EditNoteColorListState();
}

class _EditNoteColorListState extends State<EditNoteColorList> {
  late int currentIndex;

  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kColors.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              currentIndex = index;
              widget.note.color = kColors[index].toARGB32();
              setState(() {});
            },
            child: ColorItem(
              isActive: currentIndex == index,
              color: kColors[index],
            ),
          );
        },
      ),
    );
  }
}

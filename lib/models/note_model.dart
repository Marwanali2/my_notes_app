import 'package:hive/hive.dart';

part 'note_model.g.dart';
@HiveType(typeId: 0) // بنختار رقم من 0 الي 255 بيكون مميز لل object ده
class NoteModel extends HiveObject{
  @HiveField(0)
   String title;
  @HiveField(1)
   String content;
  @HiveField(2)
  final String date;
  @HiveField(3)
   int color;

  NoteModel({
    required this.title,
    required this.content,
    required this.date,
    required this.color,
  });
}

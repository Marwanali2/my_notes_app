import 'package:hive/hive.dart';

part 'note_model.g.dart';
@HiveType(typeId: 0) // بنختار رقم من 0 الي 255 بيكون مميز لل object ده
class NoteModel extends HiveObject{
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String subTitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int color;

  NoteModel({
    required this.title,
    required this.subTitle,
    required this.date,
    required this.color,
  });
}

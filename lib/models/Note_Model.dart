import 'package:hive/hive.dart';


part 'Note_Model.g.dart';
@HiveType(typeId: 0)
class Note_Model extends HiveObject {
  @HiveField(0)
   String title;
  @HiveField(1)
   String subtitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
   int color;
  Note_Model({
    required this.title,
    required this.subtitle,
    required this.date,
    required this.color,
  });
}

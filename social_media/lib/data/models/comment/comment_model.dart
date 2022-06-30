import 'package:hive_flutter/adapters.dart';

@HiveType(typeId: 3)
class PostComment {
  @HiveField(0)
  final String reecterId;
  @HiveField(1)
  final DateTime commentedAt;
  @HiveField(2)
  final String commentText;

  PostComment(
      {required this.reecterId,
      required this.commentedAt,
      required this.commentText});
}

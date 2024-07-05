
import 'package:hive/hive.dart';



@HiveType(typeId: 0)
class User extends HiveObject {
 @HiveField(0)
 late String username;

 @HiveField(1)
 late String email;

 User({required this.email, 
 required this.username});
}

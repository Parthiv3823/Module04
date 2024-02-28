import 'item.dart';

class Category {
  String name;
  List<Item>? itemList = [];

  Category({required this.name, this.itemList});
}

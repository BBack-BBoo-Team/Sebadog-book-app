import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:readingclub/const/firebase_keys.dart';

class BookModel {
  String? bookKey;
  String? author;
  String? company;
  dynamic editDate;
  int? genre;
  String? image;
  List<dynamic> likeList;
  String? makerKey;
  String? readingState;
  String? title;

  BookModel.fromMap(Map<String, dynamic> map)
      : bookKey = map[KEY_BOOK_KEY] ?? '',
        author = map[KEY_BOOK_AUTHOR] ?? '',
        company = map[KEY_BOOK_COMPANY] ?? '',
        editDate = map[KEY_BOOK_EDIT_DATE] ?? DateTime.now(),
        genre = map[KEY_BOOK_GENRE] ?? 0,
        image = map[KEY_BOOK_IMAGE] ?? 0,
        likeList = map[KEY_BOOK_LIKE_LIST] ?? [],
        makerKey = map[KEY_BOOK_MAKER_KEY] ?? "",
        readingState = map[KEY_BOOK_READING_STATE] ?? "",
        title = map[KEY_BOOK_TITLE] ?? "";

  BookModel.fromSnapshot(DocumentSnapshot snapshot) : this.fromMap(snapshot.data() as Map<String, dynamic>);
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:readingclub/const/firebase_keys.dart';
import 'package:readingclub/models/book_model.dart';

class BookNetworkRepository {

  Future<List<BookModel>> getBookModel() async {
    final CollectionReference bookCollRef = FirebaseFirestore.instance
        .collection(COLLECTION_BOOK);
    List<BookModel> bookList = [];
    QuerySnapshot querySnapshot = await bookCollRef.get();
    for (var element in querySnapshot.docs) {
      bookList.add(BookModel.fromSnapshot(element));
    }
    return bookList;
  }
}
BookNetworkRepository bookNetworkRepository = BookNetworkRepository();
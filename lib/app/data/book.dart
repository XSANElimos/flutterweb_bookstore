class Book {
  Book(this.name);
  final String name;
  late String image_path;
  late String description;
  void setpath($path) => {image_path = $path};
  void setdescripton($description) => {description = $description};
}

Map<String, Map> bookmap = {
  'book1': {
    'name': 'book1',
    'image_path': 'assets/images/banner.jpg',
    'description':
        'xxxoooxxxxoooxxxoooxxxoooxxxoooxxxoooxxxoooxxxoooxxxoooxxxoooxxxooo',
    'others': 'none'
  },
  'book2': {
    'name': 'book2',
    'image_path': 'assets/images/banner.jpg',
    'description':
        'xxxooxxxoooxxxoooxxxoooxxxoooxxxoooxxxoooxxxoooxxxoooxxxoooxxxooo',
    'others': 'none'
  },
};




//book1.set;


// void defineallbooks(Map<String, Map> $bookmap) {
//   for (var i = 0; i < $bookmap.length; i++) {
//     $bookmap[i] 
//   }
// }

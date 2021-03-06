import 'package:test/test.dart';
import 'package:testing_app/models/favourites.dart';

void main() {
  group('Testing App Provider', () {
    var favorites = Favorites();

    test('An item should be removed', () {
      var number = 5;
      favorites.add(number);
      expect(favorites.items.contains(number), true);
      favorites.remove(number);
      expect(favorites.items.contains(number), false);
    });
  });
}

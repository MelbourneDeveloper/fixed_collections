import 'package:fixed_collections/fixed_collections.dart';

void main(List<String> arguments) {
  final listExample = FixedList<String>(['Example']);

  //add got cancelled
  listExample.add('hi');

  //addAll - cancelled!
  listExample.addAll(iterable);

  //I don't think so
  listExample[0] = "lo";

  //Oh no you didn't!
  listExample.insert(1, 'something');

  //You can't do that
  listExample.fillRange(0, 1, 'something else');

  //That's nasty
  listExample.sort();

  //No!
  listExample.shuffle();

  //No soup for you!
  listExample.clear();

  final setExample = FixedSet<String>({'Example', 'Example2'});

  //You can't add to a fixed set
  //ignore: avoid_ignoring_return_values
  setExample.add('example3');

  final mapExample = FixedMap<String, String>({'Key': 'Value'});

  //You can't put anything in a FixedMap after construction
  //ignore: avoid_ignoring_return_values
  mapExample.putIfAbsent('Key 2', () => ' Example 2');
}

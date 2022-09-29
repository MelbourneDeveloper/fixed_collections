import 'package:fixed_collections/fixed_collections.dart';

void main(List<String> arguments) {
  final strings = FixedList<String>(['Example']);

  //add got cancelled
  strings.add('hi');

  //addAll - cancelled!
  strings.addAll(iterable)

  //I don't think so
  strings[0] = "lo";

  //Oh no you didn't!
  strings.insert(1, 'something');

  //You can't do that
  strings.fillRange(0, 1, 'something else');

  //That's nasty
  strings.sort();

  //No!
  strings.shuffle();

  //No soup for you!
  strings.clear();

  final setExample = FixedSet<String>({'Example', 'Example2'});

  //You can't add to a fixed set
  setExample.add('example3');

  final mapExample = FixedMap<String, String>({'Key': 'Value'});

  //You can't put anything in a FixedMap after construction
  mapExample.putIfAbsent('Key 2', () => ' Example 2');
}



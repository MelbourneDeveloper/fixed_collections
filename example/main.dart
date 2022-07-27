import 'package:unmodifiable_collections/unmodifiable_collections.dart';

void main(List<String> arguments) {
  final strings = UnmodifiableList<String>(['Example']);

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
}
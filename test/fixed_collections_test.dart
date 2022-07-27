// ignore_for_file: avoid_relative_lib_imports

import 'package:fixed_collections/fixed_collections.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Lists',
    () => {
      test('Test Unmodifiability', () {
        final items = [1, 2, 3];

        final immutableList = FixedList<int>(items);

        //First element
        expect(immutableList.first, items.first);

        //Length
        expect(immutableList.length, items.length);

        expect(
          immutableList.reduce((a, b) => a + b),
          items.reduce((a, b) => a + b),
        );

        expect([1].toImmutableList().length, 1);

        expect([1].toImmutableList()[0], 1);

        //Make sure we cannot add
        //ignore: deprecated_member_use_from_same_package
        expect(() => immutableList.add(1), throwsUnsupportedError);

        //Make sure we cannot remove
        //ignore: deprecated_member_use_from_same_package
        expect(() => immutableList.remove(1), throwsUnsupportedError);

        //Make sure we cannot change
        //ignore: deprecated_member_use_from_same_package
        expect(() => immutableList[0] = 2, throwsUnsupportedError);

        //TODO: Expect all the errors
      }),
      test('Test Iteration', () {
        final items = [1, 2, 3];
        var total = 0;

        final immutableList = FixedList<int>(items);

        //Iterate over the list
        for (final item in immutableList) {
          total += item;
        }

        expect(total, 6);
      }),
    },
  );
}

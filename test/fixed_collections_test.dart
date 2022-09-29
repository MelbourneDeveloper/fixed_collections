// ignore_for_file: avoid_relative_lib_imports

import 'package:collection/collection.dart';
import 'package:fixed_collections/fixed_collections.dart';
import 'package:test/test.dart';

//ignore: long-method
void main() {
  group(
    'Maps',
    () => {
      test('Test Unmodifiability', () {
        final items = {1: 1, 2: 2};
        final Map<int, int> immutableSet = FixedMap<int, int>(items);

        //First element
        expect(immutableSet.keys.first, items.keys.first);
        expect(immutableSet.values.first, items.values.first);

        //Length
        expect(immutableSet.length, items.length);

        //Make sure we cannot add
        //ignore: deprecated_member_use_from_same_package
        expect(
          () => immutableSet.putIfAbsent(5, () => 5),
          throwsUnsupportedError,
        );

        //Make sure we cannot remove
        //ignore: deprecated_member_use_from_same_package
        expect(() => immutableSet.remove(1), throwsUnsupportedError);
      }),
    },
  );

  group(
    'Sets',
    () => {
      test('Test Unmodifiability', () {
        final items = [1, 2, 3];

        final Set<int> immutableSet = FixedSet<int>(items.toSet());

        //First element
        expect(immutableSet.first, items.first);

        //Length
        expect(immutableSet.length, items.length);

        expect(
          immutableSet.reduce((a, b) => a + b),
          items.reduce((a, b) => a + b),
        );

        //Make sure we cannot add
        //ignore: deprecated_member_use_from_same_package
        expect(() => immutableSet.add(1), throwsUnsupportedError);

        //Make sure we cannot remove
        //ignore: deprecated_member_use_from_same_package
        expect(() => immutableSet.remove(1), throwsUnsupportedError);
      }),
    },
  );

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

        expect([1].toFixedList().length, 1);

        expect([1].toFixedList()[0], 1);

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
      test('Test Equality', () {
        const items = [1, 2, 3];

        final immutableList = FixedList<int>(items);
        final immutableList2 = FixedList<int>(items);

        //Should be equal
        final listEquality = const ListEquality<int>().equals;
        final isEqual = listEquality(immutableList, immutableList2);
        expect(isEqual, true);

        expect(
          Object.hash(immutableList[0], immutableList[1], immutableList[2]) ==
              Object.hash(
                immutableList2[0],
                immutableList2[1],
                immutableList2[2],
              ),
          true,
        );

        //Should not be equal
        final isEqual2 = listEquality(immutableList, FixedList<int>([3, 2, 1]));
        expect(isEqual2, false);
      }),
    },
  );
}

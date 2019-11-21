
import 'package:test/test.dart';
import '../bin/main.dart';

void main() {
  test('Flatten List 1', () {
    expect(flattenListMain([1, "2", [3,  () { return 4; }, [ "five" ], "six", true, { 'prop': "val" }],])
        ,[1, "2", 3, 4, "five", "six", true, {"prop": "val"}]);
  });
  test('Flatten List 2', () {
    expect(flattenListMain([]),[]);
  });
  test('Flatten List 3', () {
    expect(flattenListMain([[1],2,[3,4],[[5,6],[7,8],],[[[9],10],11],12]),[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]);
  });
  test('Flatten List 4', () {
    expect(flattenListMain([[1],2,[3,4],[[5,6],[7,8],],[[[9],10],11],12]),[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]);
  });
  test('Flatten List 5', () {
    expect(flattenListMain([1,[2],() { return 3;},() { return [4];},() { return [[5]];}]),[1, 2, 3, 4, 5]);
  });
  test('Flatten List 6', () {
    expect(flattenListMain([[1],2,[3],[[4]],[[[[5]]]]]),[1, 2, 3, 4, 5]);
  });
}

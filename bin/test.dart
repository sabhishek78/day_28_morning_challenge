import 'main.dart';

import 'package:test/test.dart';

void main() {
  test('flatten list', () {
    expect(flattenList([1, "2", [3,  () { return 4; }, [ "five" ], "six", true, { 'prop': "val" }],]),[1, '2', 3, 4, 'five', 'six', true, {'prop': 'val'}]);
    expect(flattenList([[1],2,[3,4],[[5,6],[7,8],],[[[9],10],11],12]),[1,2,3,4,5,6,7,8,9,10,11,12]);
    expect(flattenList([]),[]);
  });

}
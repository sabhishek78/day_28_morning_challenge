// Challenge
// Flatten a list
// Create a function that takes a list. This list can have all kinds of items, even other lists. The function should return a single, flat, one-dimensional, list with all elements. Here are the conditions:
//
// - If the item is a list, include each item in it and the following still apply:
// - If the item is a Function, include the function's output, not the function itself.
// - If the item is a plain Object or a Primitive, include it as is.

// Example
// flattenList([1, "2", [3, function () { return 4; }, [ "five" ], "six", true, { prop: "val" }]])
//  ➞ [1, "2", 3, 4, "five", "six", true, { prop: "val" }]


flattenListMain(List inputList){
  List outputList = [];
  flattenList(inputList,outputList);
  return outputList;
}

List flattenList(List inputList, List outputList) {
  for (int i = 0; i < inputList.length; i++) {
    dynamic element = inputList[i];

    if (element is List) {
      flattenList(element,outputList);
    } else if (element is Function) {
      dynamic functionResult = element();

      if (functionResult is List) {
        flattenList(functionResult,outputList);
      } else {
        outputList.add(functionResult);
      }
      //outputList.add(inputList[i]());

    } else {
      outputList.add(element);
    }
  }
  return outputList;
}

main() {
   print(flattenListMain([1, "2", [3,  () { return 4; }, [ "five" ], "six", true, { 'prop': "val" }],]));
   print(flattenListMain([]));
    print(flattenListMain([[1],2,[3,4],[[5,6],[7,8],],[[[9],10],11],12]));


  print(flattenListMain([1,[2],() { return 3;},() { return [4];},() { return [[5]];}]));
  print(flattenListMain([[1],2,[3],[[4]],[[[[5]]]]]));
}

// Genéricos
func makeArray<Item>(repeating item: Item, numberOfTimes: Int) -> [Item] {
  var result: [Item] = []

  for _ in 0..<numberOfTimes {
    result.append(item)
  }

  return result
}
makeArray(repeating: "comer", numberOfTimes: 4)

enum OptionalValue<Warepped> {
  case none
  case some(Warepped)
}
var possibleInteger: OptionalValue<Int> = .nome
possibleInteger = .some(100)

func anyCommomElements<T: Sequence, U: Sequence>(_ lhs: T, _ rhs: U) -> Bool 
where T.Element: Equatable, T.Element == U.Element {
  for lhsItem in lhs {
    for rhsItem in rhs {
      if lhsItem == rhsItem {
        return true
      }
    }
  }
  return false
}
anyCommomElements([1, 2, 3], [3])

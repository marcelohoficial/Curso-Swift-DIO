// ARRAYS

let myArray: [String] = []
// let myArray: Array<String> = []

var someInts : [Int] = []
someInts.append(3)

var threeDoubles = Array(repeating: 0.0, count: 3)

var anotherThreeDoubles = Array(repeating: 2.5, count: 3)
var sixDoubles = threeDoubles + anotherThreeDoubles

var shoppingList: [String] = ["Ovos", "Leite"]
print("A lista de compras contém \(shoppingList.count) ítems.")

if shopppingList.isEmpty {
  print("A lista de compras está vazía.")
} else {
  print("A lista de compras não está vazía.")
}

shoppingList.append("Farinha")
shoppingList += ["Fermento em pó"]
shoppingList += ["Pasta de Chocolate", "Queijo", "Manteiga"]

var firstItem = shoppingList[0]
shoppingList[0] = "Seis ovos"

shoppingList[4...6] = ["Bananas", "Maçãs"]

shoppingList.insert("Xarope de bordo", at: 0)

let mapleSyrup = shoppingList.remove(at: 0)

let apple = shoppingList.removeLast();

for item in shoppingList {
  print(item)
}
for (index, value) in shoppingList.enumareted() {
  print("Item \(index + 1) é \(value)")
}


// SET
var letters = Set<Character>()
letters.insert("a")

var favoriteGenres: Set<String> = ["Rock", "Clássico", "Hip Hop"]
var newFavoriteGenres: Set = ["Rock", "Samba"]

if favoriteGenres.isEmpty {
  print("Gosto de tudo")
} else {
  print("Gosto apenas de \(favoriteGenres)")
}

favoriteGenres.insert("Jazz")

if let removedGenres = favoriteGenres.remove("Rock") {
  print("\(removedGenres)? Não gosto mais")
}

if favoriteGenres.contains("Funk") {
  print("Taaa bom")
}

print("Sem ordenação: ")
for genre in favoriteGenres {
  print("\(genre)")
}
print("Ordenado: ")
for genre in favoriteGenres.sorted() {
  print("\(genre)")
}

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitsPrimeNumber: Set = [2, 3, 5, 7]
oddDigits.union(evenDigits).sorted()
oddDigits.intersection(evenDigits).sorted()
oddDigits.subtracting(singleDigitsPrimeNumber).sorted()
oddDigits.symmetricDifference(singleDigitsPrimeNumber).sorted()


let houseAnimals: Set = [1, 2]
let farmAnimals: Set = [0, 1, 3, 5, 7]
let cityAnimals: Set = [4, 6]
houseAnimals.isSubset(of: farmAnimals)
farmAnimals.isSuperset(of: houseAnimals)
farmAnimals.isDisjiont(with: cityAnimals)


// Dictionary
// Dictionary<Key, Int>
// [Key, Int]
var namesOfIntegers: [Int: String] = [:]
namesOfIntegers[16] = "dezesseis"
namesOfIntegers = [:]

var airpoints: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
var literalAirpoints = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]

airpoints["LHR"] = "Lodon"
airpoints["LHR"] = "London Heathrow"

if let oldValue = airpoints.updateValue("Dublin Airpoint", forKey: "DUB") {
  print("O valor antigo para DUB era \(oldValue)")
}

airpoints["APL"] = "Apple Internation"
airpoints["APL"] = nil
// airpoints.removeValue(forKey: "APL")

let airportsCodes = [String](airpoints.keys)
let airportsNames = [String](airpoints.values)
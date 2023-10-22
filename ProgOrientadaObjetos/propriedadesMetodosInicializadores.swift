class Person {
  var age: Int!
  var gender: String!
  var color: String!
  var maritalStatus: String!
}

class BehaviorPerson {
  var age: Int!
  var gender: String!
  var color: String!
  var maritalStatus: String!

  func play(sport: String) {}
}

class Wall {
  init() {}
}

class WhiteWall {
  var length: Double

  init() {
    length = 5.5
    print("Criamos o objeto Wall.")
    print(length)
  }
}
var whiteWall = WhiteWall()

class BlackWall {
  var length: Double

  init(length: Double) {
    self.length = length
  }
}
var balckWall = BlackWall(length: 5.5)

class LogWall {
  var length: Double
  var height: Double
  
  init(length: Double, height: Double) {
    self.legth = length
    self.height = height
  }

  func calculateArea() -> Double {
    return length * height
  }
}
var longWall1 = LongWall(length: 20.5, height: 8.6)
var longWall2 = LongWall(length: 8.5, height: 6.3)

class PersonAge {
  var age: Int

  init() {
    age = 20
  }

  init(age: Int) {
    self.age = age
  }

  func getAge() -> Int {
    return age
  }
}
var personAge1 = PersonAge()
print("Person 1 Age: ", personAge1.getAge())
var personAge2 = PersonAge(age: 23)
print("Person 2 Age: ", personAge2.getAge())

class University {
  var name: String
  var rank: String

  init(name: String, rank: String) {
    self.name = name
    self.rank = rank
  }

  convenience init() {
    self.init(name: "Universidade de SP", rank: "1º")
  }
}
var university = University()

class File {
  var folde: String

  init?(folder: String) {
    if folder.isEmpty {
      print("Folder Not Found")
      return nil
    }
    self.folder = folder
  }
}
var file = File(folder: "")

struct PersonStruct {
  var name: String
  var age: Int
}
var personStruct = PersonStruct(name: "Pedro", age: 43)






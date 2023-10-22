// Herança
class Person {
  var age: Int
  var gender: String
  var color: String
  var maritialStatus: String

  init (age: Int, gender: String, color: String, maritialStatus: String) {
    self.maritialStatus = maritialStatus
  }

  func play(sport: String) {
    print("Esporte: \(sport)")
  }

  func play(instrument: String) {
    print("Instruments: \(instrument)")
  }
}

class Men: Person {}

class FootballPlayer: Person {
  override func play(sport: String) {
    print("Jogador de \(sport)")
  }
}

class Pilot: Person {
  override func play(sport: String) {
    print("Piloto, \(sport)")
  }
}

class Rock: Person {
  override func play(instrument: String) {
    print("Toca \(instrument)")
  }
}
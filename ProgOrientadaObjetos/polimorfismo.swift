// Polimorfismo
class Player {
  let name: String

  init(name: String) {
    self.name = name
  }

  func play() {
    print("Comportamento padrao")
  }
}
class Batsman: Play {
  //Mudar o compotamento padrão
  override func play() {
    bat()
  }

  private func bat() {
    print("\(name) está rebatendo")
  }
}
class Bowler: Player {
  override func play() {
    bowl()
  }

  private func bowl() {
    print("\(name) jogando")
  }
}
class CricketTeam {
  let name: String
  let team: [Player]

  init(name: String, team: String) {
    self.name = name
    self.team = team
  }

  func play() {
    team.forEach { $0.play()}
  }
}

let maria = Batsman(name: "Maria")
let pedro = Bowler(name: "Pedro")
let rioCricket = CricketTeam(name: "Rio Cricket", team: [maria, pedro])
rioCricket.play()


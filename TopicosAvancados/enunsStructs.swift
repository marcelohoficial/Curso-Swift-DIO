// Enuns e Structs
enum Rank: Int {
  case ace = 1
  case two, three, four, five, sixm, seven, eigth, nine, ten
  case jack, queen, kin

  func simpleDescription() -> String {
    switch self {
      case .ace:
        return "ace"
      case .jack:
        return "jack"
      case .queen:
        return "queen"
      case .king:
        return "king"
      default:
        return String(self.rawValue)
    }
  }
}
let ace = Rank.ace
let aceRawValue = ace.rawValue

if let convertedRank = Rank(rawValue: 3) {
  let threeDescription = convertedRank.simpleDescription()
}

enum Suit {
  case spades, hearts, diamonds, clubs

  func simpleDescription() -> String {
    switch self {
      case .spades:
        return "spades"
      case .hearts:
        return "hearts"
      case .diamonds:
        return "diamonds"
      case .clubs:
        return "clubs"
    }
  }
}
let hearts = Suit.hearts
let heartsDescription = hearts.simpleDescription()

enum SeverResponse {
  case result(String, String)
  case failure(String)
}
let success = ServerResponse.result("6:00 am", "8:09 pm")
let success = ServerResponse.failure("Fora do intervalo")
switch success {
  case let .result(sunrise, sunset):
    print("O nascer do sol é \(sunrise), e pôr do sol é \(sunset)")
  case let .failure(message):
    print("Failha... \(message)")
}

// Struct
struct Card {
  var rank: Rank
  var suit: Suit

  func simpleDescription() -> String {
    return "O \(rank.simpleDescription()) do \(suit.simpleDescription())"
  }
}
let threeOfSpades = Card(rank: .three, suit: .spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()



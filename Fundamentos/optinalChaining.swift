import UIKit

class Residense {
  var numberOfRomms = 1
}
class Person {
  var residence : Residence?
}
let joao = Person()
// joao.residence!.numberOfRomms
if let roomCount = joao.residence?.numberOfRooms {
  print("A residência do João tem \(roomCount) quarto(s).")
} else {
  print("Não foi possível recuperar o número de quartos.")
}
joao.residence = Residence()
if let roomCount = joao.residence?.numberOfRooms {
  print("A residência do João tem \(roomCount) quarto(s).")
} else {
  print("Não foi possível recuperar o número de quartos.")
}

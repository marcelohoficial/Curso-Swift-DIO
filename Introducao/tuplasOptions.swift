// Tuplas
let http404Error = (404, "Not Found") // http404Error é do tipo (Int, String)

let (statusCode, statusMessage) = http404Error
print("O statusCode é \(statusCode)")
print("O statusMessage é \(statusMessage)")

let (justTheStatusCode, _) = http404Error
print("O statusCode é \(justTheStatusCode)")
print("O statusCode é \(http404Error.0)")

let http200status = (statusCode: 200, description: "Ok")
print("O statusCode é \(http200Status.statusCode)")

// Optionals
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber) // convertedNumber é inferido como tipo "Int?"

// Nil
var serverResponseCode: Int? = 404 //Contém um valor Int real de 404
serverResponseCode = nil // É automáticamente definido como nil

// Optionals - Forced Unwrapping
if convertedNumber != nil {
  print("convertedNumber contém algum valor inteiro.")
  print("convertedNumber tem um valor inteiro de \(convertedNumber)")
}

// Optionals - Binding
if let actualNumber = Int(possibleNumber) {
  print("A String \(possibleNumber) tem um valor inteiro de \(actualNumber)")
} else {
  print("A String \(possibleNumber) não pode ser convertido em um número inteiro")
}
let myNumber = Int(possibleNumber) //myNumber Inteiro Opcional
if let myNumber = myNumber {
  // Aqui, myNumber é um inteiro não opcional
  print("Meu número é \(myNumber)")
}
/*
  A partir do 5.7 pode usar ortografia mais curta
  if let myNumber {
    print("Meu número é \(myNumber)")
  }
*/
if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
  print("\(firstNumber) < \(secondNumber) < 100")
}

// Optionals - Unwrapped Optional Implicitamente
let possibleString: String? = "Uma String optional"
let forcedString: String = possibleString! // Requer ! para fazer o force
let assumedString: String! = "Uma String optional desempacotada implicitamente"
let implict: String = assumedString //Não precisa de ponto de exclamação
let optionalString = assumedString
// O tipo de optionalString é "String?" e assumedString não é desempacotada à força
if assumedString != nil {
  print(assumedString!)
}
if let definiteString = assumedString {
  print(definiteString)
}

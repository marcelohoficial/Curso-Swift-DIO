// Inteiros
let minValue = UInt.min // minValue é igual a 0 e é do tipo UInt8
let maxValue = UInt.max // minValue é igual a 255 e é do tipo UInt8

// Type Safety e Type Inference
let meaningOfLife = 42 // meaningOfLife é inferido como sendo do tipo Int
let pi = 3.14159 // pi é inferido como sendo do tipo Double
let anotherPi = 3 + 0.14159

// Literais Numéricos
let decimalInteger = 17
let binaryInteger = 0b10001
let octalInteger = 0o21
let hexadecimalInteger = 0x11
let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0
let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1

// Type Aliases
typealias AudioSample = Uint16
var maxAmplitudeFound = AudioSample.min // maxAmplitudeFound agora é 0

//Booleanos
let orangesAreOrange = true
let turnipsAreDelicius = false
if turnipsAreDelicius {
  print("Mmm, nabos saboros!")
} else {
  print("Eww, nabos são horríveis!")
}
let i = 1
// if i {
//   // Este exemplo não será compilado e relatará um erro
// }
// if i == 1 {
//   // Este exemplo será compilado com sucesso
// }
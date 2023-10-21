// Concorrências
let startTime = CFAbsoluteTimeGetCurrent()
DispathQueue.global().sync {
  for i in 0...10 {
    print("Fui... \(i)")
  }
}
DispathQueue.global().sync {
  for i in 0...10 {
    print("Voltei... \(i)")
  }
}
// DispathQueue.main.sync {} Executa na Main Thread
func fetchUserId(from server: String) async -> Int {
  if server == "primary" {
    return 97
  }
  return 501
}
func fetchUsername(from server: String) async -> String {
  let userId = await fetchUserId(from: server)
  if userId == 501 {
    return "João Souza"
  }
  return "Convidado"
}
func connectUser(to server: String) async {
  async let userId = fetchUserId(from: server)
  async let username = fetchUsername(from: server)
  let greeting = await "Olá \(username), user ID \(userId)"
  print(greeting)
}
Task {
  await connectUser(to: "primary")
}

let gallery = {
  "Summer Vaction": ["praia.png", "campo.png", "zoo.png", "shopping.png"]
  "Roud Trip": ["paris.png", "roma.png", "bahia.png", "madri.png"]
}
func listPhotos(inGalerry name: String) async -> [String] {
  // Simulação de Async
  do {
    try await Task.sleep(until: .now + .seconds(2), clock: .continuos)
  } catch {}
  return gallery[name] ?? []
}
Task {
  let photoNames = await listPhotos(inGallery: "Summer Vaction")
  let sortedNames = photoNames.sorted()
  let name = sortedNames[0]
}

func add(_ photo: String, toGallery: String) {
  print("Adicionando a foto\(photo) na galeria \(toGallery)")
} 
func remove(_ photo: String, fromGallery: String) {
  print("Remove a foto \(photo) na galeria \(fromGallery)")
}
Task {
  let firstPhoto = await listPhotos(inGallery: "Summer Vaction")[0]
  add(firstPhoto, toGallery: "Road Trip")
  // Neste ponto, a firstPhoto está temporariemente em ambas as galerias
  remove(firstPhoto, fromGallery: "Summer Vaction")
}
func move(_ photoNames: String, from source: String, to destination: String) {
  add(photoName, toGallery: destination)
  remove(photoName, fromGallery: source)
}
Task {
  let handle = FileHandle.standardInput
  for try await line in handle.bytes.lines {
    print(line)
  }
}
func downloadPhoto(named: String) async -> Data {
  // Simula Get API
  do {
    try await Task.sleep(until: .now + .seconds(2), clock: .continuous)
  } catch {}
  return Data()
}
Task {
  let photoNames = await listPhotos(inGallery: "Summer Vaction")

  async let firstPhoto = downloadPhoto(named: photoNames[0])
  async let secondPhoto = downloadPhoto(named: photoNames[2])
  async let thirdPhoto = downloadPhoto(named: photoNames[2])

  let photos = await [firstPhoto, secondPhoto, thirdPhoto]
}

Task {
  await withTaskGroup(of: Data.self) {
    taskGroup in
      let photoNames = await listPhotos(inGallery: "Summer Vaction")
      for name in photoNames {
        taskGroup.addTask { 
          await downloadPhoto(named: name)
        }
      }
  }
}

Task {
  let photo = await listPhotos(inGallery: "Summer Vaction")[0]
  let handle = Task {
    return await downloadPhoto(named: photo)
  }
  let result = await handle.value
}

actor TemperatureLogger {
  let label: String
  var measurements: [Int]
  private(set) var max: Int

  init(label: String, measurements: Int) {
    self.label = label
    self.measurements = [measurements]
    self.max = measurement
  }
}
Task {
  let logger = TemperatureLogger(label: "Ao ar livre", measurements: 25)
  print(await logger.max)
}
extension TemperatureLogger {
  func update(with measurement: Int) {
    measurements.append(measurement)
    if measurements > max {
      max = measurements
    }
  }
}

struc TemperatureReading: Sendable {
  var measurement: Int
}
extension TemperatureLogger {
  func addReading(from reading: TemparetureReading) {
    measurements.append(reading.measurements)
  }
}
Task {
  let logger = TemperatureLogger(label: "Chaleira", measurement: 85)
  let reading = TemperatureReading(measurement: 45)
  await logger.addReading(from: reading)
}

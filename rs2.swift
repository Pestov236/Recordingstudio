class RecordingStudio {  
    var title: String
    var schedule: String
    var address: String
    init(title: String, schedule: String, address: String) {
        self.title = title
        self.schedule = schedule
        self.address = address
    }
}

class MusicalInstruments {
    var name: String
    var inventoryNumber: Int
    var musicalInstruments = [MusicalInstruments(name: "Гитара", inventoryNumber: 200), MusicalInstruments(name: "Арфа", inventoryNumber: 201),
    MusicalInstruments(name: "Балалайка", inventoryNumber: 202), MusicalInstruments(name: "Аккардион", inventoryNumber: 203), 
    MusicalInstruments(name: "Рояль", inventoryNumber: 204), MusicalInstruments(name: "Пианино", inventoryNumber: 205)] 
    
    init(name: String, inventoryNumber: Int) {
        self.name = name
        self.inventoryNumber = inventoryNumber
        }
    func printDescription() {
         print("Название: \(name)  номер: \(inventoryNumber)")
    }
    
    func printMusicalInstruments() {
        print("Список музыкальных инструментов")
        for e in musicalInstruments {
            e.printDescription()
        }
    }
}

class Test {

func run() {
        let recordingStudio = RecordingStudio(title: "Студия 'All music'", schedule: "Часы работы: с 09-00 до 23-00", address: "Адрес: г.Москва, ул.Первомайская д.105")
        print(recordingStudio.title, recordingStudio.schedule, recordingStudio.address)
}
func testCorrectMusicalInstrumentsInit() {
        let musicalInstruments = [MusicalInstruments(name: "Гитара", inventoryNumber: 200), MusicalInstruments(name: "Арфа", inventoryNumber: 201),
    MusicalInstruments(name: "Балалайка", inventoryNumber: 202), MusicalInstruments(name: "Аккардион", inventoryNumber: 203), 
    MusicalInstruments(name: "Рояль", inventoryNumber: 204), MusicalInstruments(name: "Пианино", inventoryNumber: 205)] 
        for musicalInstruments in musicalInstruments {
            if nil != musicalInstruments.musicalInstruments.first(where: {$0.name == musicalInstruments.name && $0.inventoryNumber == musicalInstruments.inventoryNumber}) {
                print("Музыкальные инструменты \(musicalInstruments.name) учтены правильно")
            }
            else {
                print("Музыкальные инструменты \(musicalInstruments.name) учтены неправильно")
            }   
        }
    }
}
   
   


var test = Test()
test.run()
test.testCorrectMusicalInstrumentsInit()

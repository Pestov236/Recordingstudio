class RecordingStudio {  
    var title: String
    var schedule: String
    var address: String
    var studioWorker = [StudioWorker(familia: "Рыжиков", position: "Звукооператор", salary: 400000.00), 
    StudioWorker(familia: "Земцов", position: "Администратор", salary: 100000.00), 
    StudioWorker(familia: "Семчев", position: "Менеджер", salary: 200000.00)]
    var projects = [Project(name: "Запись трека", cost: 200000, time: "Два дня", count: 3),
    Project(name: "Запись видеоклипа", cost: 500000, time: "Семь дней", count: 2),
    Project(name: "Запись альбома", cost: 800000, time: "Две недели", count: 1),
    Project(name: "Запись рекламного ролика", cost: 300000, time: "Три дня", count: 2)]
    var equipment = [Equipment(name: "Компьютер", inventoryNumber: 100), Equipment(name: "Микрофон", inventoryNumber: 101),
    Equipment(name: "Софт", inventoryNumber: 102), Equipment(name: "Стойка для микрофона", inventoryNumber: 103), 
    Equipment(name: "Студийный монитор", inventoryNumber: 104), Equipment(name: "Микшерский пульт ", inventoryNumber: 105), 
    Equipment(name: "Магнитофон", inventoryNumber: 106), Equipment(name: "Наушники", inventoryNumber: 107)]
    init(title: String, schedule: String, address: String) {
        self.title = title
        self.schedule = schedule
        self.address = address
    }
    
    func printProjects() {
        print("Список проектов")
        for p in projects {
            p.printDescription()
        }
    }
    
    func add(projects: Project) {
        self.projects.append(projects)
    }
 
    func printEquipment() {
        print("Список оборудования")
        for e in equipment {
            e.printDescription()
        }
    }
    
    func add(equipment: Equipment) {
        self.equipment.append(equipment)
    }
    
    func printStudioWorker() {
        print("Список работников студии")
        for w in studioWorker {
            w.printDescription()
        }
    } 
    func add(studioWorker: StudioWorker) {
        self.studioWorker.append(studioWorker)
    }
}

class Performer {
    var familia: String
    var phone: Int
    var passportData: String
    init(familia: String, phone: Int, passportData: String) {
        self.familia = familia
        self.phone = phone
        self.passportData = passportData
    }
    
    func printDescription() {
         print("Фамилия: \(familia)  телефон: \(phone) паспортные данные: \(passportData)")
    }   
    
}    

 
class StudioWorker {
    var familia: String
    var position: String
    var salary: Double
    var performers = [Performer(familia: "Иванов", phone: 753159456, passportData: "173965"), 
    Performer(familia: "Лещенко", phone: 123789456, passportData: "412587"), 
    Performer(familia: "Козлова", phone: 756378912, passportData: "951753"), 
    Performer(familia: "Бухвостов", phone: 741963852, passportData: "665020")]
    init(familia: String, position: String, salary: Double) {
        self.familia = familia
        self.position = position
        self.salary = salary
        }
    
    func printDescription() {
         print("Фамилия: \(familia)  должность: \(position) зарплата: \(salary)")
    }
    func printPerformers() {
        print("Список исполнителей")
        for f in performers {
            f.printDescription()
        }
    }
    func add(performers: Performer) {
        self.performers.append(performers)
    }
}

class Equipment {
    var name: String
    var inventoryNumber: Int
    init(name: String, inventoryNumber: Int) {
        self.name = name
        self.inventoryNumber = inventoryNumber
        }
    func printDescription() {
         print("Название: \(name)  номер: \(inventoryNumber)")
    }
}


class Schedule {
    var date: String
    var time: String
    init(date: String, time: String) {
        self.date = date
        self.time = time
    }
    func printDescription() {
         print("Дата: \(date)  время: \(time)")
    }
}

class Project {
    var name: String
    var cost: Int
    var time: String
    var count: Int
    var schedule = [Schedule(date: "19.03.2022", time: "C 08-00 до 14-00"), Schedule(date: "19.03.2022", time: "С 14-00 до 20-00"), 
    Schedule(date: "20.03.2022", time: "C 08-00 до 20-00"), Schedule(date: "21.03.2022", time: "С 08-00 до 20-00"), 
    Schedule(date: "22.03.2022", time: "С 08-00 до 13-00"), Schedule(date: "22.03.2022", time: "С 13-00 до 19-00"),
    Schedule(date: "23.03.2022", time: "С 09-00 до 15-00"), Schedule(date: "23.03.2022", time: "С 13-00 до 18-00")]
    init(name: String, cost: Int, time: String, count: Int) {
        self.name = name
        self.cost = cost
        self.time = time
        self.count = count
        
    }
    func printDescription() {
         print("Название проекта: \(name)  стоимость: \(cost) время исполнения: \(time) количество \(count) ")
    }
    func printSchedule() {
        print("График пользования студией")
        for s in schedule {
            s.printDescription()
        }
    }
    func add(schedule: Schedule) {
        self.schedule.append(schedule)
    }
}

        

class Test {
    func run() {
        let recordingStudio = RecordingStudio(title: "Студия 'All music'", schedule: "Часы работы: с 09-00 до 23-00", address: "Адрес: г.Москва, ул.Первомайская д.105")
        print(recordingStudio.title, recordingStudio.schedule, recordingStudio.address)
        
        let studioWorker = StudioWorker(familia: "Петров", position: "Звукооператор", salary: 200000.00 )
        studioWorker.printPerformers()
        recordingStudio.add(studioWorker: studioWorker)
        recordingStudio.printStudioWorker()
        
        let performer = Performer(familia: "Пугачёв", phone: 43521890, passportData: "456123")
        studioWorker.add(performers: performer)
        studioWorker.printPerformers()
        
        recordingStudio.printProjects()
        let project = Project(name: "Запись трэка", cost: 300000, time: "Два часа", count: 1)
        recordingStudio.add(projects: project)
        recordingStudio.printProjects()
        
        recordingStudio.printEquipment()
        let equipment = Equipment(name: "Микрофон", inventoryNumber: 120)
        recordingStudio.add(equipment: equipment) 
        recordingStudio.printEquipment()
        recordingStudio.printStudioWorker()
        
        project.printSchedule()
        let schedule = Schedule(date: "24.03.2022", time: "С 10-00 до 12-00")
        project.add(schedule: schedule)
        project.printSchedule()
        
        
    }
    
    func testCorrectPerformerInit() {
        let studioWorker = StudioWorker(familia: "Петров", position: "Звукооператор", salary: 200000.00)
        let performers = [Performer(familia: "Иванов", phone: 753159456, passportData: "173965"), Performer(familia: "Лещенко", phone: 123789456, passportData: "412587"), 
            Performer(familia: "Козлова", phone: 756378912, passportData: "951753"), Performer(familia: "Бухвостов", phone: 741963852, passportData: "665020")]
        for performer in performers {
            if nil != studioWorker.performers.first(where: {$0.familia == performer.familia && $0.phone == performer.phone && $0.passportData == performer.passportData}) {
                print("Исполнитель \(performer.familia) создан правильно") 
            }
            else {
                print("Исполнитель \(performer.familia) создан неправильно")
            }
        }
    } 
    
    func testCorrectEquipmentInit() {
        let recordingStudio = RecordingStudio(title: "Студия 'All music'", schedule: "Часы работы: с 9-00 до 23-00", address: "Адрес: г.Москва, ул.Первомайская д.105")
        let equipment = [Equipment(name: "Компьютер", inventoryNumber: 100), Equipment(name: "Микрофон", inventoryNumber: 101), Equipment(name: "Софт", inventoryNumber: 102),
        Equipment(name: "Стойка для микрофона", inventoryNumber: 103), Equipment(name: "Студийный монитор", inventoryNumber: 104), Equipment(name: "Микшерский пульт ", inventoryNumber: 105), 
        Equipment(name: "Магнитофон", inventoryNumber: 106), Equipment(name: "Наушники", inventoryNumber: 107)]
        for equipment in equipment {
            if nil != recordingStudio.equipment.first(where: {$0.name == equipment.name && $0.inventoryNumber == equipment.inventoryNumber}) {
                print("Оборудование \(equipment.name) учтено правильно")
            }
            else {
                print("Оборудование \(equipment.name) учтено неправильно")
            }   
        }
   }
   
   
   func testCorrectStudioworker() {
        let recordingStudio = RecordingStudio(title: "Студия 'All music'", schedule: "Часы работы: с 9-00 до 23-00", address: "Адрес: г.Москва, ул.Первомайская д.105")
        let studioWorker = [StudioWorker(familia: "Рыжиков", position: "Звукооператор", salary: 400000.00), 
        StudioWorker(familia: "Земцов", position: "Администратор", salary: 100000.00), 
        StudioWorker(familia: "Семчев", position: "Менеджер", salary: 200000.00)]
        for studioWorker in studioWorker {
            if nil != recordingStudio.studioWorker.first(where: {$0.familia == studioWorker.familia && $0.position == studioWorker.position && $0.salary == studioWorker.salary}) {
                print("Работник студии \(studioWorker.familia) создан правильно")
            }
            else {
                print("Работник студии \(studioWorker.familia) создан неправильно")
            }    
        }
   }
   
   func testCorrectProject() {
        var recordingStudio = RecordingStudio(title: "Студия 'All music'", schedule: "Часы работы: с 9-00 до 23-00", address: "Адрес: г.Москва, ул.Первомайская д.105")
        let projects =  [Project(name: "Запись трека", cost: 200000, time: "Два дня", count: 3),
        Project(name: "Запись видеоклипа", cost: 500000, time: "Семь дней", count: 2),
        Project(name: "Запись альбома", cost: 800000, time: "Две недели", count: 1),
        Project(name: "Запись рекламного ролика", cost: 300000, time: "Три дня", count: 2)]
        for project in projects {
            if nil != recordingStudio.projects.first(where: {$0.name == project.name && $0.cost == project.cost && $0.time == project.time && $0.count == project.count}) {
                print("Проект \(project.name) учтён правильно")
            }
            else {
                print("Проект \(project.name) учтён неправильно")
            }    
        }
   }
   
   func testCorrectschedule() {
        let project = Project(name: "Запись трэка", cost: 300000, time: "Два часа", count: 1)
        let schedule = [Schedule(date: "19.03.2022", time: "C 08-00 до 14-00"), Schedule(date: "19.03.2022", time: "С 14-00 до 20-00"), Schedule(date: "20.03.2022", time: "C 08-00 до 20-00"),
        Schedule(date: "21.03.2022", time: "С 08-00 до 20-00"), Schedule(date: "22.03.2022", time: "С 08-00 до 13-00"), Schedule(date: "22.03.2022", time: "С 13-00 до 19-00"), 
        Schedule(date: "23.03.2022", time: "С 09-00 до 15-00"), Schedule(date: "23.03.2022", time: "С 13-00 до 18-00")]
        for schedule in schedule {
            if nil != project.schedule.first(where: {$0.date == schedule.date && $0.time == schedule.time }) {
                print("График \(schedule.date) учтён правильно") 
            }
            else {
                print("График \(schedule.date) учтён неправильно")
            }
        }
    } 
   
}

var test = Test()
test.run()
test.testCorrectPerformerInit()
test.testCorrectEquipmentInit()
test.testCorrectStudioworker()
test.testCorrectProject()
test.testCorrectschedule()

typealias Student = (name: String, age: Int, grades: [String: Double], optionalSubjects: Set<String>)
let students: [Student] = [("Misha", 19, ["Math": 8, "Physics": 6, "English": 4], ["Sports"]), ("Alice", 20, ["Math": 10, "English": 9, "History": 8], []), ("Max", 18, ["Physics": 9, "Cemistry": 7, "English": 6], ["Music", "Biology"]), ("Masha", 19, ["Math": 4, "Physics": 7, "English": 4], ["Art", "Musics"]), ("Alex", 21, ["Math": 7, "English":7, "History": 6],["Sports","Art"])]
func calculateAverageGrade(student: Student) -> Double? {
    guard !student.grades.isEmpty else { return nil}
    return student.grades.values.reduce(0) { $0 + $1 } / Double(student.grades.count)
}
print("Средний балл всех студентов: ")
for student in students {
    if let average = calculateAverageGrade(student: student) {
        print("\(student.name): \(average)")
    }
}

func findStudentsByAge(students: [Student], age: Int) -> [Student] {
  return students.filter {$0.age == age}
}
print("поиск студентов по возрасту: ")
print(findStudentsByAge(students: students, age: 19))
print("____________________________")

func getTopStudents(students: [Student], top: Int) -> [(name: String, average: Double)] {
    var withGrades: [(name: String, average: Double)] = []
    for student in students {
        if let average = calculateAverageGrade(student: student) {
            withGrades.append((name: student.name, average: average))
        }
    }
    withGrades.sort { $0.average > $1.average }
    if top > students.count || top < 0 {
        print("incorrect number of students!")
        return []
    }
    return withGrades.prefix(top).map{ $0 } 
}
print("Топ студентов: ")
   print(getTopStudents(students: students, top: 2))
    
func getUniqueOptionalSubjects(students: [Student]) -> Set<String> {
    return Set(students.flatMap{ $0.optionalSubjects })
}
 print("Уникальные факультативы: ")
print("____________________________")
print(getUniqueOptionalSubjects(students: students))

func getStudentWithBiggestCountOfFaculty(students: [Student]) -> Student? {
    return students.sorted {$0.optionalSubjects.count > $1.optionalSubjects.count}.first
}
print("____________________________")
if let topStudent = getStudentWithBiggestCountOfFaculty(students: students) {
    print("Студент: \(topStudent.name)")
    print("Количество факультативов: \(topStudent.optionalSubjects.count)")
} else {
    print("Студент не найден")
}

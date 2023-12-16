import Foundation

struct WakingUpModel: Identifiable {
    let id: UUID
    let date: Date
    let title: String
    let duration: Int

    init?(date: String, title: String, duration: String) {
        if let obj = WakingUpModel.convertStringToDate(date) {
            self.date = obj
        } else {
            return nil
        }
        self.title = title
        self.duration = Int(duration) ?? 0
        self.id = UUID()
    }

    static private func convertStringToDate(_ dateString: String) -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy" // Set the input format

        if let date = dateFormatter.date(from: dateString) {
            return date
        } else {
            return nil // Invalid date string
        }
    }

    static func load() -> [WakingUpModel] {
        if let csvFilePath = Bundle.main.path(forResource: "wakingup", ofType: "csv") {
            if let arrayOfStrings = readCSVFileAndReturnArray(filePath: csvFilePath) {
                let array = arrayOfStrings.compactMap { WakingUpModel(date: $0[0], title: $0[1], duration: $0[2]) }
//                for rec in array {
//                    print(rec)
//                }
                return array
            } else {
                print("Failed to read CSV file.")
            }
        } else {
            print("CSV file not found.")
        }
        return []
    }
}

import Foundation

func readCSVFileAndReturnArray(filePath: String) -> [[String]]? {
    do {
        let csvString = try String(contentsOfFile: filePath, encoding: .utf8)
        let lines = csvString.components(separatedBy: CharacterSet.newlines)
        var arrayOfStrings: [[String]] = []

        for line in lines {
            let columns = line.components(separatedBy: ",")
            arrayOfStrings.append(columns)
        }

        return arrayOfStrings
    } catch {
        print("Error reading CSV file: \(error)")
        return nil
    }
}

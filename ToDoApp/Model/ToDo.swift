import Foundation

class ToDo : Codable {
    let title: String
    let isDone: Bool
    
    init(title: String, isDone: Bool) {
        self.title = title
        self.isDone = isDone
    }
}

import UIKit

class AddNewTodoViewController: UIViewController {
    
    @IBAction func OnAddNewToDoButtonClick() {
        
        var toDoArray = [ToDo]()

        if let jsonData = UserDefaults.standard.string(forKey: "todo items") {
            let decoder = JSONDecoder()
            do {
                toDoArray = try decoder.decode([ToDo].self, from: Data(jsonData.utf8))
            }
            catch {
                
            }
        }

        toDoArray.append(ToDo(title: ToDoTextField.text!, isDone: false))
         
        let jsonEncoder = JSONEncoder()
        let jsonData = try! jsonEncoder.encode(toDoArray)
        let jsonString = String(data: jsonData, encoding: .utf8)
            
        UserDefaults.standard.set(jsonString, forKey: "todo items")
        
        let alertController = UIAlertController(title: "Hooray", message: "Todo with text \(ToDoTextField.text!) was saved", preferredStyle: .alert)

        let OKAction = UIAlertAction(title: "OK", style: .default)
        alertController.addAction(OKAction)
        
        present(alertController, animated: true)
    }
    
    @IBOutlet weak var ToDoTextField: UITextField!
}

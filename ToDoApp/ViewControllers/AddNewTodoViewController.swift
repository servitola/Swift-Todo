import UIKit

class AddNewTodoViewController: UIViewController {
    
    @IBAction func OnAddNewToDoButtonClick() {

        let defaults = UserDefaults.standard
        defaults.set(ToDoTextField.text!, forKey: "todo items")
        
        let alertController = UIAlertController(title: "Hooray", message: "Todo with text \(ToDoTextField.text!) was saved", preferredStyle: .alert)

        let OKAction = UIAlertAction(title: "OK", style: .default)
        alertController.addAction(OKAction)
        
        present(alertController, animated: true)
    }
    
    @IBOutlet weak var ToDoTextField: UITextField!
}

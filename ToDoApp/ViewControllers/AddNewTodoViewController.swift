import UIKit

class AddNewTodoViewController: UIViewController {
    
    @IBAction func OnAddNewToDoButtonClick() {
        
        let alertController = UIAlertController(title: "Default Style", message: "A standard alert.", preferredStyle: .alert)

        let OKAction = UIAlertAction(title: "OK", style: .default)
        alertController.addAction(OKAction)
        
        present(alertController, animated: true)
    }
}

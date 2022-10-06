import UIKit

class ToDoListViewController: UIViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        ContentStackView.arrangedSubviews.forEach({ ContentStackView.removeArrangedSubview($0)})
        
        let defaults = UserDefaults.standard
        if let todoItems = defaults.string(forKey: "todo items") {
            let labelView = UILabel()
            labelView.text = todoItems
            labelView.backgroundColor = UIColor.red
            ContentStackView.addArrangedSubview(labelView)
        }
    }
    
    @IBOutlet weak var ContentStackView: UIStackView!
}

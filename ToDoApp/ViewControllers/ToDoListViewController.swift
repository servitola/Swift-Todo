import UIKit

class ToDoListViewController: UIViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        ContentStackView.arrangedSubviews.forEach({ ContentStackView.removeArrangedSubview($0)})
        
        let defaults = UserDefaults.standard
        
        if let jsonData = defaults.string(forKey: "todo items") {
            let decoder = JSONDecoder()
            do {
                let toDoArray = try decoder.decode([ToDo].self, from: Data(jsonData.utf8))
                
                toDoArray.forEach({
                    let labelView = UILabel()
                    labelView.text = $0.title
                    labelView.backgroundColor = UIColor.red
                    ContentStackView.addArrangedSubview(labelView)
                })
                
            }
            catch {
                
            }
        }
    }
    
    @IBOutlet weak var ContentStackView: UIStackView!
}

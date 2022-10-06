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
                    let toDoCard = ToDoCardView()
                    toDoCard.initView(toDo: $0)
                    
                    ContentStackView.addArrangedSubview(toDoCard)
                })
                
            }
            catch {
                
            }
        }
    }
    
    @IBOutlet weak var ContentStackView: UIStackView!
}

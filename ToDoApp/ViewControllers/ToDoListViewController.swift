import UIKit

class ToDoListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for _ in 1...50 {
            let labelView = UILabel()
            labelView.text = "Следующая вещь на моем пути"
            labelView.backgroundColor = UIColor.red
            ContentStackView.addArrangedSubview(labelView)
        }
    }
    
    @IBOutlet weak var ContentStackView: UIStackView!
}

import UIKit

class Tab2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.systemMint
        
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        
        let verticalStackView = UIStackView()
        verticalStackView.axis = .vertical
        verticalStackView.spacing = 10
        verticalStackView.translatesAutoresizingMaskIntoConstraints = false
        verticalStackView.alignment = .center
        
        view.addSubview(scrollView)
        scrollView.addSubview(verticalStackView)
        
        let addNewThingTodoTextField = UITextField()
        addNewThingTodoTextField.placeholder = "Введите новое дельце"
        addNewThingTodoTextField.backgroundColor = .systemBackground
        verticalStackView.addArrangedSubview(addNewThingTodoTextField)
        
        addNewThingTodoTextField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8).isActive = true
        addNewThingTodoTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        scrollView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true

        verticalStackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
        verticalStackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
        verticalStackView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        verticalStackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
        verticalStackView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
    }
}

import Foundation
import UIKit

class ToDoCardView : UIView
{
    var toDo: ToDo?
    let deleteButton = UIButton()
    let label = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func initView(toDo: ToDo)
    {
        label.text = toDo.title
        label.backgroundColor = UIColor.systemBackground
        
        deleteButton.backgroundColor = .green
        deleteButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        deleteButton.addTarget(self, action: #selector(onDeleteButtonClicked), for: .touchUpInside)
       
        if toDo.isDone {
            deleteButton.isHidden = true
        }
        
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.addArrangedSubview(label)
        stackView.addArrangedSubview(deleteButton)
        deleteButton.setImage(UIImage(systemName: "minus"), for: UIControl.State.normal)
        addSubview(stackView)
        
        stackView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        stackView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        stackView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        
        self.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    @objc func onDeleteButtonClicked() {
        
        self.toDo?.isDone = true
        self.deleteButton.isHidden = true
    }
}

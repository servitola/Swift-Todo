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
        label.layoutMargins = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        
        deleteButton.tintColor = .label
        deleteButton.setImage(UIImage(systemName: "trash"), for: UIControl.State.normal)
        deleteButton.widthAnchor.constraint(equalToConstant: 60).isActive = true
        deleteButton.addTarget(self, action: #selector(onDeleteButtonClicked), for: .touchUpInside)
        
        if toDo.isDone {
            deleteButton.isHidden = true
        }
        
        let stackView = UIStackView()
        stackView.spacing = 10
        stackView.backgroundColor = .systemMint
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.layoutMargins = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
        
        stackView.addArrangedSubview(label)
        stackView.addArrangedSubview(deleteButton)
        
        addSubview(stackView)
        
        stackView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 8).isActive = true
        stackView.topAnchor.constraint(equalTo: self.topAnchor, constant: 8).isActive = true
        stackView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -8).isActive = true
        stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 8).isActive = true
        
        self.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    @objc func onDeleteButtonClicked() {
        
        self.toDo?.isDone = true
        self.deleteButton.isHidden = true
    }
}

import Foundation
import UIKit

class ToDoCardView : UIView
{
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func initView(toDo: ToDo)
    {
        let label = UILabel()
        label.text = toDo.title
        label.backgroundColor = UIColor.systemBackground
        
        let button = UIButton()
        button.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        if toDo.isDone {
            button.isHidden = true
        }
        
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.addArrangedSubview(label)
        stackView.addArrangedSubview(button)
        button.setImage(UIImage(systemName: "minus"), for: UIControl.State.normal)
        addSubview(stackView)
        
        stackView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        stackView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        stackView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        
        self.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
}

import UIKit

class MainTabBarController: UITabBarController {
         
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let toDoListViewController = ToDoListViewController()
        toDoListViewController.tabBarItem = UITabBarItem(title: "Делать", image: UIImage(systemName: "house"), selectedImage: nil)
        
        let addNewToDoViewController = UIStoryboard(name: "AddNewTodoViewController", bundle: Bundle.main).instantiateInitialViewController()!
        addNewToDoViewController.tabBarItem = UITabBarItem(title: "Записать", image: UIImage(systemName: "plus"), selectedImage: nil)
        
        self.viewControllers = [toDoListViewController, addNewToDoViewController]
    }
}

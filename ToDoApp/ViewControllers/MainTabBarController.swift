import UIKit

class MainTabBarController: UITabBarController {
         
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tab1 = Tab1ViewController()
        tab1.tabBarItem = UITabBarItem(title: "Делать", image: UIImage(systemName: "house"), selectedImage: nil)
        
        let tab2 = Tab2ViewController()
        tab2.tabBarItem = UITabBarItem(title: "Записать", image: UIImage(systemName: "plus"), selectedImage: nil)
        
        self.viewControllers = [tab1, tab2]
    }
}

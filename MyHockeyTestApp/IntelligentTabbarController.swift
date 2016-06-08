
import UIKit
import HockeySDK


class IntelligentTabbarController:  UITabBarController, UITabBarControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
    }
    
    func tabBarController(tabBarController: UITabBarController, didSelectViewController viewController: UIViewController) {
        let metricsManager = BITHockeyManager.sharedHockeyManager().metricsManager
        
        if viewController is FirstViewController {
            metricsManager.trackEventWithName("FirstViewController-gotSelected")
        }
        else if viewController is SecondViewController {
            metricsManager.trackEventWithName("SecondViewController-gotSelected")
        }
    }

}


import UIKit
import HockeySDK

enum MyError: ErrorType {
    case ErrorOne
    case ErrorTwo (reason: String)
}

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let metricsManager = BITHockeyManager.sharedHockeyManager().metricsManager
        metricsManager.trackEventWithName("firstVCloaded")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func crashApp(sender: AnyObject) throws {
//        BITHockeyManager.sharedHockeyManager().crashManager.generateTestCrash()
        let number = "0"
        let result = 1 / Int(number)!
        print(result)
    }

}



import UIKit
import HockeySDK

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func feedbackPressed(sender: AnyObject) {
        BITHockeyManager.sharedHockeyManager().feedbackManager.showFeedbackComposeView()
    }

}


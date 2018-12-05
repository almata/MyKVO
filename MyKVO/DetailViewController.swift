import UIKit

class DetailViewController: UIViewController {

    var porra: Porra?

    @IBAction func increment() {
        porra?.amount += 5
    }
    
}

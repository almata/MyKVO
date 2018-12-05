import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    var porra = Porra()
    var observation: NSKeyValueObservation?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myLabel.text = "\(porra.amount)"
        
        observation = porra.observe(\.amount) { object, change in
            self.myLabel.text = "\(object.amount)"
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dvc = segue.destination as! DetailViewController
        dvc.porra = porra
    }

}



import UIKit

class SegmentedViewController: UIViewController {
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func selectSegment(_ sender: UISegmentedControl) {
        if segmentedControl.selectedSegmentIndex == 0 {
            self.view.backgroundColor = .yellow
            segmentedControl.backgroundColor = .systemPink
        }else{
            self.view.backgroundColor = .systemPink
            segmentedControl.backgroundColor = .yellow

        }
    }
}



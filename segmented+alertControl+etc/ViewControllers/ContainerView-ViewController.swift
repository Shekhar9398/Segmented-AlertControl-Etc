
import UIKit

class ContainerView_ViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .systemPink.withAlphaComponent(0.6)
        self.view.layer.masksToBounds = true
        self.view.layer.cornerRadius = 12
        
        datePicker.tintColor = .black
    }
  
}

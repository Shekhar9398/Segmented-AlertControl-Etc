import UIKit

class DatePickerViewController: UIViewController {

    
    @IBOutlet weak var datePickerContainer: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        datePickerContainer.clipsToBounds = true
    }

}

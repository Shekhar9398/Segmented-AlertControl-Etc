
import UIKit

class AlertViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //create an alert
    func showAlert(title: String, message : String){
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        //create ok and cancel actions
      let acceptAction =  UIAlertAction(title: "ok", style: .default)
      let dismissAction = UIAlertAction(title: "Cancel", style: .destructive)
        
        //add actions to alertController
        alertController.addAction(acceptAction)
        alertController.addAction(dismissAction)
        
        //present alert
        self.present(alertController, animated: true, completion: nil)
    }
    
    //trigger alert(on) with a button
    @IBAction func alertButton(_ sender: UIButton) {
        showAlert(title: "Alert", message: "This is a demo alert")
    }
    
}

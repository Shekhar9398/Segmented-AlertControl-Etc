
import UIKit

class ProgressViewController: UIViewController {
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        progressBar.progress = 0.0
        progressBar.tintColor = .red

        showProgress()
    }
    
    func showProgress(){
        UIView.animate(withDuration: 4){
            self.progressBar.setProgress(0.5, animated: true)
        }
    }
    
}

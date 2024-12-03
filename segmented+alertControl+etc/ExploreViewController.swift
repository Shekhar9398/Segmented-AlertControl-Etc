
import UIKit

class ExploreViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var controlsTableView: UITableView!
    
    var controlNames = ["Alert Control", "Segmented Control", "Date Picker", "Progress View", "Slider"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        controlsTableView.delegate = self
        controlsTableView.dataSource = self
        
        self.title = "UIKit Controls"
        
        // Customize the font and color of the title
            let textAttributes = [
                NSAttributedString.Key.font: UIFont(name: "futura-Bold", size: 24)!,
                NSAttributedString.Key.foregroundColor: UIColor.black
            ]
            navigationController?.navigationBar.titleTextAttributes = textAttributes
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return controlNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = controlsTableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) 
        
        cell.textLabel?.text = controlNames[indexPath.row]
        cell.textLabel?.font = UIFont(name: "futura", size: 22)
        
        if indexPath.row % 2 == 0 {
            cell.imageView?.image = UIImage(systemName: "circle")
            cell.imageView?.tintColor = .blue
            cell.textLabel?.textColor = .blue
        }else{
            cell.imageView?.image = UIImage(systemName: "circle")
            cell.imageView?.tintColor = .red
            cell.textLabel?.textColor = .red
        }
 
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let row = controlNames[indexPath.row]
        var viewController : UIViewController?
        
        switch row {
        case "Alert Control":
            viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "AlertViewController")
            
        case "Segmented Control":
            viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SegmentedViewController")
            
        case "Progress View":
            viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ProgressViewController")
            
        case "Slider":
            viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SliderViewController")
            
        case "Date Picker":
            viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DatePickerViewController")
        default :
            break
        }
        
        navigationController?.pushViewController(viewController!, animated: true)
        
    }
}

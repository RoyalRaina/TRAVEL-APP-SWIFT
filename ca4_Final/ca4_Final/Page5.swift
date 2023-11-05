var rooms = "1"
var floors = "No preference"
var checkin = ""
var checkout=""
import UIKit

class Page5: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        if(dark == "yes")
        {
            self.overrideUserInterfaceStyle = .dark
        }
        else
        {
            self.overrideUserInterfaceStyle = .light
        }
        let backgroundImage = UIImage(named: "pg1bg")
               view.backgroundColor = UIColor(patternImage: backgroundImage!)
        hotels.text = "Hotel Selected \(shotel)"
        l.image = UIImage(named: "logo")
    }
    
    @IBOutlet weak var hotels: UILabel!
    
    @IBOutlet weak var roomsno: UILabel!
    @IBOutlet weak var roomo: UISlider!
    @IBAction func roomsA(_ sender: Any) {
        roomsno.text = String(Int(roomo.value))
        rooms = String(Int(roomo.value))
        
    }
    @IBOutlet weak var l: UIImageView!
    
    
    @IBOutlet weak var floor: UITextField!
    
    
    
    @IBOutlet weak var checki: UIDatePicker!
    
    
    @IBOutlet weak var checko: UIDatePicker!
    
    
    
    
    @IBAction func next(_ sender: Any) {
        if(floor.text != "")
        {
            floors = floor.text!
        }
        var date1 = checki.date
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        checkin = dateFormatter.string(from: date1)
        
        var date2 = checko.date
        let dateFormatter1 = DateFormatter()
        dateFormatter1.dateStyle = .short
        
        checkout = dateFormatter1.string(from: date2)
        
        let handler: (UIAlertAction) -> Void = { action in
                self.performSegue(withIdentifier: "s5", sender: self)
            }
        var alert1 = UIAlertController(title: "Confirmation", message: "Your Selected Preference \n No of rooms : \(rooms)\n Check In \(checkin)\n Check Out : \(date2)\n floor preference \(floors)", preferredStyle: .alert)
        alert1.addAction(UIAlertAction(title: "Ok", style: .default, handler: handler))
        alert1.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        self.present(alert1,animated: true,completion: nil)
    }
}

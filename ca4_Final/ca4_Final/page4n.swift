
import UIKit

var shotel=""
var sfood="Inclusive"
var vip = "No"
var segmentedControl = UISegmentedControl()
class page4n: UIViewController {

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
        logon.image = UIImage(named: "logo")
    }
    @IBOutlet weak var hotelanim: UIImageView!
    
    @IBAction func hotelA(_ sender: Any) {
        var a = hotelo.selectedSegmentIndex
        shotel = hotelo.titleForSegment(at: a)!
        if(hotelo.selectedSegmentIndex == 0)
        {
            let hotel: [UIImage] = [
                       UIImage(named: "5star1")!,
                       UIImage(named: "5star2")!,
                       UIImage(named: "5star3")!
                   ]
            hotelanim.animationImages = hotel
            hotelanim.animationDuration = 5
            hotelanim.startAnimating()
        }
        else if(hotelo.selectedSegmentIndex == 1)
        {
            let hotel: [UIImage] = [
                       UIImage(named: "3star1")!,
                       UIImage(named: "3star2")!,
                       UIImage(named: "3star3")!
                   ]
            hotelanim.animationImages = hotel
            hotelanim.animationDuration = 5
            hotelanim.startAnimating()
        }
        else
        {
            let hotel: [UIImage] = [
                       UIImage(named: "reg1")!,
                       UIImage(named: "reg2")!,
                       UIImage(named: "reg3")!
                   ]
            hotelanim.animationImages = hotel
            hotelanim.animationDuration = 5
            hotelanim.startAnimating()
        }
    }

    @IBOutlet weak var hotelo: UISegmentedControl!
    @IBOutlet weak var logon: UIImageView!
    
    @IBOutlet weak var veg: UISegmentedControl!
    @IBOutlet weak var foodo: UISegmentedControl!
    @IBAction func foodA(_ sender: Any) {
        var a = foodo.selectedSegmentIndex
        sfood = foodo.titleForSegment(at: a)!
        if(a==1)
        {
            veg.isEnabled = false
        }
        else
        {
            veg.isEnabled = true
        }
        
    }
    
    @IBOutlet weak var vipO: UISegmentedControl!
    
    @IBAction func VIPA(_ sender: UISegmentedControl) {
        var a = vipO.selectedSegmentIndex
        vip = vipO.titleForSegment(at: a)!
    }
    @IBAction func next(_ sender: Any) {
        if(shotel == "" )
        {
            var alert1 = UIAlertController(title: "Error", message: "Please Select Hotel", preferredStyle: .alert)
            alert1.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert1,animated: true,completion: nil)
        }
        else
        {
            
            let handler: (UIAlertAction) -> Void = { action in
                    self.performSegue(withIdentifier: "s4", sender: self)
                }
            var alert1 = UIAlertController(title: "Confirmation", message: "Your Selected Preference \n Type of Hotel : \(shotel)\n Vip access: \(vip)\n Food : \(sfood)", preferredStyle: .alert)
            alert1.addAction(UIAlertAction(title: "Ok", style: .default, handler: handler))
            alert1.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            self.present(alert1,animated: true,completion: nil)
        }
    }
    
}

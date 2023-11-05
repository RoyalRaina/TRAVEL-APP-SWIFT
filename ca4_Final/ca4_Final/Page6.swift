
import UIKit
var cost = 0
class Page6: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        if(selection == "Dalhousie")
        {
            cost += 4000
        }
        else if(selection == "dharamshala")
        {
            cost += 3000
        }
        else if(selection == "Manali")
        {
            cost += 5000
        }
        else
        {
            cost += 6000
        }
        if(dark == "yes")
        {
            self.overrideUserInterfaceStyle = .dark
        }
        else
        {
            self.overrideUserInterfaceStyle = .light
        }
        if(Int(noofpassenger)! <= 5 )
        {
            cost += 1500
        }
        else
        {
            cost += 2500
        }
        if(roofrail == "Yes")
        {
            cost += 500
        }
        if(sfood == "Inclusive")
        {
            cost += 2000
        }
        if(vip == "Yes")
        {
            cost += 100
        }
        if(Int(rooms)! == 2)
        {
         cost += 4000
        }
        else if(Int(rooms)! == 3)
        {
            cost += 6000
        }
        else
        {
            cost += 2000
        }
        if(shotel == "5 star")
        {
            cost += 9000
        }
        else if(shotel == "3 star")
        {
            cost += 6000
        }
        else
        {
            cost += 4000
        }
            
        cost += 5000
        let a = String(cost)
        Cost.text = "Price = \(a)"
        tick.image = UIImage(named: "ticket")
        name.text = "Royal"
        noofpass.text = noofpassenger
        date.text = checkin
        time.text = checkin
        breakfast.text = sfood
        destination.text = selection
        let backgroundImage = UIImage(named: "pg1bg")
               view.backgroundColor = UIColor(patternImage: backgroundImage!)
        log.image = UIImage(named: "logo")
    }

    @IBOutlet weak var tick: UIImageView!
    
    @IBOutlet weak var Cost: UILabel!
    @IBOutlet weak var log: UIImageView!
    @IBOutlet weak var noofpass: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var date: UILabel!
    
    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var breakfast: UILabel!
    @IBOutlet weak var destination: UILabel!
}

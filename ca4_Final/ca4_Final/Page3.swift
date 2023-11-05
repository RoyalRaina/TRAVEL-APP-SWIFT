//
//  Page3.swift
//  ca4_Final
//
//  Created by Gaurav Yadav on 04/11/23.
//

import UIKit
var noofpassenger = ""
var selectedcar = ""
var roofrail = "Yes"

class Page3: UIViewController {

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
        SegsCar.isEnabled = false
        if(selection == "Dalhousie")
        {
            if let backgroundImage = UIImage(named: "dal") {
                let imageView = UIImageView(frame: UIScreen.main.bounds)
                imageView.contentMode = .scaleAspectFill
                imageView.clipsToBounds = true
                imageView.alpha = 0.5
                imageView.image = backgroundImage
                imageView.center = view.center
                view.addSubview(imageView)
                view.sendSubviewToBack(imageView)
            }


        }
        else if(selection == "Dharamshala")
        {
            if let backgroundImage = UIImage(named: "dharam") {
                let imageView = UIImageView(frame: UIScreen.main.bounds)
                imageView.contentMode = .scaleAspectFill
                imageView.clipsToBounds = true
                imageView.alpha = 0.5
                imageView.image = backgroundImage
                imageView.center = view.center
                view.addSubview(imageView)
                view.sendSubviewToBack(imageView)
            }

        }
        else if(selection == "Manali")
        {
            if let backgroundImage = UIImage(named: "man") {
                let imageView = UIImageView(frame: UIScreen.main.bounds)
                imageView.contentMode = .scaleAspectFill
                imageView.clipsToBounds = true
                imageView.alpha = 0.5
                imageView.image = backgroundImage
                imageView.center = view.center
                view.addSubview(imageView)
                view.sendSubviewToBack(imageView)
            }

        }
        else
        {
            if let backgroundImage = UIImage(named: "shim") {
                let imageView = UIImageView(frame: UIScreen.main.bounds)
                imageView.contentMode = .scaleAspectFill
                imageView.clipsToBounds = true
                imageView.alpha = 0.5
                imageView.image = backgroundImage
                imageView.center = view.center
                view.addSubview(imageView)
                view.sendSubviewToBack(imageView)
            }

        }

        logo.image = UIImage(named: "logo")
        
    }
    

    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var select: UILabel!
 
    @IBOutlet weak var carscount: UILabel!
    @IBOutlet weak var SegsCar: UISegmentedControl!
    @IBOutlet weak var cars: UIImageView!
    @IBOutlet weak var passengerO: UISlider!
    @IBAction func passengerA(_ sender: Any) {
        SegsCar.isEnabled = true
        carscount.text = String(Int(passengerO.value))
        noofpassenger = carscount.text!
        if(Int(passengerO.value) <= 5)
        {
            
            let car: [UIImage] = [
                       UIImage(named: "5swift")!,
                       UIImage(named: "5focus")!,
                       UIImage(named: "5bmw")!,
                       UIImage(named: "5audi")!
                   ]
            cars.animationImages = car
            cars.animationDuration = 5
            cars.startAnimating()
            SegsCar.setTitle("Swift", forSegmentAt: 0)
            SegsCar.setTitle("Focus", forSegmentAt: 1)
            SegsCar.setTitle("Audi", forSegmentAt: 2)
            SegsCar.setTitle("Bmw", forSegmentAt: 3)
                                 
        }
        else if(Int(passengerO.value) > 5 && Int(passengerO.value) < 8)
        {
            let car: [UIImage] = [
                       UIImage(named: "7thar")!,
                       UIImage(named: "7inova")!,
                       UIImage(named: "7bolero")!,
                       UIImage(named: "bolero")!
                   ]
            cars.animationImages = car
            cars.animationDuration = 5
            cars.startAnimating()
            SegsCar.setTitle("Inova", forSegmentAt: 0)
            SegsCar.setTitle("Thar", forSegmentAt: 1)
            SegsCar.setTitle("Bolero", forSegmentAt: 2)
            SegsCar.setTitle("Scorpio", forSegmentAt: 3)
                                 
        }
  
    }
    @IBOutlet weak var CarO: UISegmentedControl!
    
    @IBAction func carsA(_ sender: Any) {
        var a = CarO.selectedSegmentIndex
        selectedcar = CarO.titleForSegment(at: a)!
        
    }
    
    @IBOutlet weak var RofRailO: UISegmentedControl!
    @IBAction func RoofRailA(_ sender: UISegmentedControl) {
        var a = RofRailO.selectedSegmentIndex
        roofrail = RofRailO.titleForSegment(at: a)!
        
    }
    
    @IBAction func next(_ sender: Any) {
        let handler: (UIAlertAction) -> Void = { action in
                self.performSegue(withIdentifier: "s3", sender: self)
            }
        if(selectedcar != "" && noofpassenger != "" && roofrail != ""){
            var alert1 = UIAlertController(title: "Confirmation", message: "Your Selected Preference \n No of Passeenger : \(noofpassenger)\n Car: \(selectedcar)\n Roof Rail: \(roofrail)", preferredStyle: .alert)
            alert1.addAction(UIAlertAction(title: "Ok", style: .default, handler: handler))
            alert1.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            self.present(alert1,animated: true,completion: nil)
        }
        else
        {
            var alert1 = UIAlertController(title: "Error", message: "Fill All Details", preferredStyle: .alert)
            alert1.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
            self.present(alert1,animated: true,completion: nil)
        }
    }
    
    
}

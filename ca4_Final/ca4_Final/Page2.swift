//
//  Page2.swift
//  ca4_Final
//
//  Created by Gaurav Yadav on 04/11/23.
//
var selection = ""
import UIKit

class Page2: UIViewController {

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
        username.text = "Welcome \(un)"
        logo.image = UIImage(named: "logo")
        let backgroundImage = UIImage(named: "pg1bg")
               view.backgroundColor = UIColor(patternImage: backgroundImage!)
       dalhousie.isUserInteractionEnabled = true
        manali.isUserInteractionEnabled = true
        shimla.isUserInteractionEnabled = true
        dharamshala.isUserInteractionEnabled = true
        let tapGesture1 = UITapGestureRecognizer(target: self, action: #selector(imageTapped1))
        let tapGesture2 = UITapGestureRecognizer(target: self, action: #selector(imageTapped2))
        let tapGesture3 = UITapGestureRecognizer(target: self, action: #selector(imageTapped3))
        let tapGesture4 = UITapGestureRecognizer(target: self, action: #selector(imageTapped4))
        dalhousie.addGestureRecognizer(tapGesture1)
        dharamshala.addGestureRecognizer(tapGesture2)
       manali.addGestureRecognizer(tapGesture3)
      shimla.addGestureRecognizer(tapGesture4)
        dalhousie.image = UIImage(named: "dalhousie")
        dharamshala.image = UIImage(named: "dharmshala")
        manali.image = UIImage(named: "manali")
        shimla.image = UIImage(named:
        "shimla")
    }
    
    @objc func imageTapped1(sender: UITapGestureRecognizer) {
        
        selection = "Dalhousie"
        
        
        if let imageView = sender.view as? UIImageView {
                    UIView.animate(withDuration: 0.2, animations: {
                        imageView.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
                    }, completion: { _ in
                        UIView.animate(withDuration: 0.2) {
                            imageView.transform = CGAffineTransform.identity
                        }
                    })
                }
        performSegue(withIdentifier: "s2", sender: self)
        }
    @objc func imageTapped2(sender: UITapGestureRecognizer) {
        
        
        selection = "Dharamshala"
        
        if let imageView = sender.view as? UIImageView {
                    UIView.animate(withDuration: 0.2, animations: {
                        imageView.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
                    }, completion: { _ in
                        UIView.animate(withDuration: 0.2) {
                            imageView.transform = CGAffineTransform.identity
                        }
                    })
                }
        performSegue(withIdentifier: "s2", sender: self)
        }
    @objc func imageTapped3(sender: UITapGestureRecognizer){
        
        
        selection = "Manali"
        
        if let imageView = sender.view as? UIImageView {
                    UIView.animate(withDuration: 0.2, animations: {
                        imageView.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
                    }, completion: { _ in
                        UIView.animate(withDuration: 0.2) {
                            imageView.transform = CGAffineTransform.identity
                        }
                    })
                }
        performSegue(withIdentifier: "s2", sender: self)
        }
    @objc func imageTapped4(sender: UITapGestureRecognizer) {
        
        
        selection = "Shimla"
        
        if let imageView = sender.view as? UIImageView {
                    UIView.animate(withDuration: 0.2, animations: {
                        imageView.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
                    }, completion: { _ in
                        UIView.animate(withDuration: 0.2) {
                            imageView.transform = CGAffineTransform.identity
                        }
                    })
                }
        performSegue(withIdentifier: "s2", sender: self)
        }

    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var username: UILabel!

    @IBOutlet weak var shimla: UIImageView!
    @IBOutlet weak var manali: UIImageView!
    @IBOutlet weak var dharamshala: UIImageView!
    @IBOutlet weak var dalhousie: UIImageView!
    
}

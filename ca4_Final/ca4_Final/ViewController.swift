
import UIKit
import AVKit
import AVFoundation
var un = ""
var dark = "no"
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let player = AVPlayer(url: Bundle.main.url(forResource: "bg1", withExtension: "mp4")!); let playerLayer = AVPlayerLayer(player: player); playerLayer.frame = view.bounds; playerLayer.videoGravity = AVLayerVideoGravity.resizeAspectFill; view.layer.addSublayer(playerLayer); view.bringSubviewToFront(login);
        view.bringSubviewToFront(uname);
        view.bringSubviewToFront(psswd);
        view.bringSubviewToFront(username);
        view.bringSubviewToFront(login);
        view.bringSubviewToFront(password);
        view.bringSubviewToFront(logo);
        view.bringSubviewToFront(darkO)
           player.play()
        psswd.isSecureTextEntry = true

        logo.image = UIImage(named: "logo")
    }
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var username: UILabel!
    @IBAction func login(_ sender: UIButton) {
        if(uname.text == "Royal" && psswd.text == "12345")
        {
            un = uname.text!
            performSegue(withIdentifier: "s1", sender: self)
        }
        else
        {
            let alert1 = UIAlertController(title: "Error", message: "Wrong Username or Password", preferredStyle: .alert)
            alert1.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
            self.present(alert1,animated: true,completion: nil)
        }
    }
    
    @IBOutlet weak var password: UILabel!
    @IBOutlet weak var uname: UITextField!
    @IBOutlet weak var psswd: UITextField!
    @IBOutlet weak var login: UIButton!
    
    @IBAction func darkA(_ sender: Any) {
        if(darkO.isOn)
        {
            dark = "yes"
            self.overrideUserInterfaceStyle = .dark
        }
        else
        {
            dark = "no"
            self.overrideUserInterfaceStyle = .light
        
        }
    }
    @IBOutlet weak var darkO: UISwitch!
}


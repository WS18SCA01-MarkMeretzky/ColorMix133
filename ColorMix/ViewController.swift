import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad();
        
        updateControls();
        updateColor();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var colorView: UIView!;
    
    @IBOutlet weak var redSwitch: UISwitch!;
    @IBOutlet weak var greenSwitch: UISwitch!;
    @IBOutlet weak var blueSwitch: UISwitch!;
    
    @IBOutlet weak var redSlider: UISlider!;
    @IBOutlet weak var greenSlider: UISlider!;
    @IBOutlet weak var blueSlider: UISlider!;
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        updateControls();
        updateColor();
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        updateColor();
    }
    
    func updateControls() {
        redSlider.isEnabled = redSwitch.isOn;
        greenSlider.isEnabled = greenSwitch.isOn;
        blueSlider.isEnabled = blueSwitch.isOn;
    }
    
    func updateColor() {
        let   red: CGFloat = redSwitch.isOn   ? CGFloat(redSlider.value)   : 0;
        let green: CGFloat = greenSwitch.isOn ? CGFloat(greenSlider.value) : 0;
        let  blue: CGFloat = blueSwitch.isOn  ? CGFloat(blueSlider.value)  : 0;
        
        let color: UIColor = UIColor(red: red, green: green, blue: blue, alpha: 1);
        colorView.backgroundColor = color;
    }

}


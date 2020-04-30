import UIKit

class ViewController: UIViewController {

    // 購買上限 Label
    @IBOutlet weak var item1: UILabel!
    @IBOutlet weak var item2: UILabel!
    @IBOutlet weak var item3: UILabel!
    @IBOutlet weak var item4: UILabel!
    @IBOutlet weak var totalPrice: UILabel!
    
    // Stepper 按鈕
    @IBOutlet weak var stepper1: UIStepper!
    @IBOutlet weak var stepper2: UIStepper!
    @IBOutlet weak var stepper3: UIStepper!
    @IBOutlet weak var stepper4: UIStepper!
    
    // 購買上限提示 Label
    @IBOutlet weak var limit1: UILabel!
    @IBOutlet weak var limit2: UILabel!
    @IBOutlet weak var limit3: UILabel!
    @IBOutlet weak var limit4: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 預設總金額為0
        totalPrice.text = "總金額：0"
        
    }

    // 按下任何 stepper 後的動作
    @IBAction func increaseOrDecrease(_ sender: UIStepper) {
        
        // 將各個 stepper.value 轉為整數
        let stepper1ToInt = Int(stepper1.value)
        let stepper2ToInt = Int(stepper2.value)
        let stepper3ToInt = Int(stepper3.value)
        let stepper4ToInt = Int(stepper4.value)
        
        // 顯示各項購買數量
        item1.text = "\(stepper1ToInt)"
        item2.text = "\(stepper2ToInt)"
        item3.text = "\(stepper3ToInt)"
        item4.text = "\(stepper4ToInt)"
        
        // 計算總金額
        totalPrice.text = "總金額：\((stepper1ToInt * 7895) + (stepper2ToInt * 8995) + (stepper3ToInt * 6595) + (stepper4ToInt * 255))"
        
        // 是否達到購買上限
        if stepper1ToInt == 3 {
            limit1.isHidden = false
        } else {
            limit1.isHidden = true
        }
        
        if stepper2ToInt == 3 {
            limit2.isHidden = false
        } else {
            limit2.isHidden = true
        }
        
        if stepper3ToInt == 3 {
            limit3.isHidden = false
        } else {
            limit3.isHidden = true
        }
        
        if stepper4ToInt == 5 {
            limit4.isHidden = false
        } else {
            limit4.isHidden = true
        }
        
    }
    
}


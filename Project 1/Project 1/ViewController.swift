import UIKit

class ViewController: UIViewController {
	@IBOutlet weak var randomNumberLabel: UILabel!
	@IBOutlet weak var rangeLabel: UILabel!
	@IBOutlet weak var rangeSlider: UISlider!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		rangeSliderChanged()
		newRandomNumber()
	}
	
	@IBAction
	func rangeSliderChanged() {
		rangeLabel.text = "From 0 to \(rangeSlider.value)"
	}
	
	@IBAction
	func newRandomNumber() {
		randomNumberLabel.text = String(Float.random(in: 0...rangeSlider.value))
	}
}

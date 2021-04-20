import UIKit
import Cheers

class ViewController: UIViewController {

  let cheerView = CheerView()

  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = UIColor.white

//    cheerView.config.particle = .confetti(allowedShapes: Particle.ConfettiShape.all)
    cheerView.config.particle = .confetti(allowedShapes: [.rectangle, .curvedQuadrilateral])
    cheerView.config.baseVelocity = 100
    cheerView.config.birthRate = 6
    cheerView.config.alphaSpeed = -0.05
    view.addSubview(cheerView)
  }

  @IBAction func buttonTouched(_ sender: UIButton) {
    cheerView.start()

    DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
      self.cheerView.stop()
    }
  }

  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()

    cheerView.frame = view.bounds
  }
}


import UIKit

class CoverViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var coverImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        titleLabel.center.y -= view.bounds.height
        authorLabel.center.y += view.bounds.height
        
        UIView.animate(withDuration: 2, animations: { self.titleLabel.center.y += self.view.bounds.height })
        UIView.animate(withDuration: 2, delay: 1, options: [], animations: {
            self.authorLabel.center.y -= self.view.bounds.height
            }, completion: nil)
        UIView.animate(withDuration: 2, delay: 3, options: [], animations: {
            self.coverImage.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
            }, completion: nil)
        UIView.animate(withDuration: 2, delay: 4.0, options: [], animations: {
            self.coverImage.transform = CGAffineTransform(rotationAngle: CGFloat.pi * 2)
            }, completion: nil)        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

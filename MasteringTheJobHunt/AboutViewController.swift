import UIKit

class AboutViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var teacherLabel: UILabel!
    @IBOutlet weak var turnToTechLabel: UILabel!
    @IBOutlet weak var xoLabel: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.isHidden = true
        teacherLabel.isHidden = true
        turnToTechLabel.isHidden = true
        xoLabel.isHidden = true
        myImage.isHidden = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        titleLabel.center.x -= view.bounds.width
        teacherLabel.center.x -= view.bounds.width
        turnToTechLabel.center.x -= view.bounds.width
        xoLabel.center.x -= view.bounds.width
        myImage.center.x += view.bounds.width
        
        titleLabel.isHidden = false
        teacherLabel.isHidden = false
        turnToTechLabel.isHidden = false
        xoLabel.isHidden = false
        myImage.isHidden = false
        
        UIView.animate(withDuration: 2, delay: 0, options: [], animations: {
            self.titleLabel.center.x += self.view.bounds.width
            }, completion: nil)
        UIView.animate(withDuration: 2, delay: 0.5, options: [], animations: {
            self.myImage.center.x -= self.view.bounds.width
            }, completion: nil)
        UIView.animate(withDuration: 2, delay: 1, options: [], animations: {
            self.teacherLabel.center.x += self.view.bounds.width
            }, completion: nil)
        UIView.animate(withDuration: 2, delay: 1.5, options: [], animations: {
            self.turnToTechLabel.center.x += self.view.bounds.width
            }, completion: nil)
        UIView.animate(withDuration: 2, delay: 2, options: [], animations: {
            self.xoLabel.center.x += self.view.bounds.width
            }, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

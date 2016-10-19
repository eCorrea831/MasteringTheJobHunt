import UIKit

class ReachMeViewController: UIViewController {
    
    @IBOutlet weak var reachMeLabel: UILabel!
    
    @IBOutlet weak var twitterStackView: UIStackView!
    @IBOutlet weak var bloggerStackView: UIStackView!
    @IBOutlet weak var linkedInStackView: UIStackView!
    @IBOutlet weak var gmailStackView: UIStackView!
    
    @IBOutlet weak var twitterImage: UIImageView!
    @IBOutlet weak var bloggerImage: UIImageView!
    @IBOutlet weak var linkedInImage: UIImageView!
    @IBOutlet weak var gmailImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.reachMeLabel.isHidden = true
        self.twitterStackView.isHidden = true
        self.bloggerStackView.isHidden = true
        self.linkedInStackView.isHidden = true
        self.gmailStackView.isHidden = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        reachMeLabel.center.y -= view.bounds.height
        twitterStackView.center.y += view.bounds.height
        bloggerStackView.center.y += view.bounds.height
        linkedInStackView.center.y += view.bounds.height
        gmailStackView.center.y += view.bounds.height
        
        self.reachMeLabel.isHidden = false
        self.twitterStackView.isHidden = false
        self.bloggerStackView.isHidden = false
        self.linkedInStackView.isHidden = false
        self.gmailStackView.isHidden = false
        
        UIView.animate(withDuration: 2, delay: 0, options: [], animations: {
            self.reachMeLabel.center.y += self.view.bounds.height
            }, completion: nil)
        UIView.animate(withDuration: 2, delay: 1, options: [], animations: {
            self.twitterStackView.center.y -= self.view.bounds.height
            }, completion: nil)
        UIView.animate(withDuration: 2, delay: 1.5, options: [], animations: {
            self.bloggerStackView.center.y -= self.view.bounds.height
            }, completion: nil)
        UIView.animate(withDuration: 2, delay: 2, options: [], animations: {
            self.linkedInStackView.center.y -= self.view.bounds.height
            }, completion: nil)
        UIView.animate(withDuration: 2, delay: 2.5, options: [], animations: {
            self.gmailStackView.center.y -= self.view.bounds.height
            }, completion: nil)
        
        UIView.animate(withDuration: 1, delay: 2.5, options: [], animations: {
            self.twitterImage.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
            }, completion: nil)
        UIView.animate(withDuration: 1, delay: 3, options: [], animations: {
            self.twitterImage.transform = CGAffineTransform(rotationAngle: CGFloat.pi * 2)
            }, completion: nil)
        
        UIView.animate(withDuration: 1, delay: 3, options: [], animations: {
            self.bloggerImage.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
            }, completion: nil)
        UIView.animate(withDuration: 1, delay: 3.5, options: [], animations: {
            self.bloggerImage.transform = CGAffineTransform(rotationAngle: CGFloat.pi * 2)
            }, completion: nil)
        
        UIView.animate(withDuration: 1, delay: 3.5, options: [], animations: {
            self.linkedInImage.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
            }, completion: nil)
        UIView.animate(withDuration: 1, delay: 4, options: [], animations: {
            self.linkedInImage.transform = CGAffineTransform(rotationAngle: CGFloat.pi * 2)
            }, completion: nil)
        
        UIView.animate(withDuration: 1, delay: 4, options: [], animations: {
            self.gmailImage.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
            }, completion: nil)
        UIView.animate(withDuration: 1, delay: 4.5, options: [], animations: {
            self.gmailImage.transform = CGAffineTransform(rotationAngle: CGFloat.pi * 2)
            }, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

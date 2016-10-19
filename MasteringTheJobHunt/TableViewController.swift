import UIKit

class TableViewController: UITableViewController {

    let labelArray = ["Realistic expectations", "Fantastic brag documents", "Technical and/or personal blog", "Fairs & conferences" , "Networking", "The Dreaded Tech Interview"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Job Hunting Tools"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return labelArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel!.text = labelArray[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 { return 50 }
        return 0
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        
        let controllerArray = [
            storyBoard.instantiateViewController(withIdentifier: "realistic"),
            storyBoard.instantiateViewController(withIdentifier: "brag"),
            storyBoard.instantiateViewController(withIdentifier: "blogging"),
            storyBoard.instantiateViewController(withIdentifier: "fairs"),
            storyBoard.instantiateViewController(withIdentifier: "networking"),
            storyBoard.instantiateViewController(withIdentifier: "interview")
        ]
        let selectedViewController = controllerArray[indexPath.row]
        self.present(selectedViewController, animated: true, completion: nil)
    }
}

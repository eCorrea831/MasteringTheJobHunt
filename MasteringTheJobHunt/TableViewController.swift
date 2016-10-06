//
//  TableViewController.swift
//  MasteringTheJobHunt
//
//  Created by Erica Correa on 10/5/16.
//  Copyright © 2016 Erica Correa. All rights reserved.
//

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

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let realisticViewController = storyBoard.instantiateViewController(withIdentifier: "realistic")
        let bragViewController = storyBoard.instantiateViewController(withIdentifier: "brag")
        let bloggingViewController = storyBoard.instantiateViewController(withIdentifier: "blogging")
        let fairsViewController = storyBoard.instantiateViewController(withIdentifier: "fairs")
        let networkingViewController = storyBoard.instantiateViewController(withIdentifier: "networking")
        let interviewViewController = storyBoard.instantiateViewController(withIdentifier: "interview")
        
        let rowTitle:String = self.labelArray[indexPath.row];
        if rowTitle == self.labelArray[0] {
            self.present(realisticViewController, animated: true, completion: nil)
        } else if rowTitle == self.labelArray[1] {
            self.present(bragViewController, animated: true, completion: nil)
        } else if rowTitle == self.labelArray[2] {
            self.present(bloggingViewController, animated: true, completion: nil)
        } else if rowTitle == self.labelArray[3] {
            self.present(fairsViewController, animated: true, completion: nil)
        } else if rowTitle == self.labelArray[4] {
            self.present(networkingViewController, animated: true, completion: nil)
        } else {
            self.present(interviewViewController, animated: true, completion: nil)
        }
    }

}

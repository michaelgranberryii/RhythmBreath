//
//  SettingsViewController.swift
//  Custom Cell
//
//  Created by Michael Granberry II on 8/19/21.
//

import UIKit

class SettingsViewController: UITableViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Settings"

    }

}


//MARK: - Table View

extension SettingsViewController {
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "Settings"
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
}

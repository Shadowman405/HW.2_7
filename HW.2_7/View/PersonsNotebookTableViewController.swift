//
//  PersonsNotebookTableViewController.swift
//  HW.2_7
//
//  Created by Maxim Mitin on 27.07.21.
//

import UIKit

class PersonsNotebookTableViewController: UITableViewController {
    
    var persons: [Person]!

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let section = persons[section]
        let nameForSection = "\(section.name) \(section.lastName)"
        return nameForSection
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let sectionRow = persons[indexPath.section]
        
        if indexPath.row == 0 {
            var content = cell.defaultContentConfiguration()
            content.text = sectionRow.email
            cell.contentConfiguration = content
        } else if indexPath.row == 1{
            var content = cell.defaultContentConfiguration()
            content.text = sectionRow.phoneNumber
            cell.contentConfiguration = content
        }
        return cell
    }
}

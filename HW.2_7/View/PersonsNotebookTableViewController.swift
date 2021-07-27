//
//  PersonsNotebookTableViewController.swift
//  HW.2_7
//
//  Created by Maxim Mitin on 27.07.21.
//

import UIKit

class PersonsNotebookTableViewController: UITableViewController {
    
    var personsList = Person.getPerson()
    //var persons: [Person]!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        personsList.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let section = personsList[section]
        let nameForSection = "\(section.name) \(section.lastName)"
        return nameForSection
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let person = personsList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = person.email
        content.secondaryText = person.phoneNumber
        cell.contentConfiguration = content
        
        return cell
    }


}

//
//  PersonsListTableViewController.swift
//  HW.2_7
//
//  Created by Maxim Mitin on 27.07.21.
//

import UIKit

class PersonsListTableViewController: UITableViewController {
    
    var personsList: [Person]!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personsList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        let person = personsList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = "\(person.name) \(person.lastName)"
        cell.contentConfiguration = content

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let personInfoVC = segue.destination as? PersonInfoViewController else {return}
        guard let indexPath = tableView.indexPathForSelectedRow else {return}

        let person = personsList[indexPath.row]
        personInfoVC.person = person
    }
}

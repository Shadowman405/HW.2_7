//
//  TabBarViewController.swift
//  HW.2_7
//
//  Created by Maxim Mitin on 28.07.21.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    var persons = Person.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //casting PersonListVC
        let personListVC = self.viewControllers?.first as? PersonsListTableViewController
        personListVC?.personsList = persons
        //casting PersonNotebookVC
        let personsNoteVC = self.viewControllers?.last as? PersonsNotebookTableViewController
        personsNoteVC?.persons = persons
        
        //Func that change name for bar button items
        setBarBtnsNames()
    }
}

//MARK: - some extensions for class

extension TabBarViewController {
    private func setBarBtnsNames() {
        tabBar.items?[0].title = "Contacts"
        tabBar.items?[1].title = "Notebook"
    }
}

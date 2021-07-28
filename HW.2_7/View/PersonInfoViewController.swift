//
//  PersonInfoViewController.swift
//  HW.2_7
//
//  Created by Maxim Mitin on 27.07.21.
//

import UIKit

class PersonInfoViewController: UIViewController {
    @IBOutlet weak var personNameLbl: UILabel!
    @IBOutlet weak var personEmailLbl: UILabel!
    @IBOutlet weak var personPhoneLbl: UILabel!
    
    var person : Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        personNameLbl.text = "\(person.name) \(person.lastName)"
        personEmailLbl.text = person.email
        personPhoneLbl.text = person.phoneNumber
    }
}

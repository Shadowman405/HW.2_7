//
//  Person.swift
//  HW.2_7
//
//  Created by Maxim Mitin on 27.07.21.
//
import Foundation

struct Person {
    var name: String
    var lastName: String
    var email: String
    var phoneNumber: String
}

extension Person {
    static func getPerson() -> [Person] {
        [
            Person(name: DataManager.shared.names.randomElement()!,
                   lastName: DataManager.shared.lastNames.randomElement()!,
                   email: DataManager.shared.emails.randomElement()!,
                   phoneNumber: DataManager.shared.phones.randomElement()!),
            Person(name: DataManager.shared.names.randomElement()!,
                   lastName: DataManager.shared.lastNames.randomElement()!,
                   email: DataManager.shared.emails.randomElement()!,
                   phoneNumber: DataManager.shared.phones.randomElement()!),
            Person(name: DataManager.shared.names.randomElement()!,
                   lastName: DataManager.shared.lastNames.randomElement()!,
                   email: DataManager.shared.emails.randomElement()!,
                   phoneNumber: DataManager.shared.phones.randomElement()!),
            Person(name: DataManager.shared.names.randomElement()!,
                   lastName: DataManager.shared.lastNames.randomElement()!,
                   email: DataManager.shared.emails.randomElement()!,
                   phoneNumber: DataManager.shared.phones.randomElement()!)
        ]
    }
}

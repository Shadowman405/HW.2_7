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

class ArrayPersons {
    var name = ["Bob", "Greben", "Peps", "Boi"]
    var lastName = ["Bao" , "Frua", "Gachi" , "Muchi"]
    var email = ["lecock@france.fr", "pepa@yandex.ru", "bebra@gmail.com", "cacao@zh.tw"]
    var phone = ["23456222" , "666666", "11111111", "69696969"]
    
}



//extension Person {
//    static func getPerson() -> [Person] {
//        [
//            Person(name: "Bob", lastName: "Bebra", email: "bebra@gmail.com", phoneNumber: "88885553555"),
//            Person(name: "Zhao", lastName: "Bao", email: "cacao@zh.tw", phoneNumber: "24234235222"),
//            Person(name: "Vasya", lastName: "Pes", email: "pepa@yandex.ru", phoneNumber: "87952342342"),
//            Person(name: "Pier", lastName: "Frua", email: "lecock@france.fr", phoneNumber: "23456222")
//        ]
//    }
//}
private var pers = ArrayPersons()
extension Person {
    static func getPerson() -> [Person] {
        [
            Person(name: pers.name.randomElement()!,
                   lastName: pers.lastName.randomElement()!,
                   email: pers.email.randomElement()!,
                   phoneNumber: pers.phone.randomElement()!),
            Person(name: pers.name.randomElement()!,
                   lastName: pers.lastName.randomElement()!,
                   email: pers.email.randomElement()!,
                   phoneNumber: pers.phone.randomElement()!),
            Person(name: pers.name.randomElement()!,
                   lastName: pers.lastName.randomElement()!,
                   email: pers.email.randomElement()!,
                   phoneNumber: pers.phone.randomElement()!),
            Person(name: pers.name.randomElement()!,
                   lastName: pers.lastName.randomElement()!,
                   email: pers.email.randomElement()!,
                   phoneNumber: pers.phone.randomElement()!)
        ]
    }
}

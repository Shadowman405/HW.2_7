//
//  DataManager.swift
//  HW.2_7
//
//  Created by Maxim Mitin on 28.07.21.
//

import Foundation

class DataManager {
    static let shared = DataManager()
    
    private init() {}
        let names = ["Bob", "Greben",
                     "Peps", "Boi", "Mike",
                     "Geon", "Solmir", "Alkin"]
        
        let lastNames = ["Bao" , "Frua", "Gachi" ,
                         "Muchi", "Milos", "Sena" ,
                         "Calid", "Woz"]
        
        let phones = ["23456222" , "666666", "11111111",
                      "696969", "1231241", "224522255",
                      "99909999", "1010101"]
        
        let emails = ["lecock@france.fr", "pepa@yandex.ru",
                      "bebra@gmail.com", "cacao@zh.tw",
                      "ewwgwg@dvs.ru", "rect@dast.com",
                      "benPon@yoi.com", "trustno1@mail.ru"]
    
}

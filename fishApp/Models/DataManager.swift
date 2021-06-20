//
//  DataManager.swift
//  fishApp
//
//  Created by NIKOLAY OSIPOV on 20.06.2021.
//

class Manager {
    
    static let shared = Manager()
    
    var fishes: [Fish] = [Fish(name: "salmon", description: "salmon", image: "salmon")]
}

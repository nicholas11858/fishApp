//
//  Fish.swift
//  fishApp
//
//  Created by NIKOLAY OSIPOV on 20.06.2021.
//

struct Fish {
    let name: String
    let description: String
    let image: String
    
    
    static func createFishes() -> [Fish] {
        let fishes = Manager.shared.fishes

        return fishes
    }
}

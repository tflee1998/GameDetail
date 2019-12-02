//
//  PlayerData.swift
//  GameDetail
//
//  Created by User02 on 2019/12/2.
//  Copyright © 2019 TF. All rights reserved.
//

import Foundation

class PlayerData:ObservableObject{
    
    @Published var player=[Player](){
        didSet {
            let encoder = JSONEncoder()
            if let data = try? encoder.encode(player) {
                UserDefaults.standard.set(data, forKey: "player")
            }
        }
    }
    
    init() {
        if let data = UserDefaults.standard.data(forKey: "player") {
            let decoder = JSONDecoder()
            if let decodedData = try? decoder.decode([Player].self, from: data) {
                player = decodedData
            }
        }
    }
    
}

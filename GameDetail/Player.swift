//
//  Player.swift
//  GameDetail
//
//  Created by User02 on 2019/12/2.
//  Copyright © 2019 TF. All rights reserved.
//

import Foundation

struct Player:Identifiable,Codable{
    var id = UUID()
    var name:String
    var number:Int
    var totalShoot:Int
    var hit:Int
    
   
}


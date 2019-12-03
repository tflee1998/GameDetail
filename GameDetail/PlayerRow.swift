//
//  PlayerRow.swift
//  GameDetail
//
//  Created by User02 on 2019/12/2.
//  Copyright © 2019 TF. All rights reserved.
//

import SwiftUI

struct PlayerRow: View {
    
    var player:Player
    
    var body: some View {
        
        HStack{
            VStack{
            Text("Name:"+player.name)
            Text("Number:"+String(player.number))
            }
            Spacer()
            VStack{
                Text("Total Shoot:"+String(player.totalShoot))
                Text("Total hit:"+String(player.hit))
                
            }
            DonutChart(stop: CGFloat(Double(player.hit)/Double(player.totalShoot
                )))
           
            
            
        }.background(Color.yellow)
    }
}

struct PlayerRow_Previews: PreviewProvider {
    static var previews: some View {
        PlayerRow(player:Player(name:"Lee",number:15,totalShoot:20,hit:10))
    }
}

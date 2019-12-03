//
//  allPlayer.swift
//  GameDetail
//
//  Created by User02 on 2019/12/2.
//  Copyright © 2019 TF. All rights reserved.
//

import SwiftUI

struct allPlayer: View {
    var playerData:PlayerData
    var totalHit=0
    var totalShoot=0
    var degrees=[0.0]
    var degreesHit=[0.0]
    var information=[" "]
    var lastCount=0.0
    var lastCountHit=0.0
    init(playerData:PlayerData){
        self.playerData=playerData
        
        
        for player in self.playerData.player{
            totalHit+=player.hit
            totalShoot+=player.totalShoot
            self.information.append(player.name)
        }
       for player in self.playerData.player{
        
        degrees.append(self.lastCount+(Double(player.totalShoot)/Double(totalShoot)*360))
        self.lastCount+=Double(player.totalShoot)/Double(totalShoot)*360
            print(degrees)
        degreesHit.append(self.lastCountHit+(Double(player.hit)/Double(totalHit)*360))
        self.lastCountHit+=Double(player.hit)/Double(totalHit)*360
            print(degreesHit)
        }
    }
    var body: some View {
        VStack {
            Chart(count: self.playerData.player.count, start: degrees, information: information).frame(width:200,height:200)
            Text("Player Shoot Chart")
            Chart(count: self.playerData.player.count, start: degreesHit, information: information).frame(width:200,height:200)
            Text("Player Hit Chart")
        }
    }
}

struct allPlayer_Previews: PreviewProvider {
    static var previews: some View {
        allPlayer(playerData: PlayerData())
    }
}



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
     var total=0
    init(playerData:PlayerData){
    self.playerData=playerData
       
        ForEach(self.playerData.player){ (player) in
            total=total+player.hit
        }
    }
        var body: some View {
            Text("hi")
}
}

struct allPlayer_Previews: PreviewProvider {
    static var previews: some View {
        allPlayer(playerData: PlayerData())
    }
}



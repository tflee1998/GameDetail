//
//  PlayerList.swift
//  GameDetail
//
//  Created by User02 on 2019/12/2.
//  Copyright © 2019 TF. All rights reserved.
//

import SwiftUI

struct PlayerList: View {
    
    @ObservedObject var playerData=PlayerData()
    @State private var editPlayer = false

    
    var body: some View {
        NavigationView{
            List{
                ForEach(playerData.player){ (player) in
                    NavigationLink(destination:PlayerEditor(playerData:self.playerData,editPlayer:player)){
                    
                            PlayerRow(player:player)
                        
                        
                    }
                 
                }.onDelete { (indexSet) in
                self.playerData.player.remove(atOffsets: indexSet)
            }
            NavigationLink(destination:allPlayer(playerData:self.playerData)){
                Text("圖表總分析").foregroundColor(Color.orange).bold()
                   
                
            }
        }
        .navigationBarTitle("Player List")
            .navigationBarItems(leading: EditButton(), trailing: Button(action: {self.editPlayer=true}, label: {
                Image(systemName: "plus.circle.fill")
                }))
                .sheet(isPresented: $editPlayer)
                {
                    NavigationView{
                        PlayerEditor(playerData:self.playerData)
                    }
                    
            }
            
        }
}
}
struct PlayerList_Previews: PreviewProvider {
    static var previews: some View {
        PlayerList()
    }
}


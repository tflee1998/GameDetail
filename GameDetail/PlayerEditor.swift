//
//  PlayerEditor.swift
//  GameDetail
//
//  Created by User02 on 2019/12/2.
//  Copyright © 2019 TF. All rights reserved.
//

import SwiftUI

struct PlayerEditor: View {
    
    @Environment(\.presentationMode) var presentationMode
    var playerData:PlayerData
    var editPlayer :Player?
    @State private var name = ""
    @State private var number = 0
    @State private var Totalshoot = 0
    @State private var hit = 0
    
    var body: some View {
        Form{
            TextField("名字", text: $name)
            Stepper("Number \(number)", value: $number, in: 0...99)
            Stepper("Total Shoot \(Totalshoot)", value: $Totalshoot, in: 0...99)
            Stepper("Shoot Hit \(hit)", value: $hit, in: 0...99)
        }
        .navigationBarTitle(editPlayer == nil ? "Add new player" : "Edit Player")
        .navigationBarItems(trailing: Button("Save") {
            let player = Player(name:self.name,number:self.number,totalShoot:self.Totalshoot,hit:self.hit)
            if let editPlayer = self.editPlayer {
                let index = self.playerData.player.firstIndex {
                    $0.id == editPlayer.id
                    }!
                self.self.playerData.player[index] = player
            } else {
                self.playerData.player.insert(player, at: 0)
            }
            self.presentationMode.wrappedValue.dismiss()
            
        })
            .onAppear {
                if let editPlayer = self.editPlayer {
                    self.name = editPlayer.name
                    self.number = editPlayer.number
                    self.Totalshoot = editPlayer.totalShoot
                    self.hit = editPlayer.hit
                    
                }
        }

        
    }
}

struct PlayerEditor_Previews: PreviewProvider {
    static var previews: some View {
        PlayerEditor(playerData:PlayerData())
    }
}

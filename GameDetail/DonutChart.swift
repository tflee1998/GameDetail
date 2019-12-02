//
//  DonutChart.swift
//  GameDetail
//
//  Created by User02 on 2019/12/2.
//  Copyright © 2019 TF. All rights reserved.
//

import SwiftUI

struct DonutChart: View {
    var stop:CGFloat
    var body: some View {
        ZStack{
        Circle()
            .trim(from: CGFloat(0.0),to:stop)
            .stroke(Color.green,lineWidth: 10)
          
        Circle()
        .trim(from: stop,to: CGFloat(1.0))
            .stroke(Color.red,lineWidth: 10)
            Text("命中%").foregroundColor(Color.green)
        }.frame(width:150, height:150)
    }
}

struct DonutChart_Previews: PreviewProvider {
    static var previews: some View {
        DonutChart(stop:CGFloat(0.25))
    }
}

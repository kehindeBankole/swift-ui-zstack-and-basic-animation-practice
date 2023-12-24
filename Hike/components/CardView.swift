//
//  CardView.swift
//  Hike
//
//  Created by kehinde on 24/12/2023.
//

import SwiftUI


struct CardView: View {
    
    let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    @State private var currentImage = 1
    var body: some View {
        ZStack{
            
            CustomBackgroundView()
            
            ZStack{
                CustomCircleView()
                Circle().fill(
                    LinearGradient(colors: [Color.indigoMedium , Color.salmonLight], startPoint: .topLeading, endPoint: .bottomTrailing)).frame(width: 256 , height:256)
                Image("image-\(currentImage)").resizable().scaledToFit()
            }
            
        }.frame(width: 320 , height: 570).onReceive(timer){ _ in
            withAnimation{
                if(currentImage==5){
                    currentImage = 1
                }else{
                    currentImage += 1
                }
            }
            
        }
    }
}

#Preview {
    CardView()
}

//
//  CustomCircleView.swift
//  Hike
//
//  Created by kehinde on 24/12/2023.
//

import SwiftUI

struct CustomCircleView: View {

    @State private var isAnimating = false
    var body: some View {
        ZStack{
//
            Circle().fill(
                LinearGradient(colors: [.pink ,  Color.indigoMedium , Color.salmonLight], startPoint: isAnimating ? .topLeading : .bottomLeading, endPoint: isAnimating ? .bottomTrailing : .topTrailing)).onAppear{
                    withAnimation{
                        isAnimating = true
                    }
                }
            
            MotionAnimationView()
        }.frame(width: 256 , height:256)
    }
}

#Preview {
    CustomCircleView()
}

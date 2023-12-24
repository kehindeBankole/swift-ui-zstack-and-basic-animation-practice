//
//  MotionAnimationView.swift
//  Hike
//
//  Created by kehinde on 24/12/2023.
//

import SwiftUI

struct MotionAnimationView: View {
    @State private var randomCircle = Int.random(in: 6...12)
    @State private var isAnimating = false
 
    func randCoOrds() -> CGFloat{
        return CGFloat.random(in: 0...256)
    }
    
    func randSize() -> CGFloat{
        return CGFloat.random(in: 4...80)
    }
    
    func randScale() -> CGFloat{
        return CGFloat.random(in: 0.1...2.0)
    }
    
    
    func randSpeed() -> CGFloat{
        return CGFloat.random(in: 0.05...1.0)
    }
    
    func randDelay() -> CGFloat{
        return CGFloat.random(in: 0...2)
    }
    
    private var animation: Animation {
         .linear
         .speed(0.1)
         .repeatForever(autoreverses: true)
         .speed(randSpeed())
         .delay(randDelay())
     }
    
    var body: some View {
        ZStack{
            ForEach(0...randomCircle , id:\.self){item in
                Circle().foregroundColor(.white).scaleEffect(isAnimating ? randScale():1).frame(width: randSize()).position(x:randCoOrds() , y : randCoOrds()).onAppear(perform: {
                    withAnimation(animation){
                        isAnimating = true
                    }
                })
            }
      
        }.mask(Circle()).drawingGroup()
    }
}

#Preview {
    MotionAnimationView()
}

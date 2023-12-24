//
//  CustomBackgroundView.swift
//  Hike
//
//  Created by kehinde on 24/12/2023.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack{
            
            Color.greenDark.cornerRadius(40).offset(y:12)
            Color.greenLight.cornerRadius(40).offset(y:3).opacity(0.85)

            LinearGradient(colors: [Color.greenLight , Color.greenMedium], startPoint: .top, endPoint: .bottom).cornerRadius(40)
        }
    }
}

#Preview {
    CustomBackgroundView()
}

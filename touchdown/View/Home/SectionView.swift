//
//  SectionView.swift
//  touchdown
//
//  Created by ed on 05/06/2021.
//

import SwiftUI

struct SectionView: View {
    // MARK: - propterties
    @State var rotateClockwise: Bool
    
    // MARK: - body
    var body: some View {
        VStack(spacing:0 ) {
            Spacer()
            
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
            
            Spacer()
        } // VStack
        .background(colorGray.cornerRadius(12))
        .frame(width: 85)
    }
}

// MARK: - preview
struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SectionView(rotateClockwise: false)
                .previewLayout(.fixed(width: 120, height: 240))
                .padding()
                .background(colorBackground)
            
            SectionView(rotateClockwise: true)
                .previewLayout(.fixed(width: 120, height: 240))
                .padding()
                .background(colorBackground)
            
        }
    }
}

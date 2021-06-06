//
//  FeaturedItemView.swift
//  touchdown
//
//  Created by ed on 05/06/2021.
//

import SwiftUI

struct FeaturedItemView: View {
    // MARK: - properties
    let player: Player
    
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct FeaturedItemView_Previews: PreviewProvider {
    
    static var previews: some View {
        FeaturedItemView(player: players[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}

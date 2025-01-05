//
//  ImageLoaderView.swift
//  AIChat
//
//  Created by Miad Jalili on 2025-01-03.
//

import SwiftUI
import SDWebImageSwiftUI

struct ImageLoaderView: View {
    
    var urlString: String = Constants.randomImageURL
    var resizingMode : ContentMode = .fill
    
    var body: some View {
        Rectangle()
            .opacity(0)
            .overlay {
                WebImage(url: URL(string: urlString))
                    .resizable()
                    .indicator(.activity)
                    .aspectRatio(contentMode: resizingMode)
                    .allowsHitTesting(false)
            }
            .clipped()
    
    }
}

#Preview {
    ImageLoaderView()
        .frame(width: 100, height: 200)
}

//
//  HeroCellView.swift
//  AIChat
//
//  Created by Miad Jalili on 2025-01-14.
//

import SwiftUI

struct HeroCellView: View {
    var title : String? = "This Is some Title"
    var subtitle : String? = "This Is some Subtitle that will go here"
    var imageName: String? = Constants.randomImageURL
    var body: some View {
        ZStack {
            if let imageName {
                ImageLoaderView(urlString: imageName)
            } else {
                Rectangle()
                    .fill(.accent)
            }
        }
        .overlay(alignment: .bottomLeading , content: {
            VStack(alignment: .leading, spacing: 4){
                if let title {
                    Text(title)
                        .font(.headline)
                        
                }
                if let subtitle {
                    Text(subtitle)
                        .font(.subheadline)
                }
            }
            .foregroundStyle(.white)
            .padding(16)
            .frame(maxWidth: .infinity,alignment: .leading)
            .background(
                LinearGradient(colors: [
                    Color.black.opacity(0.0),
                    Color.black.opacity(0.3),
                    Color.black.opacity(0.4)
                    
                ], startPoint: .top, endPoint: .bottom)
            )
        })
        .cornerRadius(16)
    }
}

#Preview {
    HeroCellView()
        .frame(width: 300, height: 200)
}

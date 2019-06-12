//
//  ImageViewWidget.swift
//  SwiftUI-JSON
//
//  Created by Maxim Granchenko on 6/12/19.
//  Copyright © 2019 Maxim Granchenko. All rights reserved.
//

import SwiftUI
import Combine

struct ImageViewWidget: View {
    
    @ObjectBinding var imageLoader: ImageLoader
    
    init(imageUrl: String) {
        imageLoader = ImageLoader(imageUrl: imageUrl)
    }
    
    var body: some View {
        Image(uiImage: (imageLoader.data.count == 0) ? UIImage(named: "trees")! : UIImage(data: imageLoader.data)!)
            .resizable()
            .frame(width: UIScreen.main.bounds.width - 40, height: 180)
    }
}

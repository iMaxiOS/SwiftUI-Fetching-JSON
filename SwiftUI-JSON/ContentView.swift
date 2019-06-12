//
//  ContentView.swift
//  SwiftUI-JSON
//
//  Created by Maxim Granchenko on 6/12/19.
//  Copyright © 2019 Maxim Granchenko. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    
    @State var network = NetworkManager()
    
    var body: some View {
        NavigationView {
            List (
                network.course.identified(by: \.name)
            ) {
                Text($0.name)
            }.navigationBarTitle(Text("Course"))
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif

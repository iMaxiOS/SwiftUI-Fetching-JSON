//
//  ContentView.swift
//  SwiftUI-JSON
//
//  Created by Maxim Granchenko on 6/12/19.
//  Copyright © 2019 Maxim Granchenko. All rights reserved.
//

import SwiftUI
import Combine

struct ContentView : View {
    
    @State var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List (
                networkManager.courses.identified(by: \.name)
            ) { course in
                CourseRowView(course: course)
                
                }.navigationBarTitle(Text("Courses"))
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

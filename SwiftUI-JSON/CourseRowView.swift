//
//  CourseRowView.swift
//  SwiftUI-JSON
//
//  Created by Maxim Granchenko on 6/12/19.
//  Copyright © 2019 Maxim Granchenko. All rights reserved.
//

import SwiftUI
import Combine

struct CourseRowView: View {
    let course: Course
    
    var body: some View {
        VStack (alignment: .leading) {
            ImageViewWidget(imageUrl: course.imageUrl)
            Text(course.name)
            .font(.system(.largeTitle, design: .rounded))
        }
    }
}

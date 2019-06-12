//
//  CourseRowView.swift
//  SwiftUI-JSON
//
//  Created by Maxim Granchenko on 6/12/19.
//  Copyright © 2019 Maxim Granchenko. All rights reserved.
//

import SwiftUI

struct CourseRowView: View {
    
    var course: Course
    
    var body: some View {
        VStack (alignment: .leading) { 
            Image(course.imageUrl)
                .resizable()
                .frame(width: 200, height: 200)
                .clipped()
            Text(course.name)
        }
    }
}

//
//  NetworkManager.swift
//  SwiftUI-JSON
//
//  Created by Maxim Granchenko on 6/12/19.
//  Copyright © 2019 Maxim Granchenko. All rights reserved.
//

import SwiftUI
import Combine

class NetworkManager: BindableObject {
    var didChange = PassthroughSubject<NetworkManager, Never>()
    
    var courses = [Course]() {
        didSet {
            didChange.send(self)
        }
    }
    
    init() {
        guard let url = URL(string: "https://api.letsbuildthatapp.com/jsondecodable/courses") else { return }
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            guard let data = data else { return }
            
            let courses = try! JSONDecoder().decode([Course].self, from: data)
            DispatchQueue.main.async {
                self.courses = courses
        }
            print("completed fetching json")
        }.resume()
    }
}

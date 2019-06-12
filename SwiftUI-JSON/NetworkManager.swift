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
    
    var course = [Course]() {
        didSet {
            didChange.send(self)
        }
    }
}

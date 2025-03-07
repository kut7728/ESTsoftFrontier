//
//  ContentModel.swift
//  MyContentManager
//
//  Created by nelime on 3/7/25.
//

import Foundation

struct Content: Codable {
    var id = UUID()
    var text: String
}

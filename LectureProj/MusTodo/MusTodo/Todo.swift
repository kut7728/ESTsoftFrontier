//
//  Todo.swift
//  MusTodo
//
//  Created by nelime on 3/28/25.
//


import Foundation

struct Todo: Codable {
    let id: String
    let title: String
    let isCompleted: Bool
}
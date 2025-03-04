//
//  AppointCreateResult.swift
//  QuoteGenerator
//
//  Created by nelime on 3/3/25.
//


import Foundation

// MARK: - AppointCreateResult
struct QuoteApiResult: Codable {
    let author, authorProfile, message: String
}

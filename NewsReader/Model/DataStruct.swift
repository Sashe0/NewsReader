//
//  DataStruct.swift
//  NewsReader
//
//  Created by Саша Боднар on 16.09.2025.
//

import Foundation

// MARK: - Welcome
struct Welcome: Codable {
    let status: String?
    let articles: [Article]
}

// MARK: - Article
struct Article: Codable, Identifiable {
    var id: String { url ?? UUID().uuidString }
//    let source: Source?
    let author: String?
    let title, description: String?
    let url: String?
    let urlToImage: String?
    let publishedAt: String?
    let content: String?
}

// MARK: - Source
struct Source: Codable {
    let id: String?
    let name: String?
}

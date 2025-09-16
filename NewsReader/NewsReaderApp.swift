//
//  NewsReaderApp.swift
//  NewsReader
//
//  Created by Саша Боднар on 16.09.2025.
//

import SwiftUI

@main
struct NewsReaderApp: App {
    @StateObject var newsModel = NewsViewModel()

    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(newsModel)
        }
    }
}

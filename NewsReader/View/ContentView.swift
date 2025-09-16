//
//  ContentView.swift
//  NewsReader
//
//  Created by Саша Боднар on 16.09.2025.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var newsModel: NewsViewModel

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            List(newsModel.arrayData) { black in
//                ForEach(newsModel.arrayData) { arts in
                Text(black.title ?? "No title")
                    .foregroundColor(.black)
//                }
            }
        }
        .padding()
        .onAppear {
                newsModel.getData()
        }
    }
}

#Preview {
    ContentView().environmentObject(NewsViewModel())
}

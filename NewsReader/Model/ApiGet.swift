//
//  NewsViewModel.swift
//  News Reader
//
//  Created by Саша Боднар on 16.09.2025.
//

import SwiftUI
internal import Combine

class NewsViewModel: ObservableObject {
    @Published var arrayData: [Article] = []

    func getData() {
        let apiKEY = "87806b2dd1db4daa9cd64ab5313fb90c"
        let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=\(apiKEY)")
        
        URLSession.shared.dataTask(with: url!) {(data, response, error) in
            DispatchQueue.main.async { [self] in
                do {
                    if let data = data {
                        let result = try JSONDecoder().decode(Welcome.self, from: data)
                        arrayData = result.articles
                        print(result.articles)
                    }
                    else {
                        print("No data")
                    }
                } catch (let error){
                    print("Some error: \(error)")
                }
            }
        }
        .resume()
    }
}

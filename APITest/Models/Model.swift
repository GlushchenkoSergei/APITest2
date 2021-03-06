//
//  File.swift
//  APITest
//
//  Created by mac on 03.05.2022.
//

import Foundation

struct Dog: Decodable {
    let message: String
    let status: String
    
    var imageData: Data {
        getData()
    }
    

    private func getData() -> Data {
        guard let urlImage = URL(string: message) else { return Data() }
        guard let imageData = try? Data(contentsOf: urlImage) else { return Data() }
        return imageData
    }
}

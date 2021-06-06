//
//  CodableBundleExtension.swift
//  touchdown
//
//  Created by ed on 05/06/2021.
//

import Foundation


extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        
        // locate the json file we wish to decode
        guard let url = self.url(forResource: file, withExtension: nil) else {
            print("failed to locate \(file) in Bundle")
            fatalError("failed to locate \(file) in Bundle")            
        }
        
        // create a property for the data
        guard let data = try? Data(contentsOf: url) else {
            print("Failed to load \(file) from Bundle")
            fatalError("Failed to load \(file) from Bundle")
            
        }
        
        // create decoder
        let decoder = JSONDecoder()
        
        // prop for decoded data
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            print("Failed to decode \(file) from Bundle")
            fatalError("Failed to decode \(file) from Bundle")
        }
        
        // return ready to use data
        return decodedData
    }
}

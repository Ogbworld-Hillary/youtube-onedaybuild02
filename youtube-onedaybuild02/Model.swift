//
//  Model.swift
//  youtube-onedaybuild02
//
//  Created by user on 30/03/2021.
//

import Foundation


class Model {
    
    func getVideos() {
        
        // Create a URL object
        let url = URL(string: Constants.API_URL)
        
        guard url != nil else {
            return
        }
        
        // Get a URLSession object
        let session = URLSession.shared
        
        // Get a data task from the URLSession object
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
        
            // Check if there is any errors
            if error != nil || data == nil {
                return
            }
            
            do {
                
                // Parsing the data into video objects
                let decoder = JSONDecoder()
                decoder.dataDecodingStrategy = .base64
                
                let response = try decoder.decode(Response.self, from: data!)
                
                dump(response)
            }
            
            catch {
                
            }
            
        }
        
        // Kick of task
        dataTask.resume()
    }
}

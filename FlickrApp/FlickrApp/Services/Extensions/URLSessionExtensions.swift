//
//  URLSessionExtensions.swift
//  FlickrApp
//
//  Created by Binal Jogi on 22/3/2022.
//

import Foundation

extension URLSession: Session {
    
    func fetch(url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> Void) {
        let task = self.dataTask(with: url) { data, response, error in
            completion(data, response, error)
        }
        task.resume()
    }
}

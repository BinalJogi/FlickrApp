//
//  MockSession.swift
//  FlickrAppTests
//
//  Created by Binal Jogi on 22/3/2022.
//

import UIKit
@testable import FlickrApp

class MockSession: Session {
    
    func fetch(url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> Void) {
        
        if url.absoluteString.contains(".jpeg") {
            DispatchQueue.global().asyncAfter(deadline: .now() + 1, execute: {
                let image = UIImage(named: "Sample")
                completion(image?.jpegData(compressionQuality: 1.0), nil, nil)
            })
        } else if url.absoluteString.contains("fail") {
            DispatchQueue.global().asyncAfter(deadline: .now() + 1, execute: {
                completion(nil, nil, NetworkError.badData)
            })
        } else {
            DispatchQueue.global().asyncAfter(deadline: .now() + 1, execute: {
                let bundle = Bundle(for: FlickrAppTests.self)
                guard let localURL = bundle.url(forResource: "FlickrFeedData", withExtension: "json") else {
                    completion(nil, nil, NetworkError.badRequest)
                    return
                }
                let data = try? Data(contentsOf: localURL)
                completion(data, nil, nil)
            })
        }
    }
}

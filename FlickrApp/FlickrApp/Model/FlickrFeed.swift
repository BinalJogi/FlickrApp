//
//  FlickrFeed.swift
//  FlickrApp
//
//  Created by Binal Jogi on 22/3/2022.
//

import Foundation

struct FlickrFeed: Decodable, Equatable {
    let title: String
    let link: String
    let description: String
    let modified: String
    let generator: String
    let items: [ImageFeed]
}

struct ImageFeed: Decodable, Equatable {
    let title: String
    let link: String
    let media: Media
    let description: String
    let published: String
    let author: String
    let tags: String
}

struct Media: Decodable, Equatable {
    let imageLink: String
    
    enum CodingKeys: String, CodingKey {
        case imageLink = "m"
    }
}

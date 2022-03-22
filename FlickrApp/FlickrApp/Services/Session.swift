//
//  Session.swift
//  FlickrApp
//
//  Created by Binal Jogi on 22/3/2022.
//

import Foundation

protocol Session {
    func fetch(url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> Void)
}

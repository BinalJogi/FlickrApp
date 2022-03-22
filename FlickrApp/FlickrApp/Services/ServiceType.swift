//
//  ServiceType.swift
//  FlickrApp
//
//  Created by Binal Jogi on 22/3/2022.
//

import Foundation

protocol ServiceType {
    func requestModel<T: Decodable>(url: URL?, completion: @escaping (Result<T, Error>) -> Void)
    func requestRawData(url: URL?, completion: @escaping (Result<Data, Error>) -> Void)
}

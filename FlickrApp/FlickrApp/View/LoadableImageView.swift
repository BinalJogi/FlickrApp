//
//  LoadableImageView.swift
//  FlickrApp
//
//  Created by Binal Jogi on 22/3/2022.
//

import UIKit

class LoadableImageView: UIImageView {

    lazy var activityIndicator: UIActivityIndicatorView = {
        let activity = UIActivityIndicatorView()
        activity.translatesAutoresizingMaskIntoConstraints = false
        activity.color = .white
        activity.hidesWhenStopped = true
        self.addSubview(activity)
        activity.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        activity.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        return activity
    }()
}

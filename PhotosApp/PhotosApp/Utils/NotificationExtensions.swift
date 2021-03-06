//
//  NotificationExtensions.swift
//  PhotosApp
//
//  Created by Chaewan Park on 2020/03/18.
//  Copyright © 2020 임승혁. All rights reserved.
//

import Foundation

extension NotificationCenter {
    func addObserver(forName name: NSNotification.Name?,
                     using block: @escaping (Notification) -> Void) -> NSObjectProtocol {
        return addObserver(forName: name, object: nil, queue: .main) { block($0) }
    }
}

extension Notification.Name {
    static let photoDidChange = Notification.Name("photoDidChange")
    static let doodleDidChange = Notification.Name("doodleDidChange")
}

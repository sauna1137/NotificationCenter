//
//  ViewController.swift
//  NotificationCenter
//
//  Created by KS on 2022/01/02.
//

import UIKit

let aNotificationKey = "co.A"
let bNotificationKey = "co.B"

class ViewController: UIViewController {

    let aNotificationName = Notification.Name(rawValue: aNotificationKey)
    let bNotificationName = Notification.Name(rawValue: bNotificationKey)

    deinit {
        NotificationCenter.default.removeObserver(self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        creatObservers()
    }

    func creatObservers() {
        // a
        NotificationCenter.default.addObserver(self, selector: #selector(updateBackGround(notification:)), name: aNotificationName, object: nil)

        // b
        NotificationCenter.default.addObserver(self, selector: #selector(updateBackGround(notification:)), name: bNotificationName, object: nil)
    }

    @objc func updateBackGround(notification: NSNotification) {
        let isA = notification.name == aNotificationName
        let color = isA ? UIColor.yellow : UIColor.green
        view.backgroundColor = color
    }
}

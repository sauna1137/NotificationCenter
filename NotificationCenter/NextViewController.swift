//
//  NextViewController.swift
//  NotificationCenter
//
//  Created by KS on 2022/01/03.
//

import UIKit

class NextViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func tappedAButton(_ sender: Any) {
        let name = Notification.Name(rawValue: aNotificationKey)
        NotificationCenter.default.post(name: name, object: nil)
        dismiss(animated: true, completion: nil)
    }


    @IBAction func tappedBButton(_ sender: Any) {
        let name = Notification.Name(rawValue: bNotificationKey)
        NotificationCenter.default.post(name: name, object: nil)
        dismiss(animated: true, completion: nil)
    }


}

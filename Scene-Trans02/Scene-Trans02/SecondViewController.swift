//
//  SecondViewController.swift
//  Scene-Trans02
//
//  Created by owen on 2022/02/25.
//

import UIKit
class SecondViewController: UIViewController{
    
    @IBAction func back(_ sender: Any) {
        _ = self.navigationController?.popViewController(animated: true)
    }
}

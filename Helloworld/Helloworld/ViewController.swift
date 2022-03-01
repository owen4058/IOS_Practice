//
//  ViewController.swift
//  Helloworld
//
//  Created by owen on 2022/02/12.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet var uiTitle: UILabel! // 아울렛 변수, 이 변수의 속성을 변경하면 화면상에 있는 레이블에도 그대로 반영됨.
    
    @IBAction func sayHello(_ sender: Any) {
        self.uiTitle.text = "안녕?"
    }
}


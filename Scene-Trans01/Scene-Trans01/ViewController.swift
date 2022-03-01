//
//  ViewController.swift
//  Scene-Trans01
//
//  Created by owen on 2022/02/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func moveNext(_ sender: Any) {
        // 이동할 뷰 컨트롤러 객체를 StoryboardID 정보를 이용하여 참조
        // self.storyboard는 옵셔널 타입 -> 경우에 따라 값이 nil일 수도 있음
        guard let uvc = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC")
        else{
            return
        }
        
        // 화면 전환할 떄의 애니메이션 타입
        uvc.modalTransitionStyle = UIModalTransitionStyle.coverVertical
        
        // 인자값으로 뷰 컨트롤러 인스턴스를 넣고 프레젠트 메소드 호출
        self.present(uvc, animated: true)
    }
    
}


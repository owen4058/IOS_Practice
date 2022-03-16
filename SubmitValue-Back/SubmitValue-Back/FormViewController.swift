import UIKit

class FormViewController: UIViewController {

    @IBOutlet var email: UITextField!
    @IBOutlet var isUpdate: UISwitch!
    @IBOutlet var interval: UIStepper!
    
    
    @IBAction func onSubmit(_ sender: Any) {
        // 전달해줄 뷰 컨트롤러의 인스턴스를 찾아오는 역할
        let preVC = self.presentingViewController
        guard let vc = preVC as? ViewController else{ // 인스턴스 객체를 ViewController 타입으로 캐스팅하면 문제 해결 가능
            return                                     // ViewController 타입으로 캐스팅하면 앞에 정의해둔 property참조가능
        }
        
        // 값 전달
        vc.paramEmail = self.email.text
        vc.paramUpdate = self.isUpdate.isOn
        vc.paramInterval = self.interval.value
        
        // 이전화면으로 복귀
        self.presentingViewController?.dismiss(animated: true)
    }
}


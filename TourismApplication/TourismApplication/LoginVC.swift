//
//  LoginVC.swift
//  TourismApplication
//
//  Created by Samet Ronaer on 25.11.2022.
//

import UIKit

class LoginVC: UIViewController {
    
    @IBOutlet weak var emailText : UITextField!
    @IBOutlet weak var passwordText : UITextField!
    
    @IBOutlet weak var appButton : AppButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        let tap = UITapGestureRecognizer(target: self, action: #selector(dummyFunc))
        appButton.addGestureRecognizer(tap)

        // Do any additional setup after loading the view.
    }
    
     @objc func dummyFunc (){
        print("Dummy func here")
    }
    
   
   
    @IBAction func sendSignInRequest(){
      
        let email:String  = emailText.text ?? ""
        let password:String  = passwordText.text ?? ""
        self.showLoadingIndicator()
        ApiManager.shared.sendSignInRequest(email: email, password: password) { result in
            if result is ErrorResult{
                print((result as! ErrorResult).errorCode)
            }else if result is SuccessResult{
                print((result as! SuccessResult).data)
                DispatchQueue.main.async {
                    self.dismiss(animated: true)
                }
            }
            self.removeLoadingIndicator()
        }
    }
    
    

    
    @IBAction func goBack(_ sender : UIButton){
        dismiss(animated: true)
    }

}

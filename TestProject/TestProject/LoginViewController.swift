//
//  LoginViewController.swift
//  TestProject
//
//  Created by Sagar on 12/09/21.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var eMailId: UITextField!

    @IBOutlet weak var passWord: UITextField!
    
    
    @IBAction func LoginButton(_ sender: Any) {
        
//        NSLog("dATA IS ", +eMailId.text)
        
        print("data is ",eMailId.text)
        
        print("data pwd ",passWord.text)
        
//        NSLog("dATA IS password ", +passWord.text)
        
        
        let params = ["email":"eve.holt@reqres.in", "password":"cityslicka"] as Dictionary<String, String>

        var request = URLRequest(url: URL(string: "https://reqres.in/api/login")!)
        request.httpMethod = "POST"
        request.httpBody = try? JSONSerialization.data(withJSONObject: params, options: [])
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")

        let session = URLSession.shared
        let task = session.dataTask(with: request, completionHandler: { data, response, error -> Void in
            print(response!)
            do {
                let json = try JSONSerialization.jsonObject(with: data!) as! Dictionary<String, AnyObject>
                print(json)
            } catch {
                print("error")
            }
        })

        task.resume()
        
        
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    override func viewDidAppear(_ animated: Bool) {
       
        eMailId.placeholder="hello";
        
       
        let alert = UIAlertController(title: "My Title", message: "This is my message.", preferredStyle: UIAlertController.Style.alert)

                // add an action (button)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

                // show the alert
                self.present(alert, animated: true, completion: nil)
        
        
        
    }
}

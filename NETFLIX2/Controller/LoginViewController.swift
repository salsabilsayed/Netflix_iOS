//
//  LoginViewController.swift
//  NETFLIX2
//
//  Created by ifts 25 on 12/02/23.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    var arrayUsers = [User]()
    var loggedUser = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        arrayUsers.append(User(name: "Salsabil", email: "salsabil@gmail.com", password: "123"))
        arrayUsers.append(User(name: "Somaya", email: "somaya@gmail.com", password: "124"))
        arrayUsers.append(User(name: "Ali", email: "ali@gmail.com", password: "125"))
        
    }
    
    @IBAction func loginPressed(_ sender: UIButton) {
        if emailTF.text!.isEmpty || passwordTF.text!.isEmpty {
            showAlert(title: "Error", message: "You should enter all fields!")
        }else {
            if isUserFound(email: emailTF.text!, pass: passwordTF.text!) {
                //navigate to home
                performSegue(withIdentifier: "home", sender: nil)
            }else {
                showAlert(title: "Error", message: "User not found!")
            }
        }
    }
    
    func isUserFound(email: String, pass: String) -> Bool {
        var isFound = false
        for user in arrayUsers {
            if email == user.email && pass == user.password {
                isFound = true
                loggedUser = user.name
                break;
            }else {
                isFound = false
            }
        }
        
        return isFound
    }
    
    //MARK: - Alert Function
    
    func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Retry", style: .default)
        alert.addAction(action)
        self.present(alert, animated: true)
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        let homeVC = segue.destination as! HomeViewController
        homeVC.topLabel += loggedUser
        // Pass the selected object to the new view controller.
    }
    

}

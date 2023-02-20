//
//  ViewController.swift
//  AppleKeyChain
//
//  Created by Harun Demirkaya on 20.02.2023.
//
// MARK: -Import Libaries
import UIKit

// MARK: -LoginPageViewController Class
class LoginPageViewController: UIViewController {
    // MARK: -Define
    
    // MARK: -Label Defined
    var lblTitle: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Login / Register"
        lbl.textColor = .black
        lbl.font = lbl.font.withSize(25)
        return lbl
    }()
    
    // MARK: TextFields Defined
    var txtFieldUsername: UITextField = {
        let txtField = UITextField()
        txtField.translatesAutoresizingMaskIntoConstraints = false
        txtField.placeholder = "Username"
        txtField.layer.cornerRadius = 4.0
        txtField.layer.borderWidth = 1.0
        txtField.layer.borderColor = UIColor.gray.cgColor
        let paddingViewUsername = UIView(frame: CGRectMake(0, 0, 15, txtField.frame.height))
        txtField.leftView = paddingViewUsername
        txtField.leftViewMode = UITextField.ViewMode.always
        txtField.autocorrectionType = .no
        txtField.autocapitalizationType = .none
        txtField.textContentType = .username
        return txtField
    }()
    
    var txtFieldPassword: UITextField = {
        let txtField = UITextField()
        txtField.translatesAutoresizingMaskIntoConstraints = false
        txtField.placeholder = "Password"
        txtField.layer.cornerRadius = 4.0
        txtField.layer.borderWidth = 1.0
        txtField.layer.borderColor = UIColor.gray.cgColor
        let paddingViewUsername = UIView(frame: CGRectMake(0, 0, 15, txtField.frame.height))
        txtField.leftView = paddingViewUsername
        txtField.leftViewMode = UITextField.ViewMode.always
        txtField.autocorrectionType = .no
        txtField.autocapitalizationType = .none
        txtField.isSecureTextEntry = true
        txtField.textContentType = .password
        return txtField
    }()
    
    // MARK: Button's Defined
    var btnLogin: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Login", for: .normal)
        btn.layer.cornerRadius = 6.0
        btn.backgroundColor = .purple
        return btn
    }()
       
    var btnRegister: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Register", for: .normal)
        btn.layer.cornerRadius = 6.0
        btn.backgroundColor = .purple
        return btn
    }()
    
    // MARK: -ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: Screen
        view.backgroundColor = .white
        
        // MARK: Set Constraints
        setConstraints()
    }
    
    func setConstraints(){
        txtFieldUsername.txtFieldUsernameConstraints(self.view)
        txtFieldPassword.txtFieldPasswordConstraints(self.view, txtFieldUsername: self.txtFieldUsername)
        btnLogin.btnLoginConstraints(view, txtFieldPassword: txtFieldPassword)
        btnRegister.btnRegisterConstraints(view, btnLogin: btnLogin)
        lblTitle.lblTitleConstraints(view, txtFieldUsername: txtFieldUsername)
    }
}

// MARK: -Constraints
public extension UIView{
    
    func lblTitleConstraints(_ view: UIView, txtFieldUsername: UITextField){
        view.addSubview(self)
        centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        bottomAnchor.constraint(equalTo: txtFieldUsername.topAnchor, constant: -20).isActive = true
    }
    
    func txtFieldUsernameConstraints(_ view: UIView){
        view.addSubview(self)
        centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85).isActive = true
        heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    func txtFieldPasswordConstraints(_ view: UIView, txtFieldUsername: UITextField){
        view.addSubview(self)
        centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        topAnchor.constraint(equalTo: txtFieldUsername.bottomAnchor, constant: 10).isActive = true
        widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85).isActive = true
        heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    func btnLoginConstraints(_ view: UIView, txtFieldPassword: UITextField){
        view.addSubview(self)
        topAnchor.constraint(equalTo: txtFieldPassword.bottomAnchor, constant: 25).isActive = true
        centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        widthAnchor.constraint(equalToConstant: view.frame.size.width * 0.85).isActive = true
    }
        
    func btnRegisterConstraints(_ view: UIView, btnLogin: UIButton){
        view.addSubview(self)
        topAnchor.constraint(equalTo: btnLogin.bottomAnchor, constant: 10).isActive = true
        centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        widthAnchor.constraint(equalToConstant: view.frame.size.width * 0.85).isActive = true
    }
}


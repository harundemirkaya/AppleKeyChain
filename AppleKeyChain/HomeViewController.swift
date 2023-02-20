//
//  HomeViewController.swift
//  AppleKeyChain
//
//  Created by Harun Demirkaya on 20.02.2023.
//
// MARK: -Import Libaries
import UIKit

// MARK: -HomeViewController Class
class HomeViewController: UIViewController {

    // MARK: -Defined
    
    // MARK: Label Defined
    private lazy var lblWelcome: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Welcome!"
        lbl.textColor = .black
        lbl.font = lbl.font.withSize(30)
        return lbl
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: Screen
        view.backgroundColor = .white
        
        // MARK: Set Constraints
        setConstraints()
    }
    
    func setConstraints(){
        lblWelcome.lblWelcomeConstraints(view)
    }
}

// MARK: -Constraints
public extension UIView{
    func lblWelcomeConstraints(_ view: UIView){
        view.addSubview(self)
        centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
}

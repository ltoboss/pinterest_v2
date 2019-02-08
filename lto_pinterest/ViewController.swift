//
//  ViewController.swift
//  Piratarest
//
//  Created by Alumno on 31/01/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:61/255, green:91/255, blue:151/255, alpha:1)

        
        view.addSubview(inputContainerView)
        inputContainerView.addSubview(nametxtField)
        inputContainerView.addSubview(emailtxtField)
        inputContainerView.addSubview(passtxtField)
        
        
        nametxtField.topAnchor.constraint(equalTo: inputContainerView.topAnchor).isActive = true
        nametxtField.widthAnchor.constraint(equalTo:inputContainerView.widthAnchor).isActive = true
        nametxtField.heightAnchor.constraint(equalTo:inputContainerView.heightAnchor, multiplier:1/3).isActive = true
        nametxtField.leftAnchor.constraint(equalTo:inputContainerView.leftAnchor).isActive=true
        
        emailtxtField.topAnchor.constraint(equalTo: nametxtField.bottomAnchor).isActive = true
        emailtxtField.widthAnchor.constraint(equalTo:inputContainerView.widthAnchor).isActive = true
        emailtxtField.heightAnchor.constraint(equalTo:inputContainerView.heightAnchor, multiplier:1/3).isActive = true
        emailtxtField.leftAnchor.constraint(equalTo:inputContainerView.leftAnchor).isActive=true
        
        passtxtField.topAnchor.constraint(equalTo: emailtxtField.bottomAnchor).isActive = true
        passtxtField.widthAnchor.constraint(equalTo:inputContainerView.widthAnchor).isActive = true
        passtxtField.heightAnchor.constraint(equalTo:inputContainerView.heightAnchor, multiplier:1/3).isActive = true
        passtxtField.isSecureTextEntry = true
        passtxtField.leftAnchor.constraint(equalTo:inputContainerView.leftAnchor).isActive=true
        
        
        //contraints for input
        inputContainerView.centerXAnchor.constraint(equalTo:view.centerXAnchor).isActive=true
        inputContainerView.centerYAnchor.constraint(equalTo:view.centerYAnchor).isActive=true
        inputContainerView.heightAnchor.constraint(equalToConstant: 250 ).isActive=true
        inputContainerView.widthAnchor.constraint(equalTo: view.widthAnchor,constant:-40).isActive=true
        
       
        
        
        view.addSubview(firstBtn)
        //firstBtn.centerXAnchor.constraint(equalTo:view.centerXAnchor).isActive=true
        //firstBtn.centerYAnchor.constraint(equalTo:view.centerYAnchor).isActive=true
        firstBtn.topAnchor.constraint(equalTo:inputContainerView.bottomAnchor,constant:20).isActive=true
        firstBtn.heightAnchor.constraint(equalToConstant: 50 ).isActive=true
        //firstBtn.widthAnchor.constraint(equalTo: view.widthAnchor,constant:-40).isActive=true
        firstBtn.leftAnchor.constraint(equalTo:inputContainerView.leftAnchor).isActive=true
        firstBtn.rightAnchor.constraint(equalTo:inputContainerView.rightAnchor).isActive=true
        // Do any additional setup after loading the view, typically from a nib.*/
        
      
        
       
    }
    
    @objc func clickfun() {
        print("Tus datos son:")
        print("Usuario: " + nametxtField.text!)
        print("Email: " + emailtxtField.text!)
        print("Password: " + passtxtField.text!)
        // create the alert
 /*       let alert = UIAlertController(title: "Info", message: "Usuario: " + nametxtField.text! + "Email: " + emailtxtField.text! + "Password: " + passtxtField.text!)
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        // show the alert
        self.present(alert, animated: true, completion: nil)*/
        
        
        let alert = UIAlertController(title: "Alert", message: "Usuario: " + nametxtField.text! + "   -Email: " + emailtxtField.text! + "   -Password: " + passtxtField.text!, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    let nametxtField : UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = "Name"
        tf.backgroundColor = .white
        return tf
    }()
    
    let emailtxtField : UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = "email"
        tf.backgroundColor = .white
        return tf
    }()
    
    let passtxtField : UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = "password"
        tf.backgroundColor = .white
        return tf
    }()
    
    
    let inputContainerView : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints=false
        view.backgroundColor = .white
        view.layer.cornerRadius=5
        view.layer.masksToBounds = true
        return view
    }()
    
    let firstBtn : UIButton={
        let ub = UIButton()
        ub.backgroundColor = UIColor(red:81/255,green:101/255,blue:151/255,alpha:1)
        ub.setTitle("Button", for: .normal)
        ub.translatesAutoresizingMaskIntoConstraints=false
        ub.addTarget(self, action:#selector(clickfun), for: .touchUpInside)
        return ub
    }()
    


}


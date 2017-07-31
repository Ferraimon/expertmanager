//
//  LoginViewController.swift
//  expert manager
//
//  Created by Ferran Rosales on 28/7/17.
//  Copyright © 2017 Ferran Rosales. All rights reserved.
//

import Cocoa
import Parse

class LoginViewController: NSViewController, NSWindowDelegate {

    @IBOutlet weak var usuarioTextField: NSTextField!
    
    @IBOutlet weak var passwordTextField: NSSecureTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.window?.delegate = self
        usuarioTextField.isBordered = false
        usuarioTextField.textColor = NSColor.white
        passwordTextField.isBordered = false
        passwordTextField.textColor = NSColor.white

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    
    @IBAction func entrarButton(_ sender: Any) {
        
        PFUser.logInWithUsername(inBackground: usuarioTextField.stringValue, password: passwordTextField.stringValue) { (user: PFUser?, error: Error?) in
            if error == nil {
                print("Has entrado")
                
            } else {
                print("algo no ha ido bien")
            }
        }
        
    }
    
    @IBAction func salirButton(_ sender: Any) {
        NSApplication.shared.terminate(self)
        
        
    }
    
    
}


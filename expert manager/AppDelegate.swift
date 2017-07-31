//
//  AppDelegate.swift
//  expert manager
//
//  Created by Ferran Rosales on 28/7/17.
//  Copyright © 2017 Ferran Rosales. All rights reserved.
//

import Cocoa
import Parse

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {



    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        
        let config = ParseClientConfiguration{(configThing: ParseMutableClientConfiguration) in
            
            configThing.applicationId = "expertmanagerAppId"
            configThing.server = "http://expertmanager.herokuapp.com/parse"
            
        }
        
        Parse.initialize(with: config)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}


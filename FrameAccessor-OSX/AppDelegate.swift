//
//  AppDelegate.swift
//  FrameAccessor-OSX
//
//  Created by Adedayo Olumide on 6/23/14.
//  Copyright (c) 2014 Adedayo Olumide. All rights reserved.
//

import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
                            
    @IBOutlet var window: NSWindow
    var view: View = View(frame: CGRectMake(0, 0, 50, 50))
    
    func applicationDidFinishLaunching(aNotification: NSNotification?) {
        self.window.contentView.addSubview(view)
        view.setViewSize(CGSizeMake(200.0, 200.0));
        
        var windowContentView: NSView = self.window.contentView as NSView;
        view.setCenter(windowContentView.center());
    }

    func applicationWillTerminate(aNotification: NSNotification?) {
        // Insert code here to tear down your application
    }
}

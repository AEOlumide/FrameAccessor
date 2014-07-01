//
//  View.swift
//  FrameAccessor
//
//  Created by Adedayo Olumide on 6/29/14.
//  Copyright (c) 2014 Adedayo Olumide. All rights reserved.
//

import Cocoa

class View: NSView {

    init(frame: NSRect) {
        super.init(frame: frame)
        // Initialization code here.
    }

    override func drawRect(dirtyRect: NSRect) {
        super.drawRect(dirtyRect)
        
        NSColor.redColor().setFill()
        NSRectFill(dirtyRect)
        // Drawing code here.
    }
}

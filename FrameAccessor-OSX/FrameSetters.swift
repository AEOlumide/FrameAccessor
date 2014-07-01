//
//  FrameSetters.swift
//  FrameSetters
//
//  Created by Adedayo Olumide on 6/8/14.
//  Copyright (c) 2013 AD60. All rights reserved.
//

import Cocoa

extension NSView {
    
/* Frame */

    func viewOrigin() -> CGPoint {
        return self.frame.origin;
    }

    func setViewOrigin(newOrigin: CGPoint) {
        NSMinX(self.frame);
        var newFrame = self.frame;
        newFrame.origin = newOrigin;
        self.frame = newFrame;
    }
    
    func viewSize() -> CGSize {
        return self.frame.size;
    }

    func setViewSize(newSize: CGSize) {
        var newFrame = self.frame;
        newFrame.size = newSize;
        self.frame = newFrame;
    }
    
/* Frame Origin */

    func x() -> CGFloat {
        return self.frame.origin.x;
    }
    
    func setX(newX: CGFloat) {
        var newFrame = self.frame;
        newFrame.origin.x = newX;
        self.frame = newFrame;
    }

    func y() -> CGFloat {
        return self.frame.origin.y;
    }
    
    func setY(newY: CGFloat) {
        var newFrame = self.frame;
        newFrame.origin.y = newY;
        self.frame = newFrame;
    }

/* Frame Size */
    
    func height() -> CGFloat {
        return self.frame.size.height;
    }

    func setHeight(newHeight: CGFloat) {
        var newFrame = self.frame;
        newFrame.size.height = newHeight;
        self.frame = newFrame;
    }

    func width() -> CGFloat {
        return self.frame.size.width;
    }
    
    func setWidth(newWidth: CGFloat) {
        var newFrame = self.frame;
        newFrame.size.width = newWidth;
        self.frame = newFrame;
    }

/* Frame Borders */

    func left() -> CGFloat {
        return self.frame.origin.x;
    }
    
    func setLeft(left: CGFloat) {
        self.setX(left);
    }

    func right() -> CGFloat {
        return self.frame.origin.x + self.frame.size.width;
    }
    
    func setRight(right: CGFloat) {
        self.setX(right - self.width());
    }

    func top() -> CGFloat {
        return self.y();
    }
    
    func setTop(top: CGFloat) {
        self.setY(top);
    }

    func bottom() -> CGFloat {
        return self.y();
    }
    
    func setBottom(bottom: CGFloat) {
        self.setY(bottom - self.height());
    }

/* Center Point */
    
    func center() -> CGPoint {
        return CGPointMake(self.left() + self.middleX(),self.top() + self.middleY());
    }

    func setCenter(newCenter: CGPoint) {
        self.setLeft(newCenter.x - self.middleX());
        self.setTop(newCenter.y - self.middleY());
    }
    
/* Middle Point */

    func middlePoint() -> CGPoint {
        return CGPointMake(self.middleX(), self.middleY());
    }
    
    func middleX() -> CGFloat {
        return self.width()/2;
    }

    func middleY() -> CGFloat {
        return self.height()/2;
    }
}

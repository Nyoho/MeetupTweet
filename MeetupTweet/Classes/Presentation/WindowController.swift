//
//  WindowController.swift
//  MeetupTweet
//
//  Created by Yoshinori Imajo on 2016/04/11.
//  Copyright © 2016年 Yoshinori Imajo. All rights reserved.
//

import Cocoa


class WindowController: NSWindowController {
    
    override func windowDidLoad() {
        super.windowDidLoad()
        self.window!.delegate = self
    }
}

extension WindowController: NSWindowDelegate {
    func windowWillClose(notification: NSNotification) {
        NSApplication.sharedApplication().terminate(NSApp?.keyWindow!)
    }
}
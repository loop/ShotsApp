//
//  Misc.swift
//  ShotsDemo
//
//  Created by Meng To on 2014-07-04.
//  Copyright (c) 2014 Meng To. All rights reserved.
//

import UIKit

func delay(delay:Double, closure:()->()) {
    dispatch_after(
        dispatch_time(
            DISPATCH_TIME_NOW,
            Int64(delay * Double(NSEC_PER_SEC))
        ),
        dispatch_get_main_queue(), closure)
}

func textViewWithFont(textView: UITextView, fontName: String, fontSize: CGFloat, lineSpacing: CGFloat) {
    var font = UIFont(name: fontName, size: fontSize)
    var text = textView.text
    
    var paragraphStyle = NSMutableParagraphStyle()
    paragraphStyle.lineSpacing = lineSpacing
    
    var attributesDictionary = [NSFontAttributeName: font, NSParagraphStyleAttributeName: paragraphStyle]
    
    textView.attributedText = NSAttributedString(string:text, attributes:attributesDictionary)
}

/* Snippets

// Light status bar
override func preferredStatusBarStyle() -> UIStatusBarStyle {
    return UIStatusBarStyle.LightContent
}

*/
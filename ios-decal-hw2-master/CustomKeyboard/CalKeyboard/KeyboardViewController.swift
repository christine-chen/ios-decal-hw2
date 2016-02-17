//
//  KeyboardViewController.swift
//  CalKeyboard
//
//  Created by Gene Yoo on 9/15/15.
//  Copyright © 2015 iOS Decal. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {

    @IBOutlet var nextKeyboardButton: UIButton!
    @IBOutlet var comeBackButton: UIButton!
    @IBOutlet var loveButton: UIButton!
    @IBOutlet var seriousButton: UIButton!
    @IBOutlet var whyButton: UIButton!
    @IBOutlet var flexButton: UIButton!
    @IBOutlet var bearButton: UIButton!
    @IBOutlet var backspaceButton: UIButton!
    @IBOutlet var spaceButton: UIButton!
    @IBOutlet var newlineButton: UIButton!
    
    var keyboardView: UIView!

    override func updateViewConstraints() {
        super.updateViewConstraints()
    
        // Add custom view sizing constraints here
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadInterface()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }

    override func textWillChange(textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }

    override func textDidChange(textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
    }
    
    func buttonPressed(sender: AnyObject?) {
        let button = sender as! UIButton!
        if button.tag == 0 {
            self.textDocumentProxy.insertText("huggies")
        } else if button.tag == 1 {
            self.textDocumentProxy.insertText("i love you more and most! <3 ")
        } else if button.tag == 2 {
            self.textDocumentProxy.insertText("what the fuck...")
        } else if button.tag == 3 {
            self.textDocumentProxy.insertText("BUT WHYYYY?!")
        } else if button.tag == 4 {
            self.textDocumentProxy.insertText("YAAAAASS")
        } else if button.tag == 5 {
            self.textDocumentProxy.insertText("uhm what okay sure..")
        } else if button.tag == 6 {
            self.textDocumentProxy.deleteBackward()
        } else if button.tag == 7 {
            self.textDocumentProxy.insertText(" ")
        } else if button.tag == 8 {
            self.textDocumentProxy.insertText("\n")
        }
    }

    func loadInterface() {
        let keyboardNib = UINib(nibName: "Keyboard", bundle: nil)
        keyboardView = keyboardNib.instantiateWithOwner(self, options: nil)[0] as! UIView
        keyboardView.frame = view.frame
        view.addSubview(keyboardView)
        view.backgroundColor = keyboardView.backgroundColor
        nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside) // advanceToNextInputMode is already defined in template
        comeBackButton.addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
        loveButton.addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
        seriousButton.addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
        whyButton.addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
        flexButton.addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
        bearButton.addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
        backspaceButton.addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
        spaceButton.addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
        newlineButton.addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
    }


}

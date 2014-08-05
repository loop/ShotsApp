//
//  Detail.swift
//  ShotsApp
//
//  Created by Yogesh Nagarur on 2014-08-05.
//  Copyright (c) 2014 Yogesh Nagarur. All rights reserved.
//

import UIKit

class Detail: UIViewController {

    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var avatarImageView: UIImageView!
    
    var data = Array<Dictionary<String,String>>()
    var number = 0
    
    @IBAction func backButtonDidPress(sender: AnyObject) {
        performSegueWithIdentifier("detailToHome", sender: sender)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        if segue.identifier == "detailToHome" {
            let controller = segue.destinationViewController as Home
            controller.data = data
            controller.number = number
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        authorLabel.text = data[number]["author"]
        avatarImageView.image = UIImage(named: data[number]["avatar"])
        imageView.image = UIImage(named: data[number]["image"])
        descriptionTextView.text = data[number]["text"]
        
        backButton.alpha = 0
        
        textViewWithFont(descriptionTextView, "Libertad", 16, 7)
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
        
        backButton.alpha = 1
        springScaleFrom(backButton!, -100, 0, 0.5, 0.5)
    }
    
    override func prefersStatusBarHidden() -> Bool  {
        return true
    }

}

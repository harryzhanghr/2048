//
//  ViewController.swift
//  2048
//
//  Created by haoran zhang on 12/28/14.
//  Copyright (c) 2014 haoran zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var firstLeftContainer: UIView!
    var firstRightContainer: UIView!
    var scoreContainer: UIView!
    var msConatiner: UIView!
    var secondContainer: UIView!
    var thirdContainer: UIView!
    var restart: UIButton!
    
    var titleLabel: UILabel!
    
    let boxMargin: CGFloat = 2.8
    let boxLength: CGFloat = 100.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor(red: 255/225, green: 251/225, blue: 209/225, alpha: 1)
        viewSetUp()
        firstLeftViewSetUp(firstLeftContainer)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func firstLeftViewSetUp(containerView: UIView) {
        titleLabel = UILabel()
        titleLabel.text = "2048"
        titleLabel.font = UIFont(name: "Noteworthy-Bold", size: 40)
        titleLabel.center = containerView.center
        titleLabel.sizeToFit()
        containerView.addSubview(titleLabel)
    }

    
    func restartButtonPressed(button: UIButton) {
        
    }

    func viewSetUp() {
        firstLeftContainer = UIView(frame: CGRect(x: self.view.frame.origin.x + 20, y: self.view.frame.origin.y + 50, width: 160, height: 160))
        firstLeftContainer.backgroundColor = UIColor(red: 230/255, green: 175/255, blue: 50/255, alpha: 1)
        self.view.addSubview(firstLeftContainer)
        
        scoreContainer = UIView(frame: CGRect(x: 198, y: self.view.frame.origin.y + 50, width: 90, height: 90))
        scoreContainer.backgroundColor = UIColor.darkGrayColor()
        self.view.addSubview(scoreContainer)
        
        msConatiner = UIView(frame: CGRect(x: 306, y: self.view.frame.origin.y + 50, width: 90, height: 90))
        msConatiner.backgroundColor = UIColor.darkGrayColor()
        self.view.addSubview(msConatiner)
        
        restart = UIButton(frame: CGRect(x: 198, y: self.view.frame.origin.y + 158, width: 198, height: 52))
        restart.backgroundColor = UIColor(red: 240/255, green: 156/255, blue: 66/255, alpha: 1)
        restart.setTitle("Restart Game", forState: UIControlState.Normal)
        restart.addTarget(self, action: "restartButtonPressed:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(restart)
//        
//        firstRightContainer = UIView(frame: CGRect(x: self.view.frame.origin.x + 190, y: self.view.frame.origin.y + 50, width: 224, height: 100))
//        firstRightContainer.backgroundColor = UIColor.darkGrayColor()
//        self.view.addSubview(firstRightContainer)
        
        secondContainer = UIView(frame: CGRect(x: self.view.frame.origin.x, y: self.view.frame.origin.y + 140, width: self.view.frame.width, height: 90))
        self.view.addSubview(secondContainer)
        
        thirdContainer = UIView(frame: CGRect(x: self.view.frame.origin.x, y: self.view.frame.origin.y + 230, width: 414, height: 414))
        self.view.addSubview(thirdContainer)
    }
    
}


//
//  ViewController.swift
//  UIViewTransitions
//
//  Created by Maxim Dvortsov on 24.09.2017.
//  Copyright © 2017 Maxim Dvortsov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var frontView: UIImageView!
    @IBOutlet weak var backView: UIImageView!
    
    var isFlipped = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func flipOver(_ sender: UIButton) {
        
        isFlipped = !isFlipped
        
        let fromView = isFlipped ? frontView : backView
        let toView = isFlipped ? backView : frontView
        
        UIView.transition(from: fromView!, to: toView!, duration: 0.5, options: [.curveEaseOut, .transitionFlipFromTop, .showHideTransitionViews])
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


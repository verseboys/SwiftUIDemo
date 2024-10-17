//
//  ViewController.swift
//  Demo33-UIScreenEdgePanGesture
//
//  Created by Prashant on 15/10/15.
//  Copyright © 2015 PrashantKumar Mangukiya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    // outlet - status label
    @IBOutlet var statusLabel: UILabel!
    
    // create left edge and right edge gesture
    let leftEdgePanGesture = UIScreenEdgePanGestureRecognizer()
    let rightEdgePanGesture = UIScreenEdgePanGestureRecognizer()
    
    
    
    // Mark: - View functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // add target for gesture
        self.leftEdgePanGesture.addTarget(self, action: #selector(ViewController.handleLeftEdge(_:)))
        self.rightEdgePanGesture.addTarget(self, action: #selector(ViewController.handleRightEdge(_:)))

        // set detection edge
        self.leftEdgePanGesture.edges = UIRectEdge.left
        self.rightEdgePanGesture.edges = UIRectEdge.right
        
        // add gesture into view
        self.view.addGestureRecognizer(self.leftEdgePanGesture)
        self.view.addGestureRecognizer(self.rightEdgePanGesture)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    // Mark: - Utility functions
    
    // perform operation when left edge gesture detected
    func handleLeftEdge( _ gesture: UIScreenEdgePanGestureRecognizer ) {
        self.statusLabel.text = "Left Edge"
        self.statusLabel.textColor = UIColor.black
    }

    // perform operation when right edge gesture detected    
    func handleRightEdge( _ gesture: UIScreenEdgePanGestureRecognizer ) {
        self.statusLabel.text = "Right Edge"
        self.statusLabel.textColor = UIColor.blue
    }
    

}




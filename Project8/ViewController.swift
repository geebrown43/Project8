//
//  ViewController.swift
//  Project8
//
//  Created by Gavin Brown on 1/13/19.
//  Copyright © 2019 DevelopITLLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var cluesLabel: UILabel!
    @IBOutlet weak var answersLabel: UILabel!
    @IBOutlet weak var currentAnswer: UITextField!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var letterButtons: [UIButton] = []
    var activatedButtons:[UIButton] = []
    var solutions:[String] = []
    
    var score = 0
    var level = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        for subview in view.subviews where subview.tag == 1001 { // view.subviews is an array containing all views-- where allows only views with 1001 tag to be returned
            let btn = subview as! UIButton
            letterButtons.append(btn)
            btn.addTarget(self, action: #selector(letterTapped), for: .touchUpInside) // code version of control drag from storyboard
        }
    }

    @IBAction func submitTapped(_ sender: Any) {
    }
    
    @IBAction func clearTapped(_ sender: Any) {
    }
    
    @objc func letterTapped(btn: UIButton){
        
    }
    
    func loadLevel() {
        var clueString = ""
        var solutionString = ""
        var letterBits: [String] = []
        
        
        if let levelFilePath = Bundle.main.path(forResource: "level\(level)", ofType: "txt"){
            if let levelContents = try? String(contentsOfFile: levelFilePath){
                
            }
        }
    }
}


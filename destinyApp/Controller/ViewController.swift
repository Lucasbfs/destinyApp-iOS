//
//  ViewController.swift
//  destinyApp
//
//  Created by Lucas Fronciani on 11/6/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var storyText: UILabel!
    
    
    var storyBrain = StoryContent()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        storyText.text = storyBrain.beginning()
        updateUI()
        shadow()
    }
    
    @IBAction func choice(_ sender: UIButton) {
        
        let btnTitle = sender.currentTitle!

        storyText.text = storyBrain.getNextText(btnTitle)
        
//        button1.backgroundColor = UIColor.cyan
        
        updateUI()
    }
    
    

    
    func updateUI(){
        button1.setTitle(storyBrain.getChoice1(), for: .normal)
        button2.setTitle(storyBrain.getChoice2(), for: .normal)
    }
    
    func shadow(){
        let arr = [button1, button2]
        for i in 0...1{
            arr[i]!.layer.shadowColor = UIColor.black.cgColor
            arr[i]!.layer.shadowOffset = CGSize(width: 5, height: 5)
            arr[i]!.layer.shadowRadius = 5
            arr[i]!.layer.shadowOpacity = 1.0
        }
    }
}


//
//  ViewController.swift
//  calculador
//
//  Created by Apple on 03/06/15.
//  Copyright (c) 2015 mcanche. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var Scree: UILabel!
    var firstNumber = Int()
    var secondNumer = Int()
    var isTypingNumer = false
    var result = Int()
    var operation = ""
    
    @IBAction func numer(sender: AnyObject) {
      
        var number = sender.currentTitle
        if isTypingNumer == true {
            Scree.text = Scree.text! + number!!
        } else {
            Scree.text = number
            
        }
        isTypingNumer = true
        
        

    }
    
    @IBAction func operation(sender: AnyObject) {
        isTypingNumer = false
        firstNumber = Scree.text!.toInt()!
        operation = sender.currentTitle!!
        
    }
    
    @IBAction func equals(sender: AnyObject) {
        secondNumer = Scree.text!.toInt()!
        switch operation{
            case "+": result = firstNumber + secondNumer
            case "-": result = firstNumber - secondNumer
            case "x": result = firstNumber * secondNumer
            case "/": result = firstNumber / secondNumer
            default: break
        }
        Scree.text = "\(result)"
        
    }
    
    @IBAction func clear(sender: AnyObject) {
        firstNumber = 0
        secondNumer = 0
        isTypingNumer = false
        result = 0
        Scree.text = "\(result)"
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


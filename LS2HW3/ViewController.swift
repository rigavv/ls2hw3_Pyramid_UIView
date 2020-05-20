
//
//  ViewController.swift
//  LS2HW3
//
//  Created by Viktor Riga on 04.05.2020.
//  Copyright © 2020 Viktor Riga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // lineBoxes(count: 3) // 3-1
        stairsBoxes(count: 4)
        //Piramid(count: 6)
        
        // Do any additional setup after loading the view.
    }
    // - func start
    
    func lineBoxes(count: Int) {
        let height = 50
        let width = 50
        let offset = 10
        var counter = 0
        for _ in 0..<count {
            let box = UIView()
            box.backgroundColor = UIColor.blue
            let xCord = width + width * counter + counter * offset
            box.frame = CGRect(x: xCord, y: 50, width: width, height: height)
            view.addSubview(box)
            counter += 1
        }
    }

    func stairsBoxes(count: Int) {
        let height = 60
        let width = 60
        let offset = 20
        var counter = 0
        
        for i in 0..<count {
            if count>=i {
                counter = 0
                for _ in 0..<(count-(i)) {
                    let boxW = UIView()
                    boxW.backgroundColor = UIColor.blue
                    let xCord = width + width * counter + counter * offset
                    let yCord = height*(i) + offset*i + height * counter + counter * offset
                    boxW.frame = CGRect(x: xCord, y: yCord, width: width, height: height)
                    view.addSubview(boxW)
                    counter += 1
                }
            }
        }
    }
    
    // Piramid
    
    
    
    func Piramid (count:Int) {
        
        let Yoffset = 10
        let Xoffset = 10
        let height = 30
        let width = 30
        
        let xCenter = self.view.frame.width / 2 // center view ))
        for i in 0..<count{
            for conter in 0...i {
                let box = UIView()
                box.backgroundColor = UIColor.green
                let cordX = (Int(xCenter) - width * i/2 - Yoffset * i/2) + (width * conter) + ( conter * Xoffset)
                let cordY = height + height * i + i * Yoffset
                box.frame = CGRect (x: cordX, y: cordY, width: width, height: height)
                box.frame.origin.x -= box.frame.width / 2 // ???
                view.addSubview(box)
            }
        }
        
    }
    // - func end
}

//
//  ViewController.swift
//  aaaa-swift
//
//  Created by yoshikik on 2015/05/12.
//  Copyright (c) 2015年 Yoshiki Kawakita. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var number: Int!
    @IBOutlet var imgView: UIImageView!
    var imgArray = [UIImage]()//方法その1で使用
    var strArray = [String]()//方法その2で使用
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        number = 0
        
//        //for文使わない方法（方法その0）
//        imgArray.append(UIImage(named: "0.png")!)
//        imgArray.append(UIImage(named: "1.png")!)
//        imgArray.append(UIImage(named: "2.png")!)
//        imgArray.append(UIImage(named: "3.png")!)
//        imgArray.append(UIImage(named: "4.png")!)
//        imgArray.append(UIImage(named: "5.png")!)
//        imgArray.append(UIImage(named: "6.png")!)
//        imgArray.append(UIImage(named: "7.png")!)
//        imgArray.append(UIImage(named: "8.png")!)
//        imgArray.append(UIImage(named: "9.png")!)
        

        
        
//        //方法その1
//        for var i = 0; i < 10; i++ {
//            imgArray.append(UIImage(named: NSString(format: "%d.png", i))!)
//        }
//        imgView.image = imgArray[number]
        
        
//        //方法その2
//        for var i = 0; i < 10; i++ {
//            strArray.append(NSString(format: "%d.png", i))
//        }
//        imgView.image = UIImage(named: strArray[number])
        
//
        //方法その3
        imgView.image = UIImage(named: NSString(format: "%d.png", number))
    }
    
    @IBAction func plus() {
        number = number + 1
        if number > 9{
            number = 0
        }
        
//        //方法その0・その1
//        imgView.image = imgArray[number]
        
        
//        //方法その2
//        imgView.image = UIImage(named: strArray[number])
//
//        
        //方法その3
        imgView.image = UIImage(named: NSString(format: "%d.png", number))

        
    }
    
    
    @IBAction func minus() {
        number = number - 1
        if number < 0{
            number = 9
        }
        
//        //方法その0・その1
//        imgView.image = imgArray[number]
        
        
//        //方法その2
//        imgView.image = UIImage(named: strArray[number])
//
//        
        //方法その3
        imgView.image = UIImage(named: NSString(format: "%d.png", number))
        
        
    }

    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  ViewController.swift
//  SlideshowApp
//
//  Created by chihiroendo on 2017/11/16.
//  Copyright © 2017年 chihiroendo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let imageNames = ["写真1.jpg", "写真2.jpg", "写真3.jpg"]
    var imageIndex = 0
    
    var timer: Timer!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        let closeViewController:CloseViewController = segue.destination as! CloseViewController
        
        closeViewController.imagename = imageNames[imageIndex]}
    
    
    @IBOutlet weak var image: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        image.image = UIImage(named:"写真1.jpg")
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    }
    
    @IBAction func nextbutton(_ sender: Any) {
        imageIndex += 1
        
        if imageNames.count - 1 < imageIndex  {
            imageIndex = 0
        }
        print("imageIndex: \(imageIndex)")
        
        image.image = UIImage(named: imageNames[imageIndex])
        
    }
    
    @IBAction func returnbutton(_ sender: Any) {
        imageIndex -= 1
        
        if imageIndex < 0  {
            imageIndex = imageNames.count - 1
        }
        print("imageIndex: \(imageIndex)")
        image.image = UIImage(named: imageNames[imageIndex])
        
    }
    
    
    @IBOutlet weak var susumu: UIButton!
    
    @IBOutlet weak var modoru: UIButton!
   
    
    
    @IBOutlet weak var stopbutton: UIButton!
    @IBAction func stopbutton(_ sender: Any){
        
        if self.timer == nil {
            self.timer = Timer.scheduledTimer(timeInterval: 2,
                                              target: self,
                                              selector: #selector(updateTimer),
                                              userInfo: nil,
                                              repeats: true)
            susumu.isEnabled = false
            modoru.isEnabled = false
            
            
            
            stopbutton.setTitle("停止", for: .normal)
            
        }
        else {
            self.timer.invalidate()
            self.timer = nil
            susumu.isEnabled = true
            modoru.isEnabled = true
            stopbutton.setTitle("再生", for: .normal)
       
        }
    }
    
    func updateTimer(timer: Timer) {
        imageIndex += 1
        
        if imageNames.count - 1 < imageIndex  {
            imageIndex = 0
        }
        print("imageIndex: \(imageIndex)")
        
        image.image = UIImage(named: imageNames[imageIndex])
    }
}


        

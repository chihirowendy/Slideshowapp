//
//  CloseViewController.swift
//  SlideshowApp
//
//  Created by Chihiro Endo on 2017/11/23.
//  Copyright © 2017年 chihiroendo. All rights reserved.
//

import UIKit

class CloseViewController: UIViewController {
    
    var imagename = ""
    
   
    @IBOutlet weak var image: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

         image.image = UIImage(named: imagename)
        
        // Do any additional setup after loading the view.
    }

    @IBAction func `return`(_ sender: Any) {
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

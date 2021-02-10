//
//  DetailsViewController.swift
//  collectionview_sample
//
//  Created by iroid on 10/02/21.
//  Copyright © 2021 iroid. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet var fullimg: UIImageView!
    @IBOutlet var Heading: UILabel!
    @IBOutlet var fruitdetails: UITextView!
    var image = String()
    var details = String()
    var fruiname = String()
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        Heading.text = fruiname
        fullimg.image = UIImage(named:image)
        fruitdetails.text = details
        
        Heading.layer.cornerRadius = 15
        fullimg.layer.cornerRadius = 15
        fruitdetails.layer.cornerRadius = 15

        // Do any additional setup after loading the view.
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

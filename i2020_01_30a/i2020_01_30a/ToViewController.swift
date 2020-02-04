//
//  ToViewController.swift
//  i2020_01_30a
//
//  Created by Charles Ira on 2/4/20.
//  Copyright © 2020 Charles Ira. All rights reserved.
//

import UIKit

class ToViewController: UIViewController {
    
    var text:String = ""
    
    @IBOutlet weak var textfield: UITextField!
    
    @IBAction func onButtonTap(){
        let vc = ViewController(nibName: "ViewController", bundle: nil)
        vc.text = "I passed data to the first contoller!"
        
        navigationController?.pushViewController(vc, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textfield?.text = text
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

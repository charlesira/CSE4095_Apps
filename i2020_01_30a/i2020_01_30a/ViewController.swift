//
//  ViewController.swift
//  i2020_01_30a
//
//  Created by Charles Ira on 1/30/20.
//  Copyright © 2020 Charles Ira. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {

    @IBOutlet weak var buttonComponent: UIButton!
    @IBOutlet weak var picture: UIImageView!
    @IBOutlet weak var textfield: UITextField!
    
    var radio: AVPlayer?
    var radioUrl: URL?
    var radioOn: Bool?
    
    var text: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        radioUrl = URL(string: "http://192.240.102.131:9864/;")
        radio = AVPlayer(url: radioUrl!)
        radioOn = false
        picture.image = UIImage(named: "commie_flag")
        textfield?.text = text
    }
    
    @IBAction func onButtonTap(){
        let vc = ViewController(nibName: "ToViewController", bundle: nil)
        vc.text = "I passed data to the second contoller!"
        
        navigationController?.pushViewController(vc, animated: true)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("View appeared!")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("View will appear!")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("View disappeared!")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("View will disappear!")
    }

    @IBAction func buttonSelected(_ sender: Any) {
        if radioOn! {
            radioOn = false
            radio!.pause()
            picture.image = UIImage(named: "commie_flag")
        } else {
            radioOn = true
            radio!.play()
            picture.image = UIImage(named: "us_flag")
        }
    }
    
}


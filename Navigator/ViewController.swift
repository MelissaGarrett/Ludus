//
//  ViewController.swift
//  Navigator
//
//  Created by Melissa  Garrett on 2/4/17.
//  Copyright © 2017 MelissaGarrett. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dataTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "dataSegue" {
            let secondVC = segue.destination as? SecondViewController
            if let svc = secondVC {
                svc.data = dataTextField.text
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


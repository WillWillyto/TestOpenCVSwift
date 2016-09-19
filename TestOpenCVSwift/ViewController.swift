//
//  ViewController.swift
//  TestOpenCVSwift
//
//  Created by Robert on 19.08.16.
//  Copyright © 2016 aurom. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var OpenCVVersionLabel: UILabel!
    @IBOutlet weak var fuchsImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Invoke functions in OpenCVWrapper class from swift
        OpenCVVersionLabel.text = OpenCVWrapper.openCVVersionString()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func toGrayscaleButtonTouched(sender: AnyObject) {
        fuchsImageView.image = OpenCVWrapper.makeGrayFromImage(fuchsImageView.image)
    }

}


//
//  SwiftViewController.swift
//  ExampleApp
//
//  Created by Danny Sung on 03/22/2020.
//  Copyright © 2020 Danny Sung. All rights reserved.
//

import UIKit
import DSLogs

class SwiftViewController: UIViewController {
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        #if ENABLE_LOGS
        print("[Swift] ENABLE_LOGS specified");
        #else
        print("[Swift] ENABLE_LOGS not specified (disabled)");
        #endif
        DLog("[Swift] This is a debug line and should only appear if ENABLE_LOGS is specified\n")
        WLog("[Swift] This line results in a warning regardless of ENABLE_LOGS.\n");
        ELog("[Swift] This line results in an error regardless of ENABLE_LOGS.\n");
    }
    

}

//
//  FirstViewController.swift
//  TabbedDemo2
//
//  Created by Rasheda Jacobs on 8/31/16.
//  Copyright © 2016 Rasheda Babatunde. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController{


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // From UITableViewDataSource protocol.
    func numberOfSectionsInTableView(_ tableView: UITableView) -> Int {
        
        // We only have one section in our table view.
        return 1
    }

}


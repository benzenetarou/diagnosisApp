//
//  ResultViewController.swift
//  searchCombinationApp
//
//  Created by benzentarou on 2017/05/06.
//  Copyright © 2017年 benzentarou. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var myTaste: String = ""

    @IBOutlet weak var tasteLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tasteLabel.text = myTaste

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

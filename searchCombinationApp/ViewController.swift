//
//  ViewController.swift
//  searchCombinationApp
//
//  Created by benzentarou on 2017/05/05.
//  Copyright © 2017年 benzentarou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var taste: String = ""

    @IBOutlet weak var buttonLonly: UIButton!
    @IBOutlet weak var buttonCrowd: UIButton!
    @IBOutlet weak var buttonHome: UIButton!
    @IBOutlet weak var buttonPeople: UIButton!
    @IBOutlet weak var buttonIndoor: UIButton!
    @IBOutlet weak var buttonOutdoor: UIButton!


    @IBAction func selectButton1(_ sender: Any) {
        if(buttonLonly.isSelected){
            buttonLonly.isSelected = false
        } else {
            buttonLonly.isSelected = true
        }
    }
    @IBAction func selectButton2(_ sender: Any) {
        if(buttonCrowd.isSelected){
            buttonCrowd.isSelected = false
        } else {
            buttonCrowd.isSelected = true
        }
    }
    @IBAction func selectButton3(_ sender: Any) {
        if(buttonHome.isSelected){
            buttonHome.isSelected = false
        } else {
            buttonHome.isSelected = true
        }
    }
    @IBAction func selectButton4(_ sender: Any) {
        if(buttonPeople.isSelected){
            buttonPeople.isSelected = false
        } else {
            buttonPeople.isSelected = true
        }
    }
    @IBAction func selectButton5(_ sender: Any) {
        if(buttonIndoor.isSelected){
            buttonIndoor.isSelected = false
        } else {
            buttonIndoor.isSelected = true
        }
    }
    @IBAction func selectButton6(_ sender: Any) {
        if(buttonOutdoor.isSelected){
            buttonOutdoor.isSelected = false
        } else {
            buttonOutdoor.isSelected = true
        }
    }

    @IBAction func search(_ sender: Any) {
            }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier else {
            return
        }
        if identifier == "showResult" {
            var cat: Int = 0
            var dog: Int = 0
            if(buttonLonly.isSelected){cat += 1}
            if(buttonHome.isSelected){cat += 1}
            if(buttonIndoor.isSelected){cat += 1}
            if(buttonCrowd.isSelected){dog += 1}
            if(buttonPeople.isSelected){dog += 1}
            if(buttonOutdoor.isSelected){dog += 1}

            if(cat == dog){
                taste = "犬猫両方好きみたいだね"
            } else if (cat > dog){
                taste = "猫が好きみたいだね"
            } else {
                taste = "犬が好きみたいだね"
            }
            let resultVC = segue.destination as! ResultViewController
            resultVC.myTaste = self.taste
        }

    }


}
